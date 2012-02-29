﻿package net.southernlabs.arti323.memorymadness.views {		import net.southernlabs.arti323.memorymadness.config.GameConfig;	import net.southernlabs.arti323.memorymadness.models.GameAchievements;		import flash.display.MovieClip;	import flash.events.MouseEvent;	import flash.system.fscommand;	import flash.events.Event;		public class GameOverView extends MovieClip {				private var score:GameAchievements = GameAchievements.getInstance();				public function GameOverView() {			// constructor code			play_again_mc.addEventListener(MouseEvent.CLICK, handlePlayAgain);			play_again_mc.buttonMode = true;			exit_mc.addEventListener(MouseEvent.CLICK, handleExit);			exit_mc.buttonMode = true;			score_txt.text = new String(score.getPoints());		}				public function handlePlayAgain(event:MouseEvent) {			trace("Do It AGAIN!");			stage.dispatchEvent(new Event(GameConfig.EVENT_ON_PLAY_GAME)); 		}				public function handleExit(event:MouseEvent):void {			trace("TERMINATION!");			fscommand("quit");		}	}	}