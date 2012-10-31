$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'ParseModel'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'practice'
  app.frameworks += %w(AudioToolbox CFNetwork SystemConfiguration MobileCoreServices Security QuartzCore)
  app.vendor_project('vendor/Parse.framework', :static, :products => ['Parse'], :headers_dir => 'Headers')
  app.identifier = 'F11280C9-2B47-41E0-8D0B-28EAFB17C156'
  app.provisioning_profile = "/Users/thuynguyen/Library/MobileDevice/Provisioning Profiles/F11280C9-2B47-41E0-8D0B-28EAFB17C156.mobileprovision
"
  app.entitlements['aps-environment'] = 'development'
end
