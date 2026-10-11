variable "psql_backups" {
  description = <<EOT
Map of psql_backups, attributes below
Required:
    - compartment_id
Optional:
    - db_system_id
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - retention_period
    - source_backup_details (block):
        - source_backup_id (required)
        - source_region (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id   = string
    db_system_id     = optional(string)
    defined_tags     = optional(map(string))
    description      = optional(string)
    display_name     = optional(string)
    freeform_tags    = optional(map(string))
    retention_period = optional(number)
    source_backup_details = optional(object({
      source_backup_id = string
      source_region    = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

