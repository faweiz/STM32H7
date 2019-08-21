@echo off
echo set sh=WScript.CreateObject("WScript.Shell") >telnet_tmp.vbs
 
echo WScript.Sleep 1000 >>telnet_tmp.vbs
 
echo sh.SendKeys "pi~">>telnet_tmp.vbs
 
echo WScript.Sleep 1000 >>telnet_tmp.vbs
 
echo sh.SendKeys "raspberry~">>telnet_tmp.vbs
 
echo WScript.Sleep 5000 >>telnet_tmp.vbs
 
echo sh.SendKeys "ls ~">>telnet_tmp.vbs

echo WScript.Sleep 1000 >>telnet_tmp.vbs
 
start telnet 192.168.1.15
 
cscript //nologo telnet_tmp.vbs