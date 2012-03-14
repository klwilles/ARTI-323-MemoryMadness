﻿package net.southernlabs.arti323.memorymadness.views {		import net.southernlabs.arti323.memorymadness.config.GameConfig;	import net.southernlabs.arti323.memorymadness.views.base.MenuInterface;	import flash.display.MovieClip;	import flash.events.MouseEvent;	import flash.events.Event;		public class WelcomeView extends MovieClip implements MenuInterface {		private var is_info_showing :Boolean=false;		public function WelcomeView() {			// constructor code						trace("Welcome View constructed");						play_mc.addEventListener(MouseEvent.CLICK, handlePlay);			information_mc.addEventListener(MouseEvent.CLICK, handleMoreInfo);			play_mc.buttonMode = true;			information_mc.buttonMode = true;								}				public function handlePlay(e:MouseEvent){			trace("play the game");			stage.dispatchEvent(new Event(GameConfig.EVENT_ON_PLAY_GAME)); 		}						public function handleMoreInfo(e:MouseEvent){			if (is_info_showing){				gotoAndPlay(36);				is_info_showing=false;			}			else{				gotoAndPlay(2);				is_info_showing=true;			}		}				public function end():void {			// clean up		}	}	}