package carnivalActivity.view.activityItem
{
   import carnivalActivity.CarnivalActivityControl;
   import wonderfulActivity.WonderfulActivityManager;
   import wonderfulActivity.data.GiftBagInfo;
   import wonderfulActivity.data.PlayerCurInfo;
   
   public class PetUpgradeItem extends UseUpEnergyItem
   {
       
      
      public function PetUpgradeItem(param1:int, param2:GiftBagInfo, param3:int)
      {
         super(param1,param2,param3);
      }
      
      override public function updateView() : void
      {
         var _loc1_:Object = WonderfulActivityManager.Instance.activityInitData[_info.activityId];
         if(_loc1_)
         {
            _giftCurInfo = _loc1_.giftInfoDic[_info.giftbagId];
            _statusArr = _loc1_.statusArr;
            var _loc4_:int = 0;
            var _loc3_:* = _statusArr;
            for each(var _loc2_ in _statusArr)
            {
               if(_loc2_.statusID == _condtion)
               {
                  _currentCondtion = _loc2_.statusValue;
                  break;
               }
            }
            _playerAlreadyGetCount = _giftCurInfo.times;
            _getBtn.enable = CarnivalActivityControl.instance.canGetAward() && _playerAlreadyGetCount == 0 && _currentCondtion > 0;
            _alreadyGetBtn.visible = _playerAlreadyGetCount > 0;
            _getBtn.visible = !_alreadyGetBtn.visible;
         }
      }
   }
}