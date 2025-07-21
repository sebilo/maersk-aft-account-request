# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

module "lz_identity_core_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "bilbaose+maersk-lzidentity@amazon.es"
    AccountName  = "lz-identity"
    ManagedOrganizationalUnit = "Cyber (ou-zr7y-ze0m96e7)"
    SSOUserEmail     = "bilbaose+maersk-lzidentity@amazon.es"
    SSOUserFirstName = " "
    SSOUserLastName  = " "
  }

  account_tags = {
    "AccountType"       = "core"
    "CreationDate"      = "07-21-2025"
    "CreatedBy"         = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Sergio Bilbao"
    change_reason       = "lz-identity core account creation"
  }
  
  account_customizations_name = "core_account"
}