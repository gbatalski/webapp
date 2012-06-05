#
# Cookbook Name:: mavenbuild
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "jetty"

if node.chef_environment == "QA"
	    branch_name = "staging"
else
	    branch_name = "master"
end

work_dir = "#{Chef::Config[:file_cache_path]}/#{node[:webapp][:appname]}"
 
git work_dir do                            
	repository "#{node[:webapp][:giturl]}"
	revision branch_name                                   
	action :sync                                     
	user   "#{node[:jetty][:user]}"                                    
	group  "#{node[:jetty][:group]}"                                   
end

bash "run-maven" do
   cwd work_dir
   code <<-EOH
    MAVEN_OPTS="#{node[:webapp][:maven_opts]}" &&  mvn -U clean compile install package war:war "#{node[:webapp][:build_params]}"
    cp -rf target/*.war "#{node["jetty"]["webapp_dir"]}"   
   EOH
end
