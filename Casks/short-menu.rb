cask 'short-menu' do
  version '3.0.4,589:1511958035'
  sha256 '0c33a300fc3de7cba9db22630014a5bf5f05adc0c974edf16a33f6694627f4b7'

  # dl.devmate.com/com.floschliep.Short-Menu was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.floschliep.Short-Menu/#{version.after_comma.before_colon}/#{version.after_colon}/ShortMenu-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.floschliep.Short-Menu.xml'
  name 'Short Menu'
  homepage 'https://appiculous.com/short-menu-mac/'

  app 'Short Menu.app'

  zap trash: [
               '~/Library/Application Support/Short Menu',
               '~/Library/Containers/com.floschliep.Short-Menu',
               '~/Library/Logs/com.floschliep.Short-Menu',
               '~/Library/Cookies/com.floschliep.Short-Menu.binarycookies',
             ]
end
