Vagrant.configure("2") do |config|
  config.vm.box = "dummy"
  config.vm.synced_folder '.', '/vagrant', disabled: true

  config.vm.provider :aws do |aws, override|
    aws.access_key_id = ACCCESS_KEY_ID
    aws.secret_access_key = SECRET_ACCESS_KEY
    aws.session_token = SESSION_TOKEN
    aws.keypair_name = KEYPAIR
    aws.region = "us-east-2"
    aws.ami = "ami-922914f7"
    aws.instance_type= "t2.micro"
    aws.security_groups=['launch-wizard-4']
    #aws.associate_public_ip = true
    override.ssh.username = "ec2-user"
    override.ssh.private_key_path = "/home/chriswang/Desktop/chrispoc.pem"
    override.nfs.functional = false
  end
end

