provider "azurerm" {
  features {
    resource_group {
      # Keeps lab teardown simple; real environments usually keep the default (true).
      prevent_deletion_if_contains_resources = false
    }
  }
}
