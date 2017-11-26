class Invite
  include Cinch::Plugin

  listen_to :invite, method: :invite

  def invite(bongos)
    Channel(bongos.channel.to_s).join
  end
end
