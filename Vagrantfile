Vagrant.configure(2) do |config|
  # Box設定
  config.vm.box = "bento/centos-6.7"

  # IP設定
  config.vm.network "private_network", ip: "192.168.33.10"

  # 共有フォルダ
  config.vm.synced_folder ".", "/vagrant", owner: "vagrant", group: "vagrant", :mount_options => ['dmode=755', 'fmode=644']

  # chef install
  config.vm.provision "shell", inline: 'curl -L https://www.opscode.com/chef/install.sh | sudo bash'
end
