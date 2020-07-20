# transportationtraining
交通实训项目

##生成代码
set MAVEN_OPTS="-Dfile.encoding=UTF-8"
mvn mybatis-generator:generate 


##解决git pull遇到错误：error: Your local changes to the following files would be overwritten by merge.md
输入以下命令
git stash 
git pull origin master 
git stash pop 


然后diff一下文件，看看自动合并的情况，并作出需要的修改。 
git stash: 备份当前的工作区的内容，从最近的一次提交中读取相关内容，让工作区保证和上次提交的内容一致。同时，将当前的工作区内容保存到Git栈中。 
git stash pop: 从Git栈中读取最近一次保存的内容，恢复工作区的相关内容。由于可能存在多个Stash的内容，所以用栈来管理，pop会从最近的一个stash中读取内容并恢复。 
git stash list: 显示Git栈内的所有备份，可以利用这个列表来决定从那个地方恢复。 
git stash clear: 清空Git栈。此时使用gitg等图形化工具会发现，原来stash的哪些节点都消失了。

pull origin master
push -u origin master


git强制拉取更新

git fetch --all
git reset --hard origin/master
git pull  

git fetch 指令是下载远程仓库最新内容，不做合并
git reset 指令把HEAD指向master最新版本
git pull 重新拉取


swagger-ui地址

http://127.0.0.1:8889/tt/swagger-ui.html

打包命令
mvn package -DskipTests