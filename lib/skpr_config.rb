require "json"

class SkprConfig
  def self.load(filename = '/etc/skpr/data/config.json')
    json_config = File.read(filename)
    config = JSON.parse(json_config)
    config.each do |key, value|
      ENV[convert_to_env_var_key(key)] = value
    end

  end

  def self.convert_to_env_var_key(key)
    return key.gsub(/[^A-Za-z0-9 ]/, '_').upcase
  end

end
