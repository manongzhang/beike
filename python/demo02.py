#控制录入
import sys;
user="lisi";
count=0;
while True:
	if count < 3:
	 	name = raw_input("please you name:").strip();
	 	if len(name) == 0:
			print "input your name";
			continue;
		elif name == user:
			print "welcome to %s" % user;
			pass
		else:
			print "%s is not vaild name please try again" % name;
			count=count+1;
			continue;
		break;
	else:
		print "two many to time";
		sys.exit();	