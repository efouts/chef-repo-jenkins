#
# Author:: Seth Chisamore (<schisamo@opscode.com>)
# Cookbook Name:: java
# Recipe:: openjdk
#
# Copyright 2010-2011, Opscode, Inc.
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

pkgs = value_for_platform(
  ["centos","redhat","fedora"] => {
    "default" => ["java-1.6.0-openjdk","java-1.6.0-openjdk-devel"]
  },
  ["arch","freebsd"] => {
    "default" => ["openjdk6"]
  },
  "default" => ["openjdk-6-jdk","default-jdk"]
)

java_alternative_name = value_for_platform(
  ["ubuntu"] => {
    "11.10"   => "java-1.6.0-openjdk",
    "default" => "java-6-openjdk"
  },
  ["debian"] => {
    "default" => "java-6-openjdk"
  }
)

execute "update-java-alternatives" do
  command "update-java-alternatives -s #{java_alternative_name}"
  returns [0,2]
  action :nothing
  only_if { platform?("ubuntu", "debian") }
end

pkgs.each do |pkg|
  package pkg do
    action :install
    notifies :run, "execute[update-java-alternatives]"
  end
end

