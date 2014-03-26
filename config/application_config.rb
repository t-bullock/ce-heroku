configuration = {
  :app_host =>  'demo.communityengine.org',
  :community_name =>  "CommunityEngine",
  :community_tagline =>  "Open Source Social Networking Platform",

  :photo => {
    :missing_thumb =>  '/assets/icon_missing_thumb.jpg',
    :missing_medium =>  '/assets/icon_missing_medium.jpg',
    :paperclip_options => {
      :styles => {
        :thumb => "100x100#",
        :medium =>  "290x320#",
        :large =>  "664>",
      },
      :storage =>  :s3,
      :s3_credentials => {
        :access_key_id => ENV["S3_KEY"],
        :secret_access_key => ENV["S3_SECRET"]
      },
      :bucket => ENV['S3_BUCKET'],
      :path => ":attachment/:id_:style.:extension"
    },
    :validation_options => {
      :max_size =>  3,
      :content_type =>  ['image/jpg', 'image/jpeg', 'image/pjpeg', 'image/gif', 'image/png', 'image/x-png']
    }
  }
}

configatron.configure_from_hash(configuration)
