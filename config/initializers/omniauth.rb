Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "wNrq0HiIf3XRfhBJzc2727FJM", "GBATrickxOeArBq6IWJo4ZUsFgLHULSkF60n6Ndz5cMCqKbP65",
    {
          :secure_image_url => 'true',
          :image_size => 'original',
          :authorize_params => {
            :force_login => 'true',
            :lang => 'pt'
          }
        }

    provider :facebook, "wNrq0HiIf3XRfhBJzc2727FJM", "GBATrickxOeArBq6IWJo4ZUsFgLHULSkF60n6Ndz5cMCqKbP65",
      {
            :secure_image_url => 'true',
            :image_size => 'original',
            :authorize_params => {
              :force_login => 'true',
              :lang => 'pt'
            }
          }
end
