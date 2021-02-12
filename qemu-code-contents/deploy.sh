#!/bin/sh

tar czf - . | ssh -p 5555 steve@localhost "tar xzf -"
