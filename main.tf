module "palworld" {
  source = "TheSudoYT/palworld/aws"

  instance_type     = "t3.xlarge"
  create_ssh_key    = true
  ssh_public_key    = "palworld-ssh.pub"

  use_custom_palworldsettings = true
  custom_palworldsettings_s3  = true
  palworldsettings_ini_path   = "./assets/config/PalWorldSettings.ini"
}
