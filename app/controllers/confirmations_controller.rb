class ConfirmationsController < Devise::ConfirmationsController
  private
  def after_confirmations_path_for(resourse_name, resource)
    your_new_after_confirmations_path
  end
end