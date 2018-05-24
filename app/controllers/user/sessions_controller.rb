class User::SessionsController < Devise::SessionsController

  def new
    self.resource = resource_class.new(sign_in_params)
    clean_up_passwords(resource)
    render :layout => "clean"
  end

  def create
    rtn = super
    sign_in(resource.type.underscore, resource.type.constantize.send(:find, resource.id)) unless resource.type.nil?
    rtn
  end
end