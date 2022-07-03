/// @description Insert description here
// You can write your code in this editor

global.numClicks = 0
global.totalCrypto = 0

global.numCrypto = 0
global.buttonValue = 1






global.mouseCost = 1
global.numMice = 0
global.micePower = 0.1

global.blockchainCost = 2
global.numBlockchain = 0
global.blockchainPower = 0.2

global.gpuCost = 5
global.numGPUs = 0
global.gpuPower = 0.5

global.cryptoPerSecond = 0

enum buildingStats {
	BASECOST,
	COSTINCREASE,
	BASEVALUE
}
enum buildingNames {
	MOUSE,
	BLOCKCHAIN,
	GPU
}

global.buildingStats = [[1, 1.1, .5],
						[2, 1.2, 2],
						[5, 1.3, 5.5]]
						
global.buildingsOwned = [0,0,0]


