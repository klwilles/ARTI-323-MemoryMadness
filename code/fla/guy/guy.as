﻿package actionscript  {	import flash.display.*;	import flash.events.*;		public class guy extends MovieClip {					public function guy():void {			// constructor code									MrBob.headRegion.hat.visible = 0;			MrBob.headRegion.monocle.visible = 0;				//head items							MrBob.torsoFull.fullShirtTorso.visible = 0;			MrBob.armLeftUpper.shirtLeftUpper.visible = 0;			MrBob.armLeftLower.shirtLeftLower.visible = 0;			MrBob.armRightUpper.shirtRightUpper.visible = 0;			MrBob.armRightLower.shirtRightLower.visible = 0;				//shirt, sleeves							MrBob.torsoFull.tie.visible = 0;			MrBob.armLeftFull.gloveLeft.visible = 0;			MrBob.armRightFull.gloveRight.visible = 0;				//tie, gloves							MrBob.torsoFull.wallet.visible = 0;			MrBob.torsoFull.watch.visible = 0;			MrBob.torsoFull.keys.visible = 0;			MrBob.torsoFull.pen.visible = 0;			MrBob.torsoFull.keys.visible = 0;				//items tucked into shirt								MrBob.upperLegLeft.pantsLeftUpper.visible = 0;			MrBob.lowerLegLeft.pantsLeftLower.visible = 0;			MrBob.shoeFootLeft.shoeLeft.visible = 0;			MrBob.upperLegRight.pantsRightUpper.visible = 0;			MrBob.lowerLegRight.pantsRightLower.visible = 0;			MrBob.shoeFootRight.shoeRight.visible = 0;			MrBob.upperLegRight.brush.visible = 0;			MrBob.armRightFull.cane.visible = 0;				//pants, shoes, moustache brush, cane						MrBob.armLeftFull.brushInHand.visible = 0;			MrBob.armLeftFull.monocleInHand.visible = 0;			MrBob.armLeftFull.caneInHand.visible = 0;			MrBob.armLeftFull.tieInHand.visible = 0;			MrBob.armLeftFull.brushInHand.visible = 0;			MrBob.armLeftFull.watchInHand.visible = 0;			MrBob.armLeftFull.walletInHand.visible = 0;			MrBob.armLeftFull.keysInHand.visible = 0;			MrBob.armLeftFull.penInHand.visible = 0;			MrBob.armLeftFull.shoeLeftInHand.visible = 0;			MrBob.armLeftFull.shoeRightInHand.visible = 0;			MrBob.armLeftFull.hatInHand.visible = 0;				//items in left hand							stage.addEventListener(KeyboardEvent.KEY_DOWN, myKeyDown);			stage.addEventListener("onHeadHatPlacement", handleOnHatPlacement);			stage.addEventListener("onHeadMonoclePlacement", handleOnMonoclePlacement);			stage.addEventListener("onTorsoTiePlacement", handleOnTiePlacement);			stage.addEventListener("onTorsoShirtPlacement", handleOnShirtPlacement);			stage.addEventListener("onTorsoWalletPlacement", handleOnWalletPlacement);			stage.addEventListener("onTorsoPenPlacement", handleOnPenPlacement);			stage.addEventListener("onTorsoGlovePlacement", handleOnGlovePlacement);			stage.addEventListener("onLegsPantsPlacement", handleOnPantsPlacement);			stage.addEventListener("onLegsShoeLeftPlacement", handleOnShoeLeftPlacement);			stage.addEventListener("onLegsShoeRightPlacement", handleOnShoeRightPlacement);			stage.addEventListener("onHandCanePlacement", handleOnCanePlacement);			stage.addEventListener("onLegBrushPlacement", handleOnBrushPlacement);			stage.addEventListener("onTorsoWatchPlacement", handleOnWatchPlacement);			stage.addEventListener("onTorsoKeysPlacement", handleOnKeysPlacement);			//event listeners are all together so that they can be ready to go at any second, amirite?. :P			//trace("this part works");		}		//functions for visibility/ void means it won't return a value		public function handleOnHatPlacement(e:Event) {			MrBob.headRegion.hat.visible = 1;			MrBob.armLeftFull.hatInHand.visible = 0;			//stage.removeEventListener("onHeadHatPlacement", handleOnHatPlacement);		}				public function handleOnMonoclePlacement(e:Event) {			MrBob.headRegion.monocle.visible = 1;			MrBob.armLeftFull.monocleInHand.visible = 0;		}				public function handleOnTiePlacement(e:Event) {			MrBob.torsoFull.tie.visible = 1;			MrBob.armLeftFull.tieInHand.visible = 0;		}				public function handleOnShirtPlacement(e:Event) {			MrBob.torsoFull.fullShirtTorso.visible = 1;			MrBob.armLeftUpper.shirtLeftUpper.visible = 1;			MrBob.armLeftLower.shirtLeftLower.visible = 1;			MrBob.armRightUpper.shirtRightUpper.visible = 1;			MrBob.armRightLower.shirtRightLower.visible = 1;					}				public function handleOnWalletPlacement(e:Event) {			MrBob.torsoFull.wallet.visible = 1;			MrBob.armLeftFull.walletInHand.visible = 0;					}				public function handleOnPenPlacement(e:Event) {			MrBob.torsoFull.pen.visible = 1;			MrBob.armLeftFull.penInHand.visible = 0;					}				public function handleOnGlovePlacement(e:Event) {			MrBob.armLeftFull.gloveLeft.visible = 1;			MrBob.armRightFull.gloveRight.visible = 1;		}				public function handleOnPantsPlacement(e:Event) {			MrBob.upperLegLeft.pantsLeftUpper.visible = 1;			MrBob.lowerLegLeft.pantsLeftLower.visible = 1;			MrBob.upperLegRight.pantsRightUpper.visible = 1;			MrBob.lowerLegRight.pantsRightLower.visible = 1;		}				public function handleOnShoeLeftPlacement(e:Event) {			MrBob.shoeFootLeft.shoeLeft.visible = 1;			MrBob.armLeftFull.shoeLeftInHand.visible = 0;		}					public function handleOnShoeRightPlacement(e:Event) {			MrBob.shoeFootRight.shoeRight.visible = 1;			MrBob.armLeftFull.shoeRightInHand.visible = 0;		}				public function handleOnCanePlacement(e:Event) {			//MrBob.armRightFull.cane.visible = 1;			MrBob.armLeftFull.caneInHand.visible = 0;			MrBob.armRightFull.cane.visible = 1;		}				public function handleOnBrushPlacement(e:Event) {			MrBob.upperLegRight.brush.visible = 1;			MrBob.armLeftFull.brushInHand.visible = 0;		}				public function handleOnWatchPlacement(e:Event) {			MrBob.torsoFull.watch.visible = 1;			MrBob.armLeftFull.watchInHand.visible = 0;		}				public function handleOnKeysPlacement(e:Event) {			MrBob.torsoFull.keys.visible = 1;			MrBob.armLeftFull.keysInHand.visible = 0;		}				//key functions/void here stops the event from playing again by NOT returning a value.		public function myKeyDown(e:KeyboardEvent){						if (e.charCode == 97) {			//this is the "a" key.			MrBob.gotoAndPlay("hat");			MrBob.armLeftFull.hatInHand.visible = 1;		}				else if (e.charCode == 115) {			//this is the "s" key.			MrBob.gotoAndPlay("monocle");			MrBob.armLeftFull.monocleInHand.visible = 1;		}				else if (e.charCode == 100) {			//this is the "d" key. 			MrBob.gotoAndPlay("tie");			MrBob.armLeftFull.tieInHand.visible = 1;		}				else if (e.charCode == 102) {			//this is the "f" key.			MrBob.gotoAndPlay("suit");		}				else if (e.charCode == 103) {			//this is the "g" key.			MrBob.gotoAndPlay("wallet");			MrBob.armLeftFull.walletInHand.visible = 1;		}				else if (e.charCode == 104) {			//this is the "h" key.			MrBob.gotoAndPlay("pen");			MrBob.armLeftFull.penInHand.visible = 1;		}				else if (e.charCode == 106) {			//this kis the "j" key.			MrBob.gotoAndPlay("gloves");		}				else if (e.charCode == 107) {			//this is the "k" key.			MrBob.gotoAndPlay("pants");		}				else if (e.charCode == 108) {			//this is the "l" key.			MrBob.gotoAndPlay("shoes");			MrBob.armLeftFull.shoeLeftInHand.visible = 1;			MrBob.armLeftFull.shoeRightInHand.visible = 1;				}				else if (e.charCode == 122) {			//this is the "z" key.			MrBob.gotoAndPlay("cane");			MrBob.armLeftFull.caneInHand.visible = 1;		}				else if (e.charCode == 120) {			//this is the "x" key.			MrBob.gotoAndPlay("brush");			MrBob.armLeftFull.brushInHand.visible = 1;		}				else if (e.charCode == 99) {			//this is the "c" key.			MrBob.gotoAndPlay("watch");			MrBob.armLeftFull.watchInHand.visible = 1;		}				else if (e.charCode == 118) {			//suppose to be the "v" key			MrBob.gotoAndPlay("keys");			MrBob.armLeftFull.keysInHand.visible = 1;		}				}		}}