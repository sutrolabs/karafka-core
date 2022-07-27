# frozen_string_literal: true

%w[
  concurrent/map
  concurrent/hash
  concurrent/array
  karafka/core
  karafka/core/version
  karafka/core/monitoring
  karafka/core/monitoring/event
  karafka/core/monitoring/monitor
  karafka/core/monitoring/notifications
].each { |dependency| require dependency }

module Karafka
  # Namespace for small support modules used throughout the Karafka ecosystem
  module Core
  end
end
