data "kion_ou" "parent" {
  count = can(tonumber(var.parent_ou_id)) ? 0 : 1
  filter {
    name   = "name"
    values = [var.parent_ou_id]
  }
}

resource "kion_ou" "this" {
  name                 = var.name
  parent_ou_id         = can(tonumber(var.parent_ou_id)) ? var.parent_ou_id : data.kion_ou.parent[0].list[0].id
  permission_scheme_id = var.permission_scheme_id
  description          = var.description
  labels               = var.labels

  dynamic "owner_user_groups" {
    for_each = var.owner_user_groups
    content {
      id = owner_user_groups.value
    }
  }

  dynamic "owner_users" {
    for_each = var.owner_users
    content {
      id = owner_users.value
    }
  }
}
