package 'tree' do
  action :install
end

package 'nano' do
  action :install
end 

package 'emacs' do
  action :install
end 

package 'ntp' do
  action :install
end

template '/etc/motd' do
  source 'motd.erb'
  action :create
end

service 'ntpd' do
  action [:enable, :start]
end

package 'git' do
  action :install
end
