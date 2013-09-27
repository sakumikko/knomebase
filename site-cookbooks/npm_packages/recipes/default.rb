#
# Cookbook Name:: npm_packages
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

if node['npm_packages']['packages'].length > 0
  #execute "install npm module" do
  #  command "sudo npm -g install supervisor"
  #end
  node['npm_packages']['packages'].each do |pkg|
    execute "install npm module" do
      command "sudo npm -g install #{pkg}"
    end
    #  package pkg do 
    #    action :npminstall
    #    provider "npm_packages"
    #  end
  end
end