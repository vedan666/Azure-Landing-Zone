variable "rg" {
  description = "A map of Resource Groups to create, where key is the RG identifier and value contains name and location."
  type = map(object(
    {
      name     = string
      location = string
    }
    )
  )
}
