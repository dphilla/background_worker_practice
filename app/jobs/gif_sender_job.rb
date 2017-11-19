class GifSenderJob < ActiveJob::Base
  queue_as :default  #you can set different types of priorities here

  def perform(email, thought) #perform is from sidekick
    UserNotifier.send_randomness_email(email, thought).deliver_now
  end
end
