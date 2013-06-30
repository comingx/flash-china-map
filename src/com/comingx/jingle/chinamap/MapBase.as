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
	import com.comingx.jingle.chinamap.domains.InitData;
	import com.comingx.jingle.chinamap.domains.Province;
	
	import flash.display.MovieClip;
	import flash.display.Sprite;

	public class MapBase extends Sprite
	{
		public function MapBase()
		{
			super();
		}
		
		public function init(initData:InitData):void{
			if(initData != null){
				for each(var provinceData:Object in initData.provinceDataArray){
					var province:Province = new Province();
					province.id = provinceData.id;
					province.name = provinceData.name;
					var provinceItem:ProvinceItem = this.getChildByName(provinceData.name) as ProvinceItem;
					provinceItem.province = province;
					provinceItem.init(provinceData.color,provinceData.hoverColor);
					if(initData.isShowProvinceName == false){
						provinceItem.showProvinceName(false);
					}
				}
			}
		}
	}
}