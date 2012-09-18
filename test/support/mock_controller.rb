class MockController
  attr_writer :action_name
  attr_accessor :named_routes

  def initialize
    self.named_routes = ActionDispatch::Routing::RouteSet::NamedRouteCollection.new
    super
  end

  def _routes
    self
  end

  def mounted_helpers
    ActionDispatch::Routing::RouteSet::MountedHelpers
  end

  def action_name
    defined?(@action_name) ? @action_name : "edit"
  end

  def url_for(*args)
    "http://example.com"
  end

  def default_url_options
    {}
  end

  def url_helpers
    self
  end

  def hash_for_user_path(*args); end
  def hash_for_validating_user_path(*args); end
  def hash_for_other_validating_user_path(*args); end
  def hash_for_users_path(*args); end
end
