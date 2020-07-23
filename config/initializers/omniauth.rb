Rails.application.config.middleware.use OmniAuth::Builder do
    # provider :development unless Rails.env.production?
    provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
end