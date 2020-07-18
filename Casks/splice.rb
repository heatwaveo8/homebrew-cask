cask 'splice' do
  version '3.6.3'
  sha256 '9d7dbd701ee25c558d06424f60eeda73a15f2919a5683aa20a11544d97f1ac99'

  # splicedesktop.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://splicedesktop.s3.amazonaws.com/darwin/stable/Splice.app.zip'
  appcast 'https://api.splice.com/v2/desktop/darwin/stable/latest?v=0.0.0'
  name 'Splice'
  homepage 'https://splice.com/'

  app 'Splice.app'

  uninstall quit: 'com.splice.Splice'

  zap trash: [
               '~/Library/Application Support/*Splice*',
               '~/Library/Caches/com.splice*',
               '~/Library/Preferences/com.splice*',
             ]
end
