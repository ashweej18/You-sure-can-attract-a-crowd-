# **You sure can attract a crowd**

![crowd](Images/crowd.jpeg)

----
## **Background**

The company has decided to crowdsale their PupperCoin token in order to help fund the network development.This network will be used to track dog breeding activity across the globe in a decentralized way, and allow humans to track the genetic trail of their pets. The company has already worked with the necessary legal bodies and obtained the green light on creating a crowdsale open to the public. 

---
## **Objective**
To create a CrowdSale contract that will available to public for a period of 24 weeks. The contract is  required to enable refunds if the crowdsale is successful and the goal is met, and you are only allowed to raise a maximum of 300 ether. The crowdsale will run for 24 weeks.

This crowdsale contract will manage the entire process, allowing users to send ETH and get back PPC (PupperCoin).
This contract will mint the tokens automatically and distribute them to buyers in one transaction.

---
## **Technologies/Tools/Libraries**
* Solidity
* OpenZeppelin Solidity library
* Metamask
---
## **Code Files**
* [PupperCoin](PupperCoin.sol) </br>
* [CrowdSale](Crowdsale.sol)

---
## **Outputs**
1. PupperCoin.sol
    ![PupperCoin](Outputs/PupperCoin.png)
2. CrowdSale.sol
    ![CrowdSale](Outputs/CrowdSale.png)
3. Testing the contract </br>
    For testing the contract, the crowdsale duration was set to 3 minutes, in the contract that was deployed to Ropsten network the crowdsale close is set to 24 weeks.
    * Compiling the Crowdsale.sol
        ![Test 1](Output/compile_crowdsale.png) </br>
    * Contract deployment on local blockchain 
        ![deploy1](Output/Contract_deployment_1.png) </br>

        ![deploy2](Output/contract_deployment_2.png) </br>

        `Name of Token` : `PupperCoin` </br>
        `Symbol` : `PPC` </br>
        `Wallet`: `0x61C68CF13cE6799011034240297AF75af1224B11` </br>
        `Goal`: `1000000000000000000`  (set to 10^18 wei ie 1 ETH) </br>

        ![deploy3](Output/contract_deployment_3.png)   </br>

    * Buy Token of 1 ETH ie 10^18 wei for the wallet address `0x61C68CF13cE6799011034240297AF75af1224B11` </br>
        ![buy_token1](Output/buy_token_0.png) </br>
        ![buy_token1](Output/buy_token_1.png) </br>
        ![buy_token1](Output/buy_token_2.png) </br>

    * Closing the Crowdsale 
        ![crowd_sale_status1](Output/crowdsale_status_2.png) </br>
        ![crowd_sale_status2](Output/crowdsale_status_3.png) </br>

    We can that the goal of crowdsale has been reached ie Goal reached= true ; wei raised = 10^18 wei. <br> 
    
    By sending ether to another account on local blockchain,we ahead the block time. This is required to increase block time on local blockchain (Not required on the Ropsten Network,as blocks are continously added to the network)
        ![send_ether](Output/send_ether.png) </br>

    * Finalize the Crowdsale </br>
   
        ![final](Output/Finalize_crowdsale_1.png) </br>

        ![finalize2](Output/Finalize_crowdsale_2.png) </br>

    * Withdraw the PPC tokens from the smart contract to the wallets </br>

        ![withdraw1](Output/Withdraw_token_wallet_1.png) </br>

        ![withdraw2](Output/Withdraw_token_wallet_2.png) </br>

    * Import PPC Token to the wallet

        ![import1](Output/Import_token_success_1.png) </br>

        ![import2](Output/Import_token_success_2.png) </br>

    * Send token to another wallet `Account3` : `0xA02Ab394a19E79bB33DD13AD5854d1a69C9E7317`

        ![import1](Output/Send_token_Account3_1.png) </br>

        ![import1](Output/Send_token_Account3_3.png) </br>    
    

4. Contract Deployment on to Ropsten Network
    ![Ropsten](Output/Ropsten_deployment.png) 

    ![Etherscan](Output/Etherscan.png) 
   

   


