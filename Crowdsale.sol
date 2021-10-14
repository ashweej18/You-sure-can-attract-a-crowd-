pragma solidity ^0.5.5;

import "./PupperCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/TimedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/distribution/RefundablePostDeliveryCrowdsale.sol";

// @TODO: Inherit the crowdsale contracts
contract PupperCoinSale is Crowdsale,MintedCrowdsale,CappedCrowdsale,TimedCrowdsale,RefundablePostDeliveryCrowdsale {

    constructor(
        uint rate, //rate  in TKNbits
        address payable wallet, //sale beneficiary
        PupperCoin token, //Puppercoin itself that Crowdsale will work with
        uint goal, //goal for crowdsale
        uint open,
        uint close 
        
    )
        Crowdsale(rate, wallet, token)
        CappedCrowdsale(goal)
        TimedCrowdsale(open, close)
        RefundableCrowdsale(goal)
        
        public
    {
        // constructor can stay empty
    }
}

contract PupperCoinSaleDeployer {

    address public token_sale_address;
    address public token_address;
    uint public fakenow  = now;
    uint rate =1;
    
    // permanently store the crowdsale open and set the close date to 24 weeks from now
    uint public open_date = now;
    uint close_date = open_date + 24 weeks;

    constructor(
       string memory name,
       string memory symbol,
       address payable wallet, // this address will receive all Ether raised by the sale
       uint goal
    )
       public
    {
       
        // create the ArcadeToken and keep its address handy
        PupperCoin pupper_tokens = new PupperCoin(name, symbol, 0);
        token_address = address(pupper_tokens);


        // create the PupperCoinSale and tell it about the token, set the goal, and set the open and close times to now and now + 24 weeks.
        
        PupperCoinSale pupper_sale = new PupperCoinSale(rate, wallet, pupper_tokens, goal, open_date, close_date);
        token_sale_address = address(pupper_sale);


        // make the PupperCoinSale contract a minter, then have the PupperCoinSaleDeployer renounce its minter role
        pupper_tokens.addMinter(token_sale_address);
        pupper_tokens.renounceMinter();
    }
}
