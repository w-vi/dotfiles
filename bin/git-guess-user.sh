#!/bin/bash

remote=`git remote -v | awk '/\(push\)$/ {print $2}'`
email=vilibald@wvi.cz # default
user=wvi # default

if [[ $remote == *github.com* ]]; then
    user=w-vi
fi

if [[ $remote == *github.com:apiaryio* ]]; then
    email=vilibald.wanca@oracle.com
fi

if [[ $remote == *bitbucket.oci.oraclecorp.com* ]]; then
    email=vilibald.wanca@oracle.com
    user=vwanca
fi

echo "Configuring user.name as $user and user.email as $email"
git config user.name $user
git config user.email $email
