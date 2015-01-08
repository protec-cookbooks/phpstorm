cookbook_file "/usr/share/applications/phpstorm.desktop" do
    source "phpstorm.desktop"
    owner "root"
    mode "0777"
end

script "install_phpstorm" do
    interpreter "bash"
    user "root"
    cwd "/tmp"
    code <<-EOH
    rm -rf /opt/phpstorm/PhpStorm
    mkdir -p /opt/phpstorm
    cd /opt/phpstorm
    wget http://download.jetbrains.com/webide/PhpStorm-#{node['phpstorm']['version']}.tar.gz
    tar -xzf PhpStorm-#{node['phpstorm']['version']}.tar.gz
    find . -maxdepth 1 -name "PhpStorm-*" -type d | head -1 | xargs -i sudo ln -s {} PhpStorm
    rm -rf PhpStorm-#{node['phpstorm']['version']}.tar.gz
    EOH
    only_if do ! File.exists?("/opt/phpstorm/PhpStorm/bin/phpstorm.sh") end
end

link "/usr/local/bin/phpstorm" do
    to "/opt/phpstorm/PhpStorm/bin/phpstorm.sh"
end

