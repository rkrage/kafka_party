# frozen_string_literal: true

module KafkaParty
  class Config
    attr_accessor \
      :bootstrap_servers

    def initialize
      @bootstrap_servers = "localhost:9092"
    end
  end
end
