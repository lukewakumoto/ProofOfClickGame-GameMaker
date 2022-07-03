/// @description Insert description here
// You can write your code in this editor
buttonWidth = 250
buttonHeight = 100

mice_button = instance_create_layer(500,100,"Instances",obj_button)
with (mice_button){
	button_width = other.buttonWidth
	button_height = other.buttonHeight
	buttonText = "Mice"
	buttonImage = spr_mouse
	buttonCost = global.mouseCost
	onClick = function(){
		if (global.numCrypto >= global.mouseCost){
			global.numCrypto -= global.mouseCost
			global.mouseCost = global.buildingStats[buildingNames.MOUSE][buildingStats.BASECOST]
			* (power(global.buildingStats[buildingNames.MOUSE][buildingStats.COSTINCREASE],global.numMice))
			global.numMice += 1
			numberOwned = global.numMice 
			buttonCost = global.mouseCost
		}
		
	}
}


blockchain_button = instance_create_layer(500,200,"Instances",obj_button)
with (blockchain_button){
	button_width = other.buttonWidth
	button_height = other.buttonHeight
	buttonText = "The Blockchain"
	buttonImage = spr_blockChain
	buttonCost = global.blockchainCost
	onClick = function(){
		if (global.numCrypto >= global.blockchainCost){
			global.numCrypto -= global.blockchainCost
			global.blockchainCost = global.buildingStats[buildingNames.BLOCKCHAIN][buildingStats.BASECOST]
			* (power(global.buildingStats[buildingNames.BLOCKCHAIN][buildingStats.COSTINCREASE],global.numBlockchain))
			global.numBlockchain += 1
			numberOwned = global.numBlockchain
			buttonCost = global.blockchainCost	
		}
		
	}
}


gpu_button = instance_create_layer(500,300,"Instances",obj_button)
with (gpu_button){
	button_width = other.buttonWidth
	button_height = other.buttonHeight
	buttonText = "GTX 3080 GPU"
	buttonImage = spr_gpu
	buttonCost = global.gpuCost
	onClick = function(){
		if (global.numCrypto >= global.gpuCost){
			global.numCrypto -= global.gpuCost
			global.numGPUs += 1
			global.gpuCost = global.buildingStats[buildingNames.BLOCKCHAIN][buildingStats.BASECOST]
			* (power(global.buildingStats[buildingNames.BLOCKCHAIN][buildingStats.COSTINCREASE],global.numGPUs))
			numberOwned = global.numGPUs
			buttonCost = global.gpuCost	
		}
		
	}
}

