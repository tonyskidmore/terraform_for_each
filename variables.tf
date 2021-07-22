variable "files" {
  type = list(object({
    content  = string
    filename =  string
  }))
}
