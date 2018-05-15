Rails.application.configure do
  config.session_store :redis_store, {
      servers: {
          host: '127.0.0.1',
          port: 6379,
          db: 0,
          namespace: 'sessions'
      },
    expire_after: 90.minute
  }

end
