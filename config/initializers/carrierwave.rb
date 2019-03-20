CarrierWave.configure do |config|
  if Rails.env.development? || Rails.env.test?
    CarrierWave.configure do |config|
      config.storage = :file
    end
  end

  if Rails.env.production?
    CarrierWave.configure do |config|
      config.storage = :fog
    end
  end

  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     'AKIAIM4OXIDZJS7WJ66Q',                        # required unless using use_iam_profile
      aws_secret_access_key: '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',                        # required unless using use_iam_profile
  }
  config.fog_directory  = 'solved-by-code'                                      # required
end