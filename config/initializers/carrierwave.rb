require 'carrierwave/storage/fog'
  if Rails.env.development? || Rails.env.test?
    CarrierWave.configure do |config|
      config.storage = :file
    end
  end

  if Rails.env.production?
    CarrierWave.configure do |config|
      config.storage = :fog
      config.fog_provider = 'fog/aws'                        # required
      config.fog_credentials = {
          provider:              'AWS',                        # required
          aws_access_key_id:     'AKIAITUSXESPKGOX6EVA',                        # required unless using use_iam_profile
          aws_secret_access_key: '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',                        # required unless using use_iam_profile
      }
      config.fog_directory  = 'solved-by-code'                                      # required
    end
  end
