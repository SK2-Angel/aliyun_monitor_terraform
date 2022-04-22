// use-case-iac-unittest
variable "target_account_id" {
  description = "Target account id"
  type        = string
  default     = "1041484348"

  validation {
    condition     = length(var.target_account_id) == 10
    error_message = "The target_account_id value must be a valid account id."
  }
}

variable "contact_web_hook_url" {
  description = "URL of contact web hook"
  type        = string
  default     = "http://www.google.com"
}

variable "contact_group_name" {
  type    = string
  default = "default_contact_group"
}

variable "first_contact" {
  type = object({
    mail = string
    sms  = string
    lang = string
  })
  default = {
    mail = "testxxxx@163.com"
    sms  = "12388888888"
    lang = "zh-cn"
  }
}

variable "second_contact" {
  type = object({
    mail = string
    sms  = string
    lang = string
  })
  default = {
    mail = "testxxxxxxx@163.com"
    sms  = "12388888888"
    lang = "zh-cn"
  }
}
