# centos65-nginx-mysql

1. centos6.5のboxを作成  
　※ centos6.5のboxを作成済みの場合はスキップ  
`$ vagrant box add centos65 https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box`  

2. boxの確認  
`$ vagrant box list`  

3. 作業ディレクトリの作成  
`$ mkdir ~/usr/project`  
`$ cd ~/usr/project`  

4. vagrantの初期設定  
`$ vagrant init project`  

5. gitをクローン  
`git clone git://github.com/fors2/centos65-nginx-mysql.git`  
　※ boxの名称を合わせてください。

6. 起動  
`vagrant up`

7. webページにアクセス  
　http://192.168.33.101
