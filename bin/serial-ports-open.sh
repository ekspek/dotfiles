#!/bin/sh

port_in=COM8
port_out=COM9

socat -d -d -d PTY,link=$port_in PTY,link=$port_out
