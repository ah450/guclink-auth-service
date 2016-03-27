if Rails.env.production?
  $redis_client = Redis.new(driver: :hiredis, host: ENV['REDIS_HOST'],
                            port: ENV['REDIS_PORT'],
                            password: ENV['REDIS_PASSWORD'])
else
  $redis_client = Redis.new(driver: :hiredis, host: ENV['REDIS_HOST'],
                            port: ENV['REDIS_PORT'])
end
$redis = Redis::Namespace.new('guclink', redis: $redis_client,
                                         deprecations: true)
