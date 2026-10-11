resource "oci_psql_backup" "psql_backups" {
  for_each = var.psql_backups

  compartment_id   = each.value.compartment_id
  db_system_id     = each.value.db_system_id
  defined_tags     = each.value.defined_tags
  description      = each.value.description
  display_name     = each.value.display_name
  freeform_tags    = each.value.freeform_tags
  retention_period = each.value.retention_period

  dynamic "source_backup_details" {
    for_each = each.value.source_backup_details != null ? [each.value.source_backup_details] : []
    content {
      source_backup_id = source_backup_details.value.source_backup_id
      source_region    = source_backup_details.value.source_region
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

