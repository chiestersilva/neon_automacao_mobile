require "allure-cucumber"
require "appium-lib"

require "fileutils"

#limpa os logs e os screenshots
FileUtils.rm_f(Dir.glob("logs/*.json"))
FileUtils.rm_f(Dir.glob("logs/*.png"))

caps = Appium.load_appium_text file: File.expand_path("caps/android.txt", __dir__), verbose: true
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

class Cucumber::Core::Test::Step
    def name
      text
    end
  end