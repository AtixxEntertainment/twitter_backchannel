namespace :tweets do
  desc "refresh tweets"
  task refresh: :environment do
    tweets = Twitter.search APP_CONFIG["twitter"]["query"], since_id: Tweet.since_id
    tweets.results.each do |tweet|
      Tweet.find_or_initialize_by_id_str(tweet.attrs[:id_str]).tap do |t|
        t.update_attributes! tweet.attrs
      end
    end
  end
end
