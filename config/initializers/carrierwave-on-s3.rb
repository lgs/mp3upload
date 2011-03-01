# don't forget to set the storage to :s3 in your uploader, like the following:

#     class AvatarUploader < CarrierWave::Uploader::Base
#       storage :s3
#     end

# That’s it! You can still use the CarrierWave::Uploader#url method to return the url to the file on Amazon S3.
# Alternatively, and especially if your bucket is located in Europe, you can use the RightAWS library by setting the storage to :right_s3

#     class AvatarUploader < CarrierWave::Uploader::Base
#       storage :right_s3
#     end

#first old setting :
#CarrierWave.configure do |config|
#  config.s3_access_key_id = '1NFZXSPRJV9SEAX1DJ82'
#  config.s3_secret_access_key = 'bZnXN2fK0sFM//a8/Gcn3lnKXXgj5CIPjvyTJuhn'
#  config.s3_bucket = 'soundcloud-mp3upload'
#end

    CarrierWave.configure do |config|
      config.fog_credentials = {
        :provider               => 'AWS',       # required
        :aws_access_key_id      => '1NFZXSPRJV9SEAX1DJ82',       # required
        :aws_secret_access_key  => 'bZnXN2fK0sFM//a8/Gcn3lnKXXgj5CIPjvyTJuhn',       # required
        :region                 => 'eu-west-1'  # optional, defaults to 'us-east-1'
      }
      config.fog_directory  = 'soundcloud-mp3upload'                     # required
      config.fog_host       = nil #'https://assets.example.com'            # optional, defaults to nil
      config.fog_public     = false                                   # optional, defaults to true
      config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
    end

