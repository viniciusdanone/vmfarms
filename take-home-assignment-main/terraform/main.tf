terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.3"
    }
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "minikube"
}

resource "kubernetes_namespace" "vmfarms" {
  metadata {
    name = "vmfarms"
  }
}

resource "null_resource" "vmfarms" {
  provisioner "local-exec" {
    command = "kubectl apply -f app.yaml -n vmfarms"
  }
    depends_on = [
    kubernetes_namespace.vmfarms
  ]
}