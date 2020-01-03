# frozen_string_literal: true

require "kafka"

require "kafka_party/version"
require "kafka_party/config"

module KafkaParty
  @config = Config.new

  class << self
    attr_reader :config

    def configure(&blk)
      blk.call(config)
    end

    def reset
      @config = Config.new
    end
  end
end
