require 'saorin/server/reel/version'
require 'saorin/server/base'
require 'reel'

module Saorin
  module Server
    class Reel
      include Base

      DEFAULT_HEADERS = {
        'Content-Type' => 'application/json'
      }.freeze

      attr_reader :server

      def initialize(handler, options = {})
        super
      end

      def start(&block)
        reel_options = options[:reel_options] || {}
        server_class = reel_options.delete(:server_class) { ::Reel::Server::HTTP }

        @server = server_class.supervise(options[:host], options[:port], reel_options, &method(:process))

        (options[:trap_signals] || %w(INT TERM)).each do |sig|
          trap(sig) { exit }
        end

        sleep unless options[:nonblock]
      end

      def shutdown
        if @server
          @server.terminate
          @server = nil
        end
      end

      def process(connection)
        connection.each_request do |request|
          unless request.websocket?
            response_body = process_request(request.body.to_str) if request.method.to_s.upcase == 'POST'
            response_body ||= ''
            request.respond :ok, DEFAULT_HEADERS.dup, response_body
          end
        end
      end
    end

    register :reel, Reel
  end
end
