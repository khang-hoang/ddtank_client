package gameStarling.objects
{
   import bones.BoneMovieFactory;
   import bones.display.BoneMovieStarling;
   import com.pickgliss.utils.StarlingObjectUtils;
   import ddt.manager.SoundManager;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import gameCommon.GameControl;
   import gameCommon.model.Living;
   import gameCommon.model.LocalPlayer;
   import gameCommon.objects.GhostBoxModel;
   import gameCommon.view.smallMap.SmallBox;
   import road7th.StarlingMain;
   import room.RoomManager;
   import starling.display.DisplayObjectContainer;
   import starling.display.Image;
   import starlingPhy.object.PhysicalObj3D;
   
   public class SimpleBox3D extends SimpleObject3D
   {
       
      
      private var _dieMC:BoneMovieStarling;
      
      private var _box:Image;
      
      private var _ghostBox:BoneMovieStarling;
      
      private var _isGhostBox:Boolean;
      
      private var _subType:int = 0;
      
      private var _localVisible:Boolean = true;
      
      private var _constainer:DisplayObjectContainer;
      
      private var _self:LocalPlayer;
      
      private var _visible:Boolean = true;
      
      public function SimpleBox3D(param1:int, param2:String, param3:int = 1)
      {
         _subType = param3;
         _self = GameControl.Instance.Current.selfGamePlayer;
         super(param1,1,param2,"");
         this.x = x;
         this.y = y;
         _canCollided = true;
         if(isGhost)
         {
            setCollideRect(-8,-8,16,16);
         }
         else
         {
            setCollideRect(-15,-15,30,30);
         }
         _smallBox = new SmallBox();
         _isGhostBox = false;
         if(isGhost)
         {
            visible = !_self.isLiving;
            _canCollided = !_self.isLiving;
            if(_smallMapView)
            {
               _smallMapView.visible = false;
            }
         }
         else if(_smallMapView)
         {
            visible = _self.isLiving;
            _canCollided = _self.isLiving;
            _smallMapView.visible = _self.isLiving;
         }
         addEvent();
      }
      
      override public function get layer() : int
      {
         if(_isGhostBox)
         {
            return 3;
         }
         return super.layer;
      }
      
      private function addEvent() : void
      {
         _self.addEventListener("die",__onSelfPlayerDie);
         _self.addEventListener("livingRevive",__onSelfPlayerRevive);
      }
      
      private function __click(param1:MouseEvent) : void
      {
         if(parent)
         {
            parent.setChildIndex(this,parent.numChildren - 1);
         }
      }
      
      private function removeEvent() : void
      {
         _self.removeEventListener("die",__onSelfPlayerDie);
         _self.removeEventListener("livingRevive",__onSelfPlayerRevive);
         removeEventListener("click",__click);
      }
      
      public function get isGhost() : Boolean
      {
         return _subType > 1;
      }
      
      public function get subType() : int
      {
         return _subType;
      }
      
      public function get psychic() : int
      {
         return GhostBoxModel.getInstance().getPsychicByType(_subType);
      }
      
      protected function setIsGhost(param1:Boolean) : void
      {
         if(param1 == _isGhostBox)
         {
            return;
         }
         _isGhostBox = param1;
         if(!_isGhostBox == GameControl.Instance.Current.selfGamePlayer.isLiving)
         {
            this.visible = true;
         }
         else
         {
            this.visible = false;
         }
      }
      
      public function pickByLiving(param1:Living) : void
      {
         param1.pick(this);
         if(!_self.isLiving)
         {
            SoundManager.instance.play("018");
         }
         die();
      }
      
      override protected function creatMovie(param1:String) : void
      {
         if(isGhost)
         {
            _ghostBox = BoneMovieFactory.instance.creatBoneMovie("bonesGameGhostBox" + (_subType - 1));
            _ghostBox.touchable = false;
            _ghostBox.visible = isGhost;
            var _loc2_:int = 4;
            _ghostBox.y = _loc2_;
            _ghostBox.x = _loc2_;
            _ghostBox.play("stand");
            addChild(_ghostBox);
         }
         else
         {
            _box = StarlingMain.instance.createImage("asset.game.simpleBoxPicAsset" + param1);
            _box.x = -_box.width >> 1;
            _box.y = -_box.height >> 1;
            addChild(_box);
         }
      }
      
      public function setContainer(param1:DisplayObjectContainer) : void
      {
         _constainer = param1;
         if(super.visible)
         {
            if(isGhost)
            {
               if(!_self.isLiving && !parent)
               {
                  _constainer.addChild(this);
               }
            }
            else
            {
               _constainer.addChild(this);
            }
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(!_self.isLiving)
         {
            if(isGhost && RoomManager.Instance.current && GameControl.Instance.Current.togetherShoot)
            {
               .super.visible = false;
            }
            else
            {
               .super.visible = param1 && isGhost;
            }
         }
         else
         {
            .super.visible = param1 && !isGhost;
         }
      }
      
      override public function collidedByObject(param1:PhysicalObj3D) : void
      {
         if(param1 is SimpleBomb3D)
         {
            SimpleBomb3D(param1).owner.pick(this);
            if(!isGhost && _self.isLiving)
            {
               SoundManager.instance.play("018");
            }
            die();
         }
      }
      
      override public function die() : void
      {
         if(!_isLiving)
         {
            return;
         }
         _canCollided = false;
         if(visible)
         {
            if(isGhost)
            {
               _dieMC = BoneMovieFactory.instance.creatBoneMovie("bonesGameGhostBoxDie");
               StarlingObjectUtils.disposeObject(_ghostBox);
               _ghostBox = null;
            }
            else
            {
               _dieMC = BoneMovieFactory.instance.creatBoneMovie("bonesGamePickBoxAsset");
               StarlingObjectUtils.disposeObject(_box);
               _box = null;
            }
            addChild(_dieMC);
            __boxDieComplete(null);
            if(_smallMapView)
            {
               _smallMapView.visible = false;
            }
         }
         super.die();
      }
      
      protected function __boxDieComplete(param1:Event) : void
      {
         if(_dieMC)
         {
            dispose();
         }
      }
      
      override public function isBox() : Boolean
      {
         return true;
      }
      
      override public function get canCollided() : Boolean
      {
         if(isGhost)
         {
            return !_self.isLiving;
         }
         return _canCollided;
      }
      
      override public function dispose() : void
      {
         removeEvent();
         StarlingObjectUtils.disposeObject(_dieMC);
         _dieMC = null;
         StarlingObjectUtils.disposeObject(_ghostBox);
         _ghostBox = null;
         StarlingObjectUtils.disposeObject(_box);
         _box = null;
         _self = null;
         super.dispose();
      }
      
      override public function playAction(param1:String) : void
      {
         var _loc2_:* = param1;
         if("BoxNormal" !== _loc2_)
         {
            if("BoxColorChanged" !== _loc2_)
            {
               if("BoxColorRestored" === _loc2_)
               {
                  if(_box)
                  {
                     _box.visible = false;
                  }
                  setIsGhost(true);
               }
            }
            else
            {
               if(_box)
               {
                  _box.visible = false;
               }
               setIsGhost(true);
            }
         }
         else
         {
            if(_box)
            {
               _box.visible = true;
            }
            setIsGhost(false);
         }
      }
      
      private function __onSelfPlayerDie(param1:Event) : void
      {
         if(!_self.isLast)
         {
            visible = isGhost;
         }
      }
      
      private function __onSelfPlayerRevive(param1:Event) : void
      {
         if(isGhost)
         {
            visible = false;
         }
      }
   }
}
