class ExceptionsApp < Rambulance::ExceptionsApp
  def bad_request
  end
  helper Webpacker::Helper

  def forbidden
  end

  def internal_server_error
  end

  def not_found
  end

  def unprocessable_entity
  end
end
