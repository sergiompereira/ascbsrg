package ascb.util {
	
	import flash.display.*;

	public class DisplayObjectUtilities {
		
		// Remove all of the children in a container
		public static function removeAllChildren( container:DisplayObjectContainer ):void {
			  
			// Because the numChildren value changes after every time we remove
			// a child, save the original value so we can count correctly
			var count:int = container.numChildren;
			
			// Loop over the children in the container and remove them
			for ( var i:int = 0; i < count; i++ ) {
				container.removeChildAt( 0 );
			}
		}
		
		//@ Sérgio Pereira :: 02-2009
		//remove o obj especificado
		public static function removeObj(container:DisplayObjectContainer, obj:DisplayObject):void {
			
			if(obj!=null && container.contains(obj)){
				container.removeChild(obj);
			}
			
		}
		
		//@ Sérgio Pereira :: 02-2009
		public static function deleteAllChildren( container:DisplayObjectContainer ):void {
			  
			// Because the numChildren value changes after every time we remove
			// a child, save the original value so we can count correctly
			var count:int = container.numChildren;
			
			// Loop over the children in the container and remove them
			for ( var i:int = 0; i < count; i++ ) {
				delete container.getChildAt(0);
				container.removeChildAt(0);
			}
		}
		
		//@ Sérgio Pereira :: 02-2009
		public static function centerObject(obj:DisplayObject, container:DisplayObjectContainer = null, area:Array = null, centerPoint:Boolean = true):void{
			var factor:int = 2;
			if(centerPoint == false){
				factor = 1;
			}
			
			if(area == null){
				obj.x = container.width/2 - obj.width/factor;
				obj.y = container.height/2 - obj.height/factor;
			}else{
				obj.x = area[0]/2 - obj.width/factor;
				obj.y = area[1]/2 - obj.height/factor;
			}
		}
		
	}
}