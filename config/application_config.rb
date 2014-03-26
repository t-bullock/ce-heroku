configuration = {
  :app_host =>  'demo.communityengine.org',
  :community_name =>  "CommunityEngine",
  :community_tagline =>  "Open Source Social Networking Platform",

  :photo => {
    :missing_thumb =>  '/assets/icon_missing_thumb.jpg',
    :missing_medium =>  '/assets/icon_missing_medium.jpg',
    :paperclip_options => {
      :styles => {
        :thumb => {
          :geometry =>  "100x100#",
        },
        :medium =>  "290x320#",
        :large =>  "664>",
      },
      :storage =>  :s3,
      :s3_credentials => Rails.root.join('config', 's3.yml'),
      :path => ":attachment/:id_:style.:extension"
    },
    :validation_options => {
      :max_size =>  3,
      :content_type =>  ['image/jpg', 'image/jpeg', 'image/pjpeg', 'image/gif', 'image/png', 'image/x-png']
    }
  }
}

configatron.configure_from_hash(configuration)
