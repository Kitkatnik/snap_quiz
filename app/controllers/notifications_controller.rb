class NotificationsController < ApplicationController
  include Tubesock::Hijack

  def questions
    hijack do |tubesock|
      redis_thread = Thread.new do
        Redis.new.subscribe "question" do |on|
          on.message do |channel, message|
            tubesock.send_data message
          end
        end
      end

      tubesock.onmessage do |m|
        # IF message is JSON we can parse and do useful stuff!
        Redis.new.publish "question", m
      end

      tubesock.onclose do
        redis_thread.kill
      end

    end

  end

end