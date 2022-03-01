class Post < ApplicationRecord
  def datetime
    I18n.l created_at
  end
end
