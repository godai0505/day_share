class IndexController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end
end
