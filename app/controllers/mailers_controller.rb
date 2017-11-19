class MailersController < ApplicationController
  def create
    500.times do
    GifSenderJob.perform_later(params[:mailers][:email], params[:mailers][:thought]) #calls the 'perform' method on GifSender Job, perform_later maps to a perform in your jobs library
    flash[:message] = "You did it! Email sent to #{params[:mailers][:email]}"
    end
    redirect_to "/sent"
  end

  def sent
  end
end
