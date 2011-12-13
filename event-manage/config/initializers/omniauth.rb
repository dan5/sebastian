Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter,"RAyt3kuSeQUbntImmfXlg", "WGQYGOiIeZP2n7NcmyhZa9hdQg3XUD5Z54vIK8RAA"
  # provider :google_oauth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET']
  # provider :facebook, ENV['FACEBOOK_ID'], ENV['FACEBOOK_SECRET']
  provider :identity, on_failed_registration: lambda { |env|
    IdentitiesController.action(:new).call(env)
  }
end
