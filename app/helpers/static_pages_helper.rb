module StaticPagesHelper
  def get_photo_url (json)
    "http://farm#{json.farm}.staticflickr.com/#{json.server}/#{json.id}_#{json.secret}.jpg"
  end
end
