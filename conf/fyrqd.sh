#!/bin/sh
#
# $FreeBSD: ports/net/rsync/files/rsyncd.sh,v 1.2 2004/08/12 10:45:27 eik Exp $
#

# FreeBSD file to put in /usr/local/etc/rc.d for starting fyrqd

# PROVIDE: fyrqd
# REQUIRE: LOGIN
# BEFORE:  securelevel
# KEYWORD: FreeBSD shutdown

. "/etc/rc.subr"

name="fyrqd"
rcvar=`set_rcvar`

command="/data/vhost/notfinished.faxyourrepresentative.com/fyr/bin/fyrqd"
command_args=""
pidfile="/data/vhost/notfinished.faxyourrepresentative.com/$name.pid"

# read configuration and set defaults
load_rc_config "$name"

: ${fyrqd_user="fyr"}
: ${fyrqd_chdir="/data/vhost/notfinished.faxyourrepresentative.com/fyr/bin"}
run_rc_command "$1"
