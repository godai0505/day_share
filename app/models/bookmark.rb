class Bookmark < ApplicationRecord
  belongs_to :user
  #has_one :bookmark_detail
end
