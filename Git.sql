------------[-Git-]-----------
1.
	--win-版版本控制器下载
		--https://git-scm.com/download/win
	--Linux-版版本控制器下载
		--https://git-scm.com/download/linux

2.
	--命令汇总：
		--2.1./:	git --version
		--2.2./:	git config --list
		--2.3./:	git config  user.name "cuili"				/*作用于当前项目-优先级最高*/
				--	git config  --global user.name "cuili"		/*作用于当前用户-优先级次之*/
				--	git config  --system user.name "cuili"		/*作用于本操作系统-优先级最次*/
				--	git config  user.email "1106631203@qq.com"				/*作用于当前项目-优先级最高*/
				--	git config  --global user.email "1106631203@qq.com"		/*作用于当前用户-优先级次之*/
				--	git config  --system user.email "1106631203@qq.com"		/*作用于本操作系统-优先级最次*/		   
		--2.4./:	git init	/*创建仓库*/	
		--2.5./:	
		--2.6./:	
		--2.7./:	
		--2.8./:	
		
		
3.
	--git-框架
		3.1--
			3.1.1--工作区		/*沙漏环境-随便搞*/
			3.1.2--暂存区
			3.1.3--版本库
		3.2--
			3.2.1--git对象		/*对应文件内容-git对象代表文件的此次版本*/
			3.2.2--树对象		/*对应目录内容-树对象可包含一个或多个git对象-构建树对象放至暂存区*-树对象代表项目的此次版本-本质上项目的快照就是树对象/
			3.2.3--提交对象
	--git-底层命令
		--git ls-files -s	/*查看暂存区文件*/
		--git cat-file -t hash-key	/*查看提交类型*/
		--git cat-file -p hash-key	/*查看内容*/
		--......
	--git-高层命令
		--git init					/*初始化仓库*/
		--git status				/*查看文件状态*/
		--git diff (--cached)		/*查看哪些修改还没有暂存*/
			--git diff (--cached/--staged)	/*查看哪些已经被暂存还没提交*/
		--git log
			--git log --oneline		/*显示一行*/
			--git log --oneline --decorate --graph --all	/*查看项目分支历史*/
			--git config --global alias.lol "log --oneline --decorate --graph --all"
		--git rm
		--git mv 原文件名 mv文件名
		--git add					/*将修改添加至暂存区*/-/*实际操作：首先生成git对象至版本库,然后才将git对象放至暂存区*/
			---------[相对地层命令]----------
			--git hash-object -w 文件名(修改了多少个工作目录中的文件,此命令就被执行多少次)
			--git update-index ...(./git/index  ---> 即是抽象出来的“暂存区”)
			---------------------------------
		--git commit				/*将暂存区提交至版本库*/-/*实际操作：首先通过暂存区生成树对象,在后提交树对象至版本库,同时包装commit附属信息生成commit提交对象*//*所以,提交的完整流程必须是git对象->树对象->提交对象*/
			--git commit (-m "注释内容")	/**/
			--git commit -a (-m "")			/*跳过放置暂存区,即跳过-git add-步骤,直接commit*/
				---------[相对地层命令]----------
				--git write-tree
				--git commit-tree
				---------------------------------

		--git branch 要创建的分支名	/*创建分支*/
			--git branch	/*显示分支列表*/
			--git branch -d 分支名	/*删除分支*/
			--git branch -D 分支名	/*当分支内内容未合并主干时,支持强制删除*/
			--git branch -v			/*可以查看每一个分支的最后一个提交*/
			--git branch name commitHash	/*新建分支并且使分支指向对应的提交对象(实质:可在master主干的任意节点重建分支)*/
		--git checkout 要切换的分支名
		--
		
		
		
		