class Bookmark < ApplicationRecord

  belongs_to :users
  has_one :bookmark_detail

  def index
  end

  def show
  end

  def update
  end

  def bulk_update
  end

  def delete
  end

  def bulk_delete
  end
end
