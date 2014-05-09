require 'yaml'
module Clockwork
  YAML.load_file('alarms.yml').each do |name, alarm|
     every(1.day, name, :at => alarm['hour']) { system("firefox " + alarm['url']) }
  end
end