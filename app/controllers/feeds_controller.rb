class FeedsController < ApplicationController
  before_filter :check_cache
  after_filter :custom_cache_page

  def index
    content = 'content'
    render :text => content
  end
end
