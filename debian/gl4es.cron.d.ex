#
# Regular cron jobs for the gl4es package
#
0 4	* * *	root	[ -x /usr/bin/gl4es_maintenance ] && /usr/bin/gl4es_maintenance
