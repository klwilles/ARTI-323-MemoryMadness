﻿package net.southernlabs.arti323.memorymadness {		import flash.display.MovieClip;	import net.southernlabs.arti323.memorymadness.controllers.Router;		public class Main extends MovieClip {				public var router:Router;		public function Main() {			router = new Router("welcome");		}	}	}