// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
// import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract DadBod is ERC721, Ownable {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;
    // uint private price = 2;
    // string private notEnoughMessage = "Not enough MATIC sent; check price!";

    constructor() ERC721("DadBod", "BOD") {}

    function safeMint(address to) public onlyOwner {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
        // _setTokenURI(tokenId, uri);
    }

    // function mintToken(address to, string memory uri) public virtual payable {
  
    //     require(msg.value >= price, notEnoughMessage); 
    //     uint256 tokenId = _tokenIdCounter.current();
    //     _tokenIdCounter.increment();
    //     _safeMint(to, tokenId);

    //     _setTokenURI(tokenId, uri);
    // }
    
    // function getPrice() public view returns (uint) {
    //     return price;
    // }
    
    // function setPrice(uint _price) public onlyOwner {
    //     price = _price;
    // }

    // function getNotEnoughMessage() public view returns (string memory) {
    //     return notEnoughMessage;
    // }
    
    // function setNotEnoughMessage(string memory _message) public onlyOwner {
    //     notEnoughMessage = _message;
    // }

    // The following functions are overrides required by Solidity.

    // function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage) {
    //     super._burn(tokenId);
    // }

    // function tokenURI(uint256 tokenId)
    //     public
    //     view
    //     override(ERC721, ERC721URIStorage)
    //     returns (string memory)
    // {
    //     return super.tokenURI(tokenId);
    // }
}
