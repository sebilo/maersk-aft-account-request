# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

module "lz_automation_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "bilbaose+maersk-lzautomation@amazon.es"
    AccountName  = "lz-automation"
    ManagedOrganizationalUnit = "Shared Infra Service (ou-zr7y-lnenmry9)"
    SSOUserEmail     = "bilbaose+maersk-lzautomation@amazon.es"
    SSOUserFirstName = " "
    SSOUserLastName  = " "
  }

  account_tags = {
    "AccountType"       = "core"
    "CreationDate"      = "08-01-2025"
    "CreatedBy"         = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Sergio Bilbao"
    change_reason       = "lz-automation core account creation"
  }
  
  account_customizations_name = "core_account"
}