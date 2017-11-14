var Migrations = artifacts.require("./Migratrions.sol");

module.exports = function(deployer){
    deployer.deploy(Migrations);
};