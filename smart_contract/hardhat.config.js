//https://eth-goerli.g.alchemy.com/v2/WuQyq4s5yKcYjfuh2LpnmHzqwpewPd-9

require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity: '0.8.0',
  networks: {
    goerli: {
      url: 'https://eth-goerli.g.alchemy.com/v2/WuQyq4s5yKcYjfuh2LpnmHzqwpewPd-9',
      accounts: ['afddb713eb0312589f718488d326448880108efc696dd337ee3437e862563b36'],
    },
  },
};
 
