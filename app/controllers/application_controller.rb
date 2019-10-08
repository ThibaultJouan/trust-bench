class ApplicationController < ActionController::Base  
  def after_sign_in_path_for(resource)
    if (current_user.is_admin)
      admin_index_path
    end
  end
  def after_sign_out_path_for(resource)
    admin_index_path
  end
end
