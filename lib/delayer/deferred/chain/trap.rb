# -*- coding: utf-8 -*-
require "delayer/deferred/chain"

module Delayer::Deferred
  class Trap < Chain
    def evaluate?(response)
      response.ng?
    end

    private

    def graph_shape
      'diamond'.freeze
    end
  end
end
