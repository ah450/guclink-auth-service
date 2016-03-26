$redis_client = Redis.new(driver: :hiredis, host: ENV['REDIS_HOST'],
                          port: ENV['REDIS_PORT'])

$redis = Redis::Namespace.new('guclink', redis: $redis_client,
                                           deprecations: true)
