﻿package net.southernlabs.arti323.memorymadness.views {	import flash.display.MovieClip;	import flash.events.Event;	import flash.events.ProgressEvent;	import net.southernlabs.arti323.memorymadness.views.base.MenuInterface;		public class Preloader extends MovieClip implements MenuInterface {				private var bar:PreloadBar;		private var c:MovieClip;		public function Preloader(c:MovieClip, place:String) {						this.c = c;						// constructor code			// place preloader						bar = new PreloadBar();			this.c.addChild(bar);						this.c.loaderInfo.addEventListener(Event.COMPLETE, onCompleteHandler);			this.c.loaderInfo.addEventListener(ProgressEvent.PROGRESS, onProgressHandler);						trace("Loading "+place);					}				public function onCompleteHandler(e:Event){			//unload progress bar			trace("Welcome screen complete");			end();		}				public function onProgressHandler(e:Event){			var percent:Number = Math.floor((e.currentTarget.bytesLoaded/e.currentTarget.bytesTotal)*100);			bar.setProgress(percent);			trace("Loading%: "+percent);		}				public function end():void {			c.removeChild(bar);			c.loaderInfo.removeEventListener(Event.COMPLETE, onCompleteHandler);			c.loaderInfo.removeEventListener(ProgressEvent.PROGRESS, onProgressHandler);		}	}}