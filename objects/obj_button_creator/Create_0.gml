/// @description Insert description here
// You can write your code in this editor
buttonWidth = 250
buttonHeight = 100

gpu_button = instance_create_layer(500,100,"Instances",obj_button)
with (gpu_button){
	button_width = other.buttonWidth
	button_height = other.buttonHeight
	buttonText = "GTX 3080 GPU"
	buttonImage = spr_gpu
	buttonCost = global.gpuCost
	onClick = function(){
		if (global.numCrypto >= global.gpuCost){
			global.numCrypto -= global.gpuCost
			global.gpuCost *= 1.1
			global.numGPUs += 1
			numberOwned = global.numGPUs
			buttonCost = global.gpuCost	
		}
		
	}
}
