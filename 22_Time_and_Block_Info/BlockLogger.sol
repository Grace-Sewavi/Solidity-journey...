// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract BlockLogger {
    struct BlockInfo {
        uint256 blockNumber;
        uint256 time;
        uint256 difficulty;
        address miner;
        uint256 chainId;
    }

    BlockInfo[] public logs;

    function logBlockInfo() public {
        BlockInfo memory info = BlockInfo({
            blockNumber: block.number,
            time: block.timestamp,
            difficulty: block.difficulty,
            miner: block.coinbase,
            chainId: block.chainid
        });

        logs.push(info);
    }

    function getLog(uint256 index) public view returns (BlockInfo memory) {
        require(index < logs.length, "No log at that index.");
        return logs[index];
    }

    function totalLogs() public view returns (uint256) {
        return logs.length;
    }
}
