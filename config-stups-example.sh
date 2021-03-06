# ssh keypair for installation
#TODO generate on the fly and clean up later
keypair="jdoe"

# region
region="eu-west-1"

# base AMI (Ubuntu 14.04 LTS)
base_ami="ami-accff2b1"

instance_type="t2.small"

config_dir=$(dirname $1)
secret_dir="$config_dir/secret"

# AWS accounts to share the AMI with
accounts="
123456789
123456788
"

# AWS regions to copy the AMI to
copy_regions="
eu-central-1
"

# security group with SSH and HTTP open
security_group="sg-123456"

# subnet to use:
subnet="subnet-123456"

# HipChat notification when AMI is built
hipchat_notification_enabled=false
hipchat_server_address="chat.example.org"
hipchat_room_id="notifications" # Room ID (the room name)
hipchat_auth_token="" # Auth token for the HipChat room
hipchat_message="[Taupage] AMI $ami_name ($imageid) successfully created and shared."
