module Mobile
  def check_for_mobile
    cookies[:mobile_override] = params[:mobile] if params[:mobile]
    #prepare_for_mobile if mobile_device?
  end

  # def prepare_for_mobile
  #   prepend_view_path Rails.root + 'app' + 'views_mobile'
  # end

  def mobile_device?
    if cookies[:mobile_override]
      cookies[:mobile_override] == "1"
      is_mobile = true
    else
      # Season this regexp to taste. I prefer to treat iPad as non-mobile.
      is_mobile = (request.user_agent =~ /Mobile|webOS/) && (request.user_agent !~ /iPad/)
    end
    is_mobile || false
  end
end