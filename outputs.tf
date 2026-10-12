output "semantic_views_lookup_id" {
  description = "Map of id values across all semantic_views_lookup, keyed the same as var.semantic_views_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_semantic_views.semantic_views_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "semantic_views_lookup_in" {
  description = "Map of in values across all semantic_views_lookup, keyed the same as var.semantic_views_lookup except keys with no in are omitted"
  value       = { for k, v in data.snowflake_semantic_views.semantic_views_lookup : k => one(v.in) if v.in != null && length(v.in) > 0 }
}
output "semantic_views_lookup_like" {
  description = "Map of like values across all semantic_views_lookup, keyed the same as var.semantic_views_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_semantic_views.semantic_views_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "semantic_views_lookup_limit" {
  description = "Map of limit values across all semantic_views_lookup, keyed the same as var.semantic_views_lookup except keys with no limit are omitted"
  value       = { for k, v in data.snowflake_semantic_views.semantic_views_lookup : k => one(v.limit) if v.limit != null && length(v.limit) > 0 }
}
output "semantic_views_lookup_semantic_views" {
  description = "Map of semantic_views values across all semantic_views_lookup, keyed the same as var.semantic_views_lookup except keys with no semantic_views are omitted"
  value       = { for k, v in data.snowflake_semantic_views.semantic_views_lookup : k => v.semantic_views if v.semantic_views != null && length(v.semantic_views) > 0 }
}
output "semantic_views_lookup_starts_with" {
  description = "Map of starts_with values across all semantic_views_lookup, keyed the same as var.semantic_views_lookup except keys with no starts_with are omitted"
  value       = { for k, v in data.snowflake_semantic_views.semantic_views_lookup : k => v.starts_with if v.starts_with != null && length(v.starts_with) > 0 }
}

