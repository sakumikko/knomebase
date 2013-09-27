action :npminstall do
  execute "install npm module" do
    command "sudo npm -g install #{new_resource.name}"
  end
end

action :npmuninstall do
  execute "uninstall npm module" do
    command "sudo npm -g uninstall #{new_resource.name}"
  end
end