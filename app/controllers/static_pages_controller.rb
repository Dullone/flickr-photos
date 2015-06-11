class StaticPagesController < ApplicationController
  include StaticPagesHelper

  def index
    FlickRaw.api_key = ENV["FLICKR_KEY"]
    FlickRaw.shared_secret = ENV["FLICKR_SECRET"]

    if params[:id]
      @photos = flickr.people.getPhotos(user_id: params[:id], per_page: 4)
    end
  end

end
