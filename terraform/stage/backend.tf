terraform {
    backend "s3" {
        endpoint   = "storage.yandexcloud.net"
        bucket     = "mksm-bucket-home-test"
        region     = "ru-central1"
        key        = "test/terraform/stage/stage.tfstate"
        access_key = "*"
        secret_key = "*"
        skip_region_validation      = true
        skip_credentials_validation = true
  }
}
