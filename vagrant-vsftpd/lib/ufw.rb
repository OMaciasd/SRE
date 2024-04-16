# ufw_server.rb
require_relative 'server'

class UfwServer < Server
  private

  def specific_commands
    File.read(File.expand_path('../../scripts/ufw_commands.sh', __FILE__))
  end
end
