resource "local_file" "foo" {
    for_each = {for file in var.files: file.filename => file }
    content  = each.value.content
    filename = each.value.filename
}
  
