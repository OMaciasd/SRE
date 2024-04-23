# vsftpd_server.rb
require_relative 'server'

class VsftpdServer < Server
  private

  def specific_commands
    File.read(File.expand_path('../../scripts/vsftpd_commands.sh', __FILE__))
  end
end
