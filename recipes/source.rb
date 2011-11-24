if platform?("centos", "redhat", "fedora")
  package "openssl-devel"
  package "bzip2-devel"
  package "zlib-devel"
  package "expat-devel"
  package "db4-devel"
  package "sqlite-devel"
  package "ncurses-devel"
  package "readline-devel"
else
  package "libssl-dev"
  package "libbz2-dev"
  package "zlib1g-dev"
  package "libexpat1-dev"
  package "libdb4.8-dev"
  package "libsqlite3-dev"
  package "libncursesw5-dev"
  package "libncurses5-dev"
  package "libreadline-dev"
end

remote_file "#{node.python.src}/#{node.python.dir}.tar.bz2" do
  source "#{node.python.baseuri}/#{node.python.version}/#{node.python.dir}.tar.bz2"
  checksum node.python.checksum
  action :create_if_missing
end

execute "Unarchive Python v#{node.python.version}" do
  command "tar -jxf #{node.python.dir}.tar.bz2"
  creates "#{node.python.src}/#{node.python.dir}"
  cwd node.python.src
end

execute "Build & install Pyton v#{node.python.version}" do
  command "./configure #{node.python.configure_options} && make && make install"
  creates "#{node.python.home}"
  cwd "#{node.python.src}/#{node.python.dir}"
end

