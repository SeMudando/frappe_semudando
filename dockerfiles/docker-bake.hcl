variable "ERPNEXT_VERSION" {}
variable "SEMUDANDO_VERSION" {}

group "default" {
    targets = ["erpnext"]
}

target "erpnext" {
    dockerfile = "erpnext.Dockerfile"
    tags = ["semudando/erpnext:latest", "semudando/erpnext:${SEMUDANDO_VERSION}"]
    args = {
      "ERPNEXT_VERSION" = ERPNEXT_VERSION
    }
}
