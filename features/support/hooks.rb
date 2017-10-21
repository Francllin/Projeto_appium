Before do
	$driver.start_driver	
end

After do |cenario|
	if cenario.failed?
		unless File.directory?("screenshots") 
			FileUtils.mkdir_p("screenshots")
		end
		time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
		screenshot_name = "#{time_stamp}.png"
		screenshot_file = File.join("screenshots", screenshot_name)
		$driver.screenshot(screenshot_file)
		embed("#{screenshot_file}", "image/png")
	end
	$driver.driver_quit
end

#AfterConfiguration do
#	FileUtils.rm_r("screenshots") if File.directory?("screenshots") 
#end

class WaitElement
	def validar_elemento_existente(id)
	 wait = Selenium::WebDriver::Wait.new :timeout => 10
     wait.until { @driver.find_element(:id, id).displayed? }
	end
	

end
