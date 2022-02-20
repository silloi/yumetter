class CreateUser < ActiveRecord::Migration[7.0]
  create_enum :user_gender, ["other", "male", "female"]

  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.enum :gender, enum_type: :user_gender, default: "other"

      t.timestamps
    end
  end
end
