// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_add_coin(numCoin, method){
	global.numCrypto += numCoin
	global.totalCrypto += numCoin
	if(method = 0){
		global.numClicks ++;	
	}
}