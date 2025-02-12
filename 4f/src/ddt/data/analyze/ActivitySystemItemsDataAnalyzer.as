package ddt.data.analyze
{
   import chickActivation.data.ChickActivationInfo;
   import cloudBuyLottery.data.HappyBuyBuyBuyInfo;
   import com.pickgliss.loader.DataAnalyzer;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.PyramidSystemItemsInfo;
   import ddtmatch.data.DDTMatchFightKingInfo;
   import defendisland.data.DefendislandRewardInfo;
   import growthPackage.data.GrowthPackageInfo;
   import guildMemberWeek.data.GuildMemberWeekItemsInfo;
   import guildMemberWeek.manager.GuildMemberWeekManager;
   import horseRace.data.HorseRaceInfo;
   import kingDivision.data.KingDivisionGoodsInfo;
   import loginDevice.LoginDeviceRewardInfo;
   import lotteryTicket.data.LotteryRewardInfo;
   import newYearRice.data.NewYearRiceInfo;
   import redEnvelope.data.RedEnvelopeInfo;
   import signBuff.data.SignBuffInfo;
   import welfareCenter.callBackFund.CallBackFundRewardInfo;
   import witchBlessing.data.WitchBlessingPackageInfo;
   
   public class ActivitySystemItemsDataAnalyzer extends DataAnalyzer
   {
       
      
      public var pyramidSystemDataList:Array;
      
      public var guildMemberWeekDataList:Array;
      
      public var growthPackageDataList:Array;
      
      public var kingDivisionDataList:Array;
      
      public var chickActivationDataList:Array;
      
      public var witchBlessingDataList:Array;
      
      public var newYearRiceDataList:Array;
      
      public var horseRaceDataList:Array;
      
      public var happyBuyBbyBuyDataList:Array;
      
      public var fightKingDataList:Array;
      
      public var redEnvelopeDataList:Array;
      
      public var loginDeviceDataList:Array;
      
      public var callbackDataList:Array;
      
      public var signBuffDataList:Array;
      
      public var lotteryDataList:Array;
      
      public var defendislandDataList:Array;
      
      public function ActivitySystemItemsDataAnalyzer(param1:Function){super(null);}
      
      override public function analyze(param1:*) : void{}
   }
}
