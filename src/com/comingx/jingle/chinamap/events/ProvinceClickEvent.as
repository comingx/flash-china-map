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

package com.comingx.jingle.chinamap.events
{
	import com.comingx.jingle.chinamap.domains.Province;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class ProvinceClickEvent extends Event
	{
		public static var PROVINCE_CLICK:String = "province_click";
		//the original MouseEvent sent to the outer container
		public var mouseEvent:MouseEvent;
		//province is the province clicked, it will be sent to the outer container
		public var province:Province;
		public function ProvinceClickEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}