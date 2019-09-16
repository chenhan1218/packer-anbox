Vagrant.require_version ">= 1.7.3"

Vagrant.configure(2) do |config|
  config.vm.provider "virtualbox" do |v, override|
    v.gui = true
    v.memory = 2048
  end
end
