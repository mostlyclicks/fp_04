class Athlete < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  auto_html_for :video_embed do
    html_escape
    image
    youtube(:width => 400, :height => 250, :autoplay => false)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end

end
