websocketd-cloudfoundry
=======================

example script for [websocketd](https://github.com/joewalnes/websocketd) that enable running interactive commands for a cloud foundry application using a browser and websocket. websocketd with the devconsole option can easily send text commands from the browser (such as `rake db:migrate`) to STDIN of the `bash.sh` script which executes the commands and returns STDOUT as lines to the browser.

![Screenshot](http://2.bp.blogspot.com/-JSkXg9ith_0/Uql1Du9ieaI/AAAAAAAAKm4/321Y5roQk74/s1600/websocketd_console.png)

## instructions

1. downlaod a [linux 64bit version of websocketd](https://github.com/joewalnes/websocketd/wiki/Download-and-install#downloads) and place it in this directory
2. execute `chmod +x websocketd`
3. copy the entire `websocketd-cloudfoundry`  into the app dir you would like to use it with
4. push the application using something like `gcf push myapp -c '/app/websocketd-cloudfoundry/websocketd --port=$PORT --dir=/app/websocketd-cloudfoundry --devconsole`
5. visit the URL of the application with /bash.sh at the end
6. make sure that URL next to the checkbox uses the right protocol (either ws or wss) and a port that supports that protocol. on run.pivotal.io that will be a URL like wss://websocketd.cfapps.io:4443/bash.sh
7. type some commands such as `pwd` or `ls -al` or `ps aux`

for more detail [this video](https://www.youtube.com/watch?v=aRq38DEa-gE) or [the blog post](http://www.iamjambay.com/2013/12/send-interactive-commands-to-cloud.html).

