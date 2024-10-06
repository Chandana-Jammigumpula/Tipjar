# Tip Jar Contract

The **Tip Jar** contract is designed to collect tips or small donations from the public. It allows anyone to send Ether as a tip to the contract owner, who can later withdraw the accumulated funds.

## Purpose
- **Content Creators**: Bloggers, YouTubers, or streamers can use this contract to receive tips from their audience.
- **Public Projects**: Open-source projects can gather small donations to support ongoing development.
- **Community Support**: It can facilitate small contributions for community-driven initiatives or causes.

## Key Features
1. **Simplicity**: Minimal functionality focused solely on receiving and withdrawing tips.
2. **Transparency**: The `getTotalTips` function allows anyone to view the total tips received by the contract.
3. **Ownership Security**: Only the designated contract owner can withdraw the collected funds.

## Functionality
### 1. Ownership
The contract establishes an owner, typically the deployer, who is the only person with permission to withdraw tips from the contract.

### 2. Receiving Tips
Any user can send Ether to the contract as a tip by calling the `tip` function or simply sending Ether directly to the contract.

### 3. Withdrawal
Only the owner of the contract can withdraw the total accumulated tips by calling the `withdrawTips` function.

### 4. Balance Inquiry
The `getTotalTips` function allows anyone to check the total Ether tipped to the contract.

