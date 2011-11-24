#
# Author:: Seth Chisamore <schisamo@opscode.com>
# Cookbook Name:: python
# Recipe:: virtualenv
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

include_recipe "python::pip"

python_pip "virtualenv"

# python_pip "virtualenvwrapper"
# execute "Set up virtualenvwrapper" do
#   command %{
#     export WORKON_HOME=~/.virtualenvs
#     mkdir -p $WORKON_HOME
#     source #{node.python.basedir}/bin/virtualenvwrapper.sh

#     if [ $(grep -c 'WORKON_HOME' ~/.bashrc) -eq 0 ]; then
#       echo 'export WORKON_HOME=/.virtualenvs' >> ~/.bashrc
#     fi

#     if [ $(grep -c 'virtualenvwrapper' ~/.bashrc) -eq 0 ]; then
#       echo 'source #{node.python.basedir}/bin/virtualenvwrapper.sh' >> ~/.bashrc
#     fi
#   }
# end
