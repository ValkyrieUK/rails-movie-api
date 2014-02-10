CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAIWFXWCWIC44QYJEA',
    :aws_secret_access_key  => '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'
  }
  config.fog_directory  = 'brad-carrierwave'
end