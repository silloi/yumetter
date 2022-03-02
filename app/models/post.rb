class Post < ApplicationRecord
  belongs_to :user

  def user
    return User.find_by(id: self.user_id)
  end

  def datetime
    I18n.l created_at
  end
end
