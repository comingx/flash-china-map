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
	import com.comingx.jingle.chinamap.domains.Province;
	import com.comingx.jingle.chinamap.events.ProvinceClickEvent;
	
	import flash.display.MovieClip;
	import flash.display.Shape;
	import flash.events.MouseEvent;
	import flash.ui.Mouse;
	import flash.ui.MouseCursor;
	
	public class ProvinceItem extends MovieClip
	{
		private var _color:uint;
		private var _hoverColor:uint;
		private var _colorShape:Shape;
		private var _province:Province;
		public function ProvinceItem(color:uint = 0xefefef, hoverColor:uint = 0xff0000)
		{
			super();
			this._colorShape = new Shape();
			//MaskItem 省份遮罩，fla文件中处理
			this._colorShape.mask = this.getChildByName("MaskItem") as MovieClip;
			this.init(color,hoverColor);
			this.addChildAt(_colorShape,0);
			this.addEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandler);
			this.addEventListener(MouseEvent.ROLL_OVER,rollOverHandler);
			this.addEventListener(MouseEvent.ROLL_OUT,rollOutHandler);
		}
		
		public function init(color:uint = 0xefefef, hoverColor:uint = 0xff0000):void{
			this._color = color;
			this._hoverColor = hoverColor;
			this.fillColor(this._color);
		}
		
		public function fillColor(color:int):void
		{
			this._colorShape.graphics.clear();
			this._colorShape.graphics.beginFill(color);
			this._colorShape.graphics.drawRect(0,0,this.width,this.height);
			this._colorShape.graphics.endFill();
		}
		
		public function showProvinceName(show:Boolean):void{
			if(show == false){
				(this.getChildByName("province_name") as MovieClip).visible = false;
			}else{
				(this.getChildByName("province_name") as MovieClip).visible = true;
			}
		}
		
		public function mouseDownHandler(evt:MouseEvent):void{
			var provinceClickEvent:ProvinceClickEvent = new ProvinceClickEvent(ProvinceClickEvent.PROVINCE_CLICK);
			provinceClickEvent.mouseEvent = evt;
			provinceClickEvent.province = this._province;
		}
		
		public function rollOverHandler(evt:MouseEvent):void{
			Mouse.cursor = MouseCursor.HAND;
			fillColor(this._hoverColor);
			
		}
		
		public function rollOutHandler(evt:MouseEvent):void{
			Mouse.cursor = MouseCursor.AUTO;
			fillColor(this._color);
		}
		
		public function get color():int
		{
			return this._color;
		}
		
		public function set color(color:int):void{
			this._color = color;	
		}
		
		public function get province():Province{
			return this._province;	
		}
		
		public function set province(province:Province):void{
			this._province = province;
		}
		
		public function get hoverColor():uint{
			return this._hoverColor;
		}
		
		public function set hoverColor(color:uint):void{
			this._hoverColor = color;
		}
	}
}