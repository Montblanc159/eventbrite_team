module ApplicationHelper
  def check_access_authorization(user)
    unless is_current_user?(user)
      redirect_to root_path
      flash[:danger] = "Accès non-autorisé"
    end
  end

  def text_extract(string, number)
    string[0..number]
  end
end
