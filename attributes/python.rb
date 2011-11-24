#
# Author:: Seth Chisamore (<schisamo@opscode.com>)
# Cookbook Name:: python
# Attribute:: default
#
# Copyright 2011, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default[:python][:install_method] = 'package'

default[:python][:version] = "2.7.2"
default[:python][:basedir] = '/usr/local'
default[:python][:src]     = "#{python.basedir}/src"
default[:python][:dir]     = "Python-#{python.version}"
default[:python][:checksum] = "5057eb067eb5b5a6040dbd0e889e06550bde9ec041dadaa855ee9490034cbdab"
default[:python][:home]    = "#{python.basedir}/lib/python2.7"
default[:python][:baseuri] = "http://www.python.org/ftp/python"

default[:python][:configure_options] = "--prefix=#{python.basedir}"
