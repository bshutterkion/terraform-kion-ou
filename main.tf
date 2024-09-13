resource "kion_ou" "this" {
  name                 = var.name
  parent_ou_id         = var.parent_ou_id
  permission_scheme_id = var.permission_scheme_id
  description          = var.description
  labels               = var.labels

  dynamic "owner_user_groups" {
    for_each = var.owner_user_groups
    content {
      id = owner_user_groups.value.id
    }
  }

  dynamic "owner_users" {
    for_each = var.owner_users
    content {
      id = owner_users.value.id
    }
  }
}
