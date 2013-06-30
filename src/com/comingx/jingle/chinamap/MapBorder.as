/*
* Copyright 2013 ComingX Jingle http://www.comingx.com
* 
* Licensed under the Apache License, Version 2.0 (the "License"); you may not
* use this file except in compliance with the License. You may obtain a copy of
* the License. You may obtain a copy of the License at
* 
*  http://www.apache.org/licenses/LICENSE-2.0
* 
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
* WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
* License for the specific language governing permissions and limitations under
* the License.
*/

package com.comingx.jingle.chinamap
{
	import flash.display.MovieClip;
	import flash.display.Shape;
	
	/**
	 * not used
	 * @todo set border color
	 */ 
	public class MapBorder extends MovieClip
	{
		private var _color:uint;
		private var _colorShape:Shape;
		public function MapBorder(color:uint = 0xffffff)
		{
			super();
			this._colorShape = new Shape();
			//MaskItem 省份遮罩，fla文件中处理
			this._colorShape.mask = this.getChildByName("MaskItem") as MovieClip;
			this.init(color);
			this.addChildAt(_colorShape,0);
			
		}
		
		public function init(color:uint = 0xffffff):void{
			this._color = color;
			this.fillColor(color);
		}
		
		public function fillColor(color:uint):void{
			this._colorShape.graphics.clear();
			this._colorShape.graphics.beginFill(color);
			this._colorShape.graphics.drawRect(0,0,this.width,this.height);
			this._colorShape.graphics.endFill();
		}
		
		public function get color():uint{
			return this._color;
		}
		
		public function set color(color:uint):void{
			this._color = color;
		}
	}
}