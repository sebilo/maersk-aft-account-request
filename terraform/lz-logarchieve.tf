# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

module "lz_logarchieve_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "bilbaose+maersk-lzlogarchieve@amazon.es"
    AccountName  = "lz-logarchieve"
    ManagedOrganizationalUnit = "Security"
    SSOUserEmail     = "bilbaose+maersk-lzlogarchieve@amazon.es"
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
    change_reason       = "lz-logarchieve core account creation"
  }
  
  account_customizations_name = "core_account"
}