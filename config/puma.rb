#render
max_threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
min_threads_count = ENV.fetch("RAILS_MIN_THREADS") { max_threads_count }
threads min_threads_count, max_threads_count
worker_timeout 3600 if ENV.fetch("RAILS_ENV", "development") == "development"
port ENV.fetch("PORT") { 3000 }
environment ENV.fetch("RAILS_ENV") { "development" }
pidfile ENV.fetch("PIDFILE") { "tmp/pids/server.pid" }
workers ENV.fetch("WEB_CONCURRENCY") { 4 }
plugin :tmp_restart


#localhost
# config/puma.rb
# Workersはコメントアウト（または設定しない）します
# workers ENV.fetch("WEB_CONCURRENCY") { 2 }

# threadsの最小と最大を1に設定
# threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
# threads threads_count, threads_count

# # PreloadアプリはWindowsでサポートされていないため、無効化します
# preload_app!

# # サーバーバインドの設定
# port ENV.fetch("PORT") { 3000 }


