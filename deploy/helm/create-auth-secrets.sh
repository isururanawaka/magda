#!/bin/sh
echo {\"apiVersion\": \"v1\", \"kind\": \"Secret\", \"metadata\": {\"name\": \"auth-secrets\"}, \"type\": \"Opaque\", \"data\": {\"jwt-secret\": \"$(openssl rand -base64 128 | tr -d '\r\n' | base64 -w 0)\", \"session-secret\":\"$(openssl rand -base64 128 | tr -d '\r\n' | base64 -w 0)\"}} | kubectl create -f -
