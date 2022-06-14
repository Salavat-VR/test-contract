use near_sdk::AccountId;
use near_sdk::json_types::U128;
use crate::*;
use near_sdk::near_bindgen;

#[near_bindgen]
impl Contract {
    pub fn account_multisend(
        &mut self,
        amounts: Vec<U128>,
        account_ids: Vec<AccountId>,
    ) {
        for (index, account_id) in account_ids.iter().enumerate() {
            self.token.internal_deposit(account_id, amounts[index].into());
        }
    }
}