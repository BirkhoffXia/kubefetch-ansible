#/bin/env bash
# Install Ansible
current=`pwd`

echo "current:$current"

Greet() {
    str = "OK Install immediately $yes "
    echo $str
}

echo "----------------------->"
echo " You are going to install Kubefetch-v1.21.0, Right? "

read yes

val=$(Greet)

echo -e "----> val"

SEARCH=$(find / -name ansible-2.9.13 | grep -w kubefetch-v1.21.0)

# replacefiles 忽略包之间的文件冲突
# replacepkgs 重新安装，如果包已经存在
search_pkg(){
    for start in $SEARCH;
        do cd $start;
    done
    rpm -ivh --replacefiles --replacepkgs --nodeps *.rpm
}

search_pkg