module "palworld" {
  source = "TheSudoYT/palworld/aws"

  instance_type     = "t3.xlarge"
  create_ssh_key    = true
  ssh_public_key    = "palworld-ssh.pub"
  start_from_backup = true

  backup_files_storage_type       = "local"
  backup_files_local_path         = "./assets/61862B4A464ECD23A94B96BE1374EF3A"
  create_backup_s3_bucket         = true
  s3_bucket_backup_retention      = 7
  backup_s3_bucket_arn            = ""
  backup_s3_bucket_name           = ""
  backup_interval_cron_expression = "*/5 * * * *"
  dedicated_server_name_hash      = "61862B4A464ECD23A94B96BE1374EF3A"

  use_custom_palworldsettings = true
  custom_palworldsettings_s3  = true
  palworldsettings_ini_path   = "./assets/config/PalWorldSettings.ini"
}
