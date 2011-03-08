require 'fileutils'

#Copy the config sample file
vkontakte_config = File.dirname(__FILE__) + '/../../../config/vkontakte.yml'
unless File.exist?(vkontakte_config)
	FileUtils.copy(File.dirname(__FILE__) + '/vkontakte.yml.sample', vkontakte_config)
end

#Copy xd_receiver
FileUtils.copy(File.dirname(__FILE__) + '/xd_receiver.html', File.dirname(__FILE__) + '/../../../public/xd_receiver.html')
