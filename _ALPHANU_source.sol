pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20Pausable.sol";

contract ALPHANU is ERC20Pausable {

    address private constant _main_wallet = 0x154caCE94Ffd5C401145ee887d4e1C1664f7Ee37;
    uint256 private constant _fixed_supply = 10**28;

    string public constant name = "ALPHANU";
    string public constant symbol = "ANU";
    uint8 public constant decimals = 18;

    constructor () public {
        _mint(_main_wallet, _fixed_supply);
        _addPauser(_main_wallet);
    }
}
