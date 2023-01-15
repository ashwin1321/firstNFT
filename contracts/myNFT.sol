// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract myNFT is ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;             // getting counter lirary

    Counters.Counter private _tokenIds;              // creating counter

    constructor() ERC721("myNFT", "ARS") {     // creating NFT name and symbol

    }      

    function mintNFT(address recipient, string memory tokenURI) public onlyOwner returns(uint256) {
           
            _tokenIds.increment();             // incrementing counter

            uint256 newItemId = _tokenIds.current();     // getting current counter value

            _mint(recipient, newItemId);                // minting NFT
            _setTokenURI(newItemId, tokenURI);          // setting tokenURI

            return newItemId;                           // returning NFT id
    }

}