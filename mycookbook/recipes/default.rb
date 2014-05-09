#
# Cookbook Name:: mycookbook
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

#

user "anusha" do
   supports :manage_home => true
   comment  "anusha User"      
   home     "/home/anusha"
   shell    "/bin/bash"
   password "qwinix"
end

directory "/home/anusha/devops" do
   owner "root"
   group "root"
   mode   00755
   action :create
end

%w[ /home/anusha /home/anusha/abc /home/anusha/abc/pqr /home/anusha/abc/pqr/lmn /home/anusha/abc/pqr/lmn/xyz ].each do |path|
  directory path do 
  owner "root"
  group "root"
  mode  00755
 end
end

service "apache2" do
 action :restart
end
    package 'git-core'

bash "install" do
 user "root"
 cwd  "/tmp"
 code <<-EOH
 wget http://docs.opscode.com/resource_bash.html 
 EOH
end 
