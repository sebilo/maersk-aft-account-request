# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

module "lz_organization_management_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "bilbaose+maersk-orgmgnt@amazon.es"
    AccountName  = "maersk-organization-management"
    ManagedOrganizationalUnit = "Root"
    SSOUserEmail     = "bilbaose+maersk-orgmgnt@amazon.es"
    SSOUserFirstName = " "
    SSOUserLastName  = " "
  }

  account_tags = {
    "AccountType"       = "core"
    "CreationDate"      = "07-26-2025"
    "CreatedBy"         = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Sergio Bilbao"
    change_reason       = "maersk-organization-management core account creation"
  }
  
  account_customizations_name = "core_account"
}