python_pip "uWSGI" do
  binary "uwsgi --version"
end

user "uwsgi" do
  system true
  shell '/bin/sh'
end

file node[:python][:uwsgi][:log] do
  owner "uwsgi"
  group "uwsgi"
  mode "0644"
end

service "uwsgi" do
  supports :status => true, :restart => true, :reload => true
  provider Chef::Provider::Service::Upstart
end

template "/etc/init/uwsgi.conf" do
  cookbook "python"
  source "uwsgi.upstart.erb"
  mode "0644"
  notifies :restart, resources(:service => "uwsgi"), :delayed
  backup false
end

template "/etc/uwsgi.ini" do
  cookbook "python"
  source "uwsgi.ini.erb"
  mode "0644"
  notifies :restart, resources(:service => "uwsgi"), :delayed
  backup false
end
