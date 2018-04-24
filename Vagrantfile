# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "lot/centos7-router"

  config.vm.provider "virtualbox" do |v|
    v.linked_clone = true
  end

  config.vm.define "vm02" do |cfg|
    cfg.vm.hostname = "vm02"
    cfg.vm.network :public_network, ip: "10.0.42.20", bridge: "en0: Wi-Fi (AirPort)"
    cfg.vm.provision "shell", path: "vm02.sh"
  end

  config.vm.define "vm01" do |cfg|
    cfg.vm.hostname = "vm01"
    cfg.vm.network :public_network, ip: "10.0.42.10", bridge: "en0: Wi-Fi (AirPort)"
    cfg.vm.provision "shell", path: "vm01.sh"
  end
end
