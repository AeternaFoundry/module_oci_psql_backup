output "psql_backups_id" {
  description = "Map of id values across all psql_backups, keyed the same as var.psql_backups except keys with no id are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "psql_backups_backup_size" {
  description = "Map of backup_size values across all psql_backups, keyed the same as var.psql_backups except keys with no backup_size are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => v.backup_size if v.backup_size != null }
}
output "psql_backups_compartment_id" {
  description = "Map of compartment_id values across all psql_backups, keyed the same as var.psql_backups except keys with no compartment_id are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "psql_backups_copy_status" {
  description = "Map of copy_status values across all psql_backups, keyed the same as var.psql_backups except keys with no copy_status are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => v.copy_status if v.copy_status != null && length(v.copy_status) > 0 }
}
output "psql_backups_db_system_details" {
  description = "Map of db_system_details values across all psql_backups, keyed the same as var.psql_backups except keys with no db_system_details are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => v.db_system_details if v.db_system_details != null && length(v.db_system_details) > 0 }
}
output "psql_backups_db_system_id" {
  description = "Map of db_system_id values across all psql_backups, keyed the same as var.psql_backups except keys with no db_system_id are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => v.db_system_id if v.db_system_id != null && length(v.db_system_id) > 0 }
}
output "psql_backups_defined_tags" {
  description = "Map of defined_tags values across all psql_backups, keyed the same as var.psql_backups except keys with no defined_tags are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "psql_backups_description" {
  description = "Map of description values across all psql_backups, keyed the same as var.psql_backups except keys with no description are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => v.description if v.description != null && length(v.description) > 0 }
}
output "psql_backups_display_name" {
  description = "Map of display_name values across all psql_backups, keyed the same as var.psql_backups except keys with no display_name are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "psql_backups_freeform_tags" {
  description = "Map of freeform_tags values across all psql_backups, keyed the same as var.psql_backups except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "psql_backups_kms_key_id" {
  description = "Map of kms_key_id values across all psql_backups, keyed the same as var.psql_backups except keys with no kms_key_id are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "psql_backups_last_accepted_request_token" {
  description = "Map of last_accepted_request_token values across all psql_backups, keyed the same as var.psql_backups except keys with no last_accepted_request_token are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => v.last_accepted_request_token if v.last_accepted_request_token != null && length(v.last_accepted_request_token) > 0 }
}
output "psql_backups_last_completed_request_token" {
  description = "Map of last_completed_request_token values across all psql_backups, keyed the same as var.psql_backups except keys with no last_completed_request_token are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => v.last_completed_request_token if v.last_completed_request_token != null && length(v.last_completed_request_token) > 0 }
}
output "psql_backups_lifecycle_details" {
  description = "Map of lifecycle_details values across all psql_backups, keyed the same as var.psql_backups except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "psql_backups_retention_period" {
  description = "Map of retention_period values across all psql_backups, keyed the same as var.psql_backups except keys with no retention_period are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => v.retention_period if v.retention_period != null }
}
output "psql_backups_source_backup_details" {
  description = "Map of source_backup_details values across all psql_backups, keyed the same as var.psql_backups except keys with no source_backup_details are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => one(v.source_backup_details) if v.source_backup_details != null && length(v.source_backup_details) > 0 }
}
output "psql_backups_source_type" {
  description = "Map of source_type values across all psql_backups, keyed the same as var.psql_backups except keys with no source_type are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => v.source_type if v.source_type != null && length(v.source_type) > 0 }
}
output "psql_backups_state" {
  description = "Map of state values across all psql_backups, keyed the same as var.psql_backups except keys with no state are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => v.state if v.state != null && length(v.state) > 0 }
}
output "psql_backups_system_tags" {
  description = "Map of system_tags values across all psql_backups, keyed the same as var.psql_backups except keys with no system_tags are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "psql_backups_time_created" {
  description = "Map of time_created values across all psql_backups, keyed the same as var.psql_backups except keys with no time_created are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "psql_backups_time_created_precise" {
  description = "Map of time_created_precise values across all psql_backups, keyed the same as var.psql_backups except keys with no time_created_precise are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => v.time_created_precise if v.time_created_precise != null && length(v.time_created_precise) > 0 }
}
output "psql_backups_time_updated" {
  description = "Map of time_updated values across all psql_backups, keyed the same as var.psql_backups except keys with no time_updated are omitted"
  value       = { for k, v in oci_psql_backup.psql_backups : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

