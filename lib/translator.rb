module Translator
  DATABASES = {
    "development":  0,
    "test":         1,
    "production":   2
  }

  def self.store
    @store = Redis.new(db: DATABASES[Rails.env.to_s])
  end

  class Backend < I18n::Backend::KeyValue
    include I18n::Backend::Memoize

    def initialize
      super(Translator.store)
    end
  end
end