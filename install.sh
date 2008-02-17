#!/bin/bash
res=0
for x in curl grep openssl sed stat cat date od; do
  which "${x}" >& /dev/null || { res=1; echo Missing ${x}. Please install it first.; }
done
((res == 0)) || exit 1
[[ -x /usr/bin/hmac ]] && echo hmac already exists! || cp hmac /usr/bin/hmac
[[ -x /usr/bin/s3 ]] && echo s3 already exists! || cp s3 /usr/bin/s3
