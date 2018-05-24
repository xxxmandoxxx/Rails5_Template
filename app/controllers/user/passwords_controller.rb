class User::PasswordsController < Devise::PasswordsController
  include ApplicationHelper
  layout "clean"
end