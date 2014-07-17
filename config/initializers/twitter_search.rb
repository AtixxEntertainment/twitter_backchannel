APP_CONFIG = YAML.load_file Rails.root.join("config","twitter_search.yml").to_s

Twitter.configure do |config|
  config.consumer_key = ENV["TWITTER_KEY"]
  config.consumer_secret = ENV["TWITTER_SECRET"]
  config.oauth_token = ENV["TWITTER_API_ACCESS"]
  config.oauth_token_secret = ENV["TWITTER_API_SECRET"]
end
