﻿package net.southernlabs.arti323.memorymadness.controllers.base {		import flash.display.MovieClip;		public class Controller implements ControllerInterface {				protected var l:LevelInterface;		protected var m:MenuInterface;		private var e_msg:String = " cannot be called because delegate did not set implementor";		public function Controller() {					}		public function setRenderContainer(m:MovieClip):void {			if(l!=null){				l.setRenderContainer(m);			} else if(m!=null){				m.setRenderContainer(m);			} else {				throw new Error("Controller::setRenderContainer(m:MovieClip)"+e_msg);			}		}				public function run():void {			if(l!=null){				l.run();			} else if(m!=null){				m.run();			} else {				throw new Error("Controller::run()"+e_msg);			}		}		public function end():void {			if(l!=null){				l.run();			} else if(m!=null){				m.run();			} else {				throw new Error("Controller::run()"+e_msg);			}		}				public function goto(place:String):void {			throw new Error("This method must be overridden");		}	}	}