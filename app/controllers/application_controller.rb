# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  # Some algorithm to turn params into filesystem happy path.
  def gen_key
    '/' + [params[:uno], params[:dos], params[:tres]].join('_')
  end

  def check_cache
    # TODO detect correct extension for flexibility.
    key = "public#{gen_key}.html"
    if File.exists?(key)
      render :text => File.open(key).read + ' served from cache!'
    end
  end

  def custom_cache_page
    # Do not cache errors.
    if response.status =~ /200/
      self.class.cache_page(response.body,gen_key)
    end
  end
end
