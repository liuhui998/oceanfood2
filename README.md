# README

最近要给 Team 的朋友做一次 Rails 相关的分享，所以写了这个示例项目

现在的这个项目是第二季了 :)

我会假设你把 [第一季](https://github.com/liuhui998/oceanfood) 里的内容全部看完，如果有对 Rails 相关环境的安装和配置有什么问题就请再看一次 [第一季](https://github.com/liuhui998/oceanfood)， 我这里就不重复了, 我这里只会讲和上一季不同的地方。


# 部署配置相关

## Google API Setup

Go to 'https://console.developers.google.com'

Select your project.

Click 'APIs & auth'

Make sure "Contacts API" and "Google+ API" are on.

Go to Consent Screen, and provide a 'PRODUCT NAME'

Wait 10 minutes for changes to take effect.

记住要根据生产环境和开发环境申请两个不同的 Client ID

最后还有两个环境变量要配：


针对生产环境：

	ENV["PRO_GOOGLE_CLIENT_ID"], ENV["PRO_GOOGLE_CLIENT_SECRET"]

针对开发环境：

	ENV["DEV_GOOGLE_CLIENT_ID"], ENV["DEV_GOOGLE_CLIENT_SECRET"]

## 使用 heroku 部署

使用 heroku 创建一个新的 APP, APPNAME 是可以选的，不写的话，系统会给你自动生成一个名字

	heroku create [APPNAME]
	
把代码推到 heroku 上，第一次推时要加 --set-upstream

	git push --set-upstream heroku master
	
在 heroku 上执行数据库  migrate （迁移）操作

	heroku run rake db:migrate

在 herok 上执行生成种子数据

	heroku run rake db:seed

在本地的 Rails 项目里 config 目录下建一个 application.yml 文件， 有下面的内容

	S3_KEY : "AWS_ACCESS_KEY_ID"
	S3_SECRET : "AWS_SECRET_ACCESS_KEY"
	S3_BUCKET : "BUCKET_NAME"

把把：'AWS_ACCESS_KEY_ID' ,'AWS_SECRET_ACCESS_KEY' 和 'BUCKET_NAME' 替换成你自己的东东

然后执行下面的命令，把环境变量放到 heroku 上：

	figaro heroku:set -e production

好了，现在打你的 App 看一下：

	heroku open

# Remarks

1. Rails 运行环境相关部分我参考了很多 [Rails101] (http://rails-101.logdown.com/)，谢谢 [Xdite](http://blog.xdite.net/)
2. [RubyChina Wiki](https://ruby-china.org/wiki) 也为我提供了很多帮助





