Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true 
  config.hostmanager.manage_host = true
  
### Nginx VM ###
  config.vm.define "web01" do |web01|
    web01.vm.box = "ubuntu/bionic64"
    web01.vm.hostname = "web01"
	web01.vm.network "private_network", ip: "192.168.17.121"
  web01.vm.network "public_network", ip: "192.168.1.121"
  end
  
### tomcat vm ###
   config.vm.define "app01" do |app01|
    app01.vm.box = "geerlingguy/centos7"
    app01.vm.hostname = "app01"
    app01.vm.network "private_network", ip: "192.168.17.122"
    app01.vm.network "public_network", ip: "192.168.11.122"
	app01.vm.provider "virtualbox" do |vb|
     vb.memory = "1024"
	 end
   end
   
### RabbitMQ vm  ####
  config.vm.define "rmq01" do |rmq01|
    rmq01.vm.box = "geerlingguy/centos7"
	rmq01.vm.hostname = "rmq01"
    rmq01.vm.network "private_network", ip: "192.168.17.123"
    rmq01.vm.network "public_network", ip: "192.168.1.123"
  end
  
### Memcache vm  #### 
  config.vm.define "mc01" do |mc01|
    mc01.vm.box = "geerlingguy/centos7"
	mc01.vm.hostname = "mc01"
    mc01.vm.network "private_network", ip: "192.168.17.124"
    mc01.vm.network "public_network", ip: "192.168.1.124"
  end
  
### DB vm  ####
  config.vm.define "db01" do |db01|
    db01.vm.box = "geerlingguy/centos7"
	db01.vm.hostname = "db01"
    db01.vm.network "private_network", ip: "192.168.17.125"
    db01.vm.network "public_network", ip: "192.168.1.125"
  end
end
