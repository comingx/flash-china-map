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

package com.comingx.jingle.chinamap.domains
{
	public class InitData extends Object
	{
		private var _isShowProvinceName:Boolean = true;
		private var _provinceDataArray:Array;
		private var _borderColor:uint = 0xffffff;
		
		public function InitData()
		{
			super();
		}
		
		public function get provinceDataArray():Array{
			return this._provinceDataArray;
		}
		
		public function set provinceDataArray(data:Array):void{
			this._provinceDataArray = data;
		}
		
		public function get borderColor():uint{
			return this._borderColor;
		}
		
		public function set borderColor(color:uint):void{
			this._borderColor = color;
		}
		
		public function get isShowProvinceName():Boolean{
			return this._isShowProvinceName;
		}
		
		public function set isShowProvinceName(show:Boolean):void{
			this._isShowProvinceName = show;
		}
	}
}