require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

# CarrierWave.configure do |config|
#   config.storage = :fog
#   config.fog_provider = 'fog/aws'
#   config.fog_credentials = {
#     provider: 'AWS',
#     aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],
#     aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],
#     region: 'ap-northeast-1'
#   }

#   config.fog_directory  = 'kozin-app'
#   config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/kozin-app'
# end

if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      provider:               'AWS',
      region:                 ENV['S3_REGION'],   
      aws_access_key_id:      ENV['S3_ACCESS_KEY'],
      aws_secret_access_key:  ENV['S3_SECRET_KEY']
    }
    config.fog_directory     =  ENV['S3_BUCKET']
  end
end