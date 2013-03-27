# Note: This MUST BE REMOVED if you're using Devise's omniauthable, or Devise will report "invalid credentials" when attempting to log in via Twitter

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '340890482681494', 'f84a7b8d6c63dba63b7dca46e2563704'
end