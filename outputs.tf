output "this_gpdb_elastic_id" {
  value = alicloud_gpdb_elastic_instance.default.id
}

output "this_db_id" {
  value = alicloud_db_instance.default.id
}

output "this_db_name" {
  value = alicloud_db_instance.default.instance_name
}
