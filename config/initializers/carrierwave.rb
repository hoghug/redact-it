CarrierWave.configure do |config|

  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV["S3_ACCESS_KEY_ID"],
    :aws_secret_access_key  => ENV["S3_SECRET_ACCESS_KEY"]
    # :region                 => 'eu-west-1',                  # optional, defaults to 'us-east-1'
    #:host                   => 's3.example.com',             # optional, defaults to nil
    #:endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  }

  config.cache_dir = "#{Rails.root}/tmp/uploads"  

  config.fog_directory  = ENV["S3_DEFAULT_BUCKET"]                  # required
  config.fog_public     = true 
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
