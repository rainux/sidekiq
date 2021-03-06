$TESTING = true
if false
  require 'simplecov'
  SimpleCov.start
end

require 'minitest/unit'
require 'minitest/pride'
require 'minitest/autorun'

require 'sidekiq'
require 'sidekiq/util'
Sidekiq::Util.logger.level = Logger::ERROR

require 'sidekiq/redis_connection'
REDIS = Sidekiq::RedisConnection.create(:url => 'redis://localhost/sidekiq_test')
