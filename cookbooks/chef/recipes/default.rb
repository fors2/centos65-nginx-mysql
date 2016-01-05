#######################
# パッケージのインストール
#######################
%w{nginx}.each do |pkg|
  package pkg do
    action :install
  end
end


##########################
# nodejsの実装
##########################
script "install-nodejs" do
  interpreter "bash"
  user        "root"
  code <<-'EOS'
    sudo yum install -y http://dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm
    sudo yum install -y mysql-client mysql-server
    
    sudo yum install -y epel-release
    sudo yum install -y nodejs
    
    sudo yum install -y redis
  EOS
end


#######################
# サービスの自動起動
#######################
%w{nginx mysqld redis}.each do |srv|
  service srv do
    action [ :enable, :start ]
  end
end
