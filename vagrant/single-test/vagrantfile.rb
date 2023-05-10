Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true 
  config.hostmanager.manage_host = true
  
### DB vm  ####
  config.vm.define "web01" do |web01|
    web01.vm.box = "geerlingguy/centos7"
    web01.vm.hostname = "web01"
    web01.vm.network "private_network", ip: "192.168.19.111"
    
  end
  
### Memcache vm  #### 
  config.vm.define "web02" do |web02|
    web02.vm.box = "geerlingguy/centos7"
    web02.vm.hostname = "web02"
    web02.vm.network "private_network", ip: "192.168.19.112"
    
  end
  

