# frozen_string_literal: true

require "kafka"

require "kafka_styx/version"
require "kafka_styx/config"

module KafkaStyx
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
