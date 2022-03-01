class AddOAuthToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :uid, :string, null: false
    add_column :users, :oauth_token, :text, null: false
    add_column :users, :oauth_expires_at, :datetime, null: false
  end
end
