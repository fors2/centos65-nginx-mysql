#######################
# パッケージのインストール
#######################
%w{nginx mysql mysql-server}.each do |pkg|
  package pkg do
    action :install
  end
end


#######################
# サービスの自動起動
#######################
%w{nginx mysqld}.each do |srv|
  service srv do
    action [ :enable, :start ]
  end
end

