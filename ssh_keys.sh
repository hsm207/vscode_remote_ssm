#!/bin/bash

# generate ssh keys
# this will save the keys in ~/.ssh in plaintext!
cat /dev/zero | ssh-keygen -q -N "" > /dev/null


# send the public key to the EC2 instance's authorized_keys file
pubkey=$(cat ~/.ssh/id_rsa.pub)
instance_id="i-XXXXXXXXXXXXXXXXX"
region="us-east-1"

cmd=$(cat<<EOF
echo $pubkey > /home/ubuntu/.ssh/authorized_keys
EOF
)

aws ssm send-command \
    --instance-ids $instance_id \
    --document-name "AWS-RunShellScript" \
    --parameters commands="$cmd" \
    --region $region