require 'rspec/expectations'
require 'appium_lib'
require 'cucumber'
require 'pry'
require 'faker'
require 'rake'


def caps
	{ caps: { deviceName: "Samsung",
			  platformName: "Android",
			  app: (File.join(File.dirname(__FILE__), "com.orgzly_60.apk")),
			  appPackage: "com.orgzly",
			  appActivity: "",
			  newCommandTimeout: "3600",  
	  appium_lib: { wait: 20,
	  				debug: false
	  			  }

	}}
end

Appium::Driver.new(caps)
Appium.promote_appium_methods Object
