variable "FRAPPE_VERSION" {}
variable "ERPNEXT_VERSION" {}
variable "SEMUDANDO_VERSION" {}

group "default" {
    targets = ["backend", "frontend"]
}

target "backend" {
    dockerfile = "backend.Dockerfile"
    tags = ["semudando/frappe-worker:latest", "semudando/frappe-worker:${SEMUDANDO_VERSION}"]
    args = {
      "ERPNEXT_VERSION" = ERPNEXT_VERSION
    }
}

target "frontend" {
    dockerfile = "frontend.Dockerfile"
    tags = ["semudando/frappe-nginx:latest", "semudando/frappe-nginx:${SEMUDANDO_VERSION}"]
    args = {
      "FRAPPE_VERSION" = FRAPPE_VERSION
      "ERPNEXT_VERSION" = ERPNEXT_VERSION
    }
}
