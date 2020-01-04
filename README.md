# sshLoginByCertFile
一键设置centos7证书登陆的脚本

##使用前提： 你需要提前准备好你的公钥文本

客户端是window系统，可以使用putty的工具生成证书对，获取id_ras.pub 这个公钥内容。 用文本工具打开这个文件，拷贝即可。


客户端是mac 、 linux系统，可以使用以下命令生成证书对

```
ssh-keygen -t rsa
```

会提示输入：密钥存放位置（直接回车，默认在/home/用户名/.ssh/目录）、密码短语、重复密码短语。
完成后在/home/用户名/.ssh/目录下生成了2个文件：id_rsa为私钥，id_rsa.pub为公钥。

可以执行
```
cat /home/用户名/.ssh/id_rsa.pub 
```
得到公钥的文本


##使用方法：
编辑login.sh文件里面的xxxx部分，改成你刚得到的内容。 
然后将文件传到服务器上去，手动执行 chmod +x login.sh && ./login.sh  即可完成设置


#建议大家存为自己的一个脚本，这样不用每次都设置。
