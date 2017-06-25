package 'tree' do
  action :install
end

package 'ntp' do
  action :install
end

file '/etc/motd' do
  content 'This computer is the procperty of Ted Zahner'
  owner 'root'
  group 'root'
  action :create
end

service 'ntpd' do
  action [:enable, :start]
end

package 'git' do
  action :install
end
