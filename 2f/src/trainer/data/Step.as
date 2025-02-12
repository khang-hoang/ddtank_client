package trainer.data
{
   import ddt.manager.SocketManager;
   
   public class Step
   {
      
      public static const POP_WELCOME:int = 1;
      
      public static const POP_MOVE:int = 2;
      
      public static const MOVE:int = 3;
      
      public static const SPAWN:int = 4;
      
      public static const POP_TIP_ONE:int = 5;
      
      public static const POP_ENERGY:int = 6;
      
      public static const ENERGY:int = 7;
      
      public static const BEAT_LIVING_RIGHT:int = 8;
      
      public static const BEAT_LIVING_LEFT:int = 9;
      
      public static const PICK_ONE:int = 10;
      
      public static const POP_EXPLAIN_ONE:int = 11;
      
      public static const POP_WIN:int = 12;
      
      public static const PLAY_ONE_GLOW:int = 20;
      
      public static const POP_ANGLE:int = 21;
      
      public static const SPAWN_SMALL_BOGU:int = 22;
      
      public static const SPAWN_BIG_BOGU:int = 23;
      
      public static const PICK_TEN:int = 24;
      
      public static const POP_EXPLAIN_TEN:int = 25;
      
      public static const POP_WIN_I:int = 26;
      
      public static const PICK_POWER_THREE:int = 30;
      
      public static const POP_POWER_THREE:int = 31;
      
      public static const POP_WIN_II:int = 32;
      
      public static const ARROW_THREE:int = 40;
      
      public static const ARROW_POWER:int = 41;
      
      public static const PICK_PLANE:int = 42;
      
      public static const POP_PLANE:int = 43;
      
      public static const POP_WIN_III:int = 44;
      
      public static const BEAT_JIANJIAO_BOGU:int = 50;
      
      public static const PICK_TWO_TWENTY:int = 51;
      
      public static const POP_TWO_TWENTY:int = 52;
      
      public static const POP_WIN_IV:int = 53;
      
      public static const BEAT_ROBOT:int = 60;
      
      public static const PICK_THREE_FOUR_FIVE:int = 61;
      
      public static const POP_THREE_FOUR_FIVE:int = 62;
      
      public static const POP_WIN_V:int = 63;
      
      public static const STRENGTH_WEAPON_TIP:int = 70;
      
      public static const STRENGTH_STONE_TIP:int = 71;
      
      public static const COMPOSE_WEAPON_TIP:int = 72;
      
      public static const COMPOSE_STONE_TIP:int = 73;
      
      public static const FUSION_ITEM_TIP:int = 74;
      
      public static const POP_LOST:int = 100;
      
      public static const BRING_UP:int = 101;
      
      public static const GAME_ROOM_OPEN:int = 1;
      
      public static const GAIN_ADDONE:int = 2;
      
      public static const GAME_ROOM_SHOW_OPEN:int = 3;
      
      public static const GAME_ROOM_CLICKED:int = 4;
      
      public static const GAIN_TEN_PERSENT:int = 5;
      
      public static const USE_TEN_PERSENT_TIP:int = 6;
      
      public static const BAG_OPEN:int = 7;
      
      public static const BAG_OPEN_SHOW:int = 8;
      
      public static const VANE_OPEN:int = 9;
      
      public static const POWER_OPEN:int = 10;
      
      public static const PLANE_OPEN:int = 11;
      
      public static const THREE_OPEN:int = 12;
      
      public static const CIVIL_OPEN:int = 13;
      
      public static const MASTER_ROOM_OPEN:int = 14;
      
      public static const CONSORTIA_OPEN:int = 15;
      
      public static const DUNGEON_OPEN:int = 16;
      
      public static const STORE_OPEN:int = 17;
      
      public static const SHOP_OPEN:int = 18;
      
      public static const HP_PROP_OPEN:int = 19;
      
      public static const GUILD_PROP_OPEN:int = 20;
      
      public static const POWER_PROP_OPEN:int = 21;
      
      public static const HIDE_PROP_OPEN:int = 22;
      
      public static const THREE_SHOW:int = 23;
      
      public static const GET_CARD_GUILD:int = 24;
      
      public static const POWER_SHOW:int = 25;
      
      public static const POWER_TIP:int = 26;
      
      public static const IM_OPEN:int = 27;
      
      public static const IM_SHOW:int = 28;
      
      public static const FROZE_PROP_OPEN:int = 32;
      
      public static const PLANE_PROP_OPEN:int = 33;
      
      public static const GET_ZXC_ITEM:int = 34;
      
      public static const CHURCH_OPEN:int = 35;
      
      public static const CHURCH_SHOW:int = 36;
      
      public static const CHURCH_CLICKED:int = 37;
      
      public static const CLICK_BAG:int = 38;
      
      public static const VANE_TIP:int = 39;
      
      public static const POWER_STRIP_TIP:int = 45;
      
      public static const CREATE_ROOM_TIP:int = 46;
      
      public static const START_GAME_TIP:int = 48;
      
      public static const ACHIVED_THREE_QUEST:int = 49;
      
      public static const PLANE_SHOW:int = 50;
      
      public static const TWO_OPEN:int = 51;
      
      public static const TWENTY_OPEN:int = 52;
      
      public static const TWO_SHOW:int = 53;
      
      public static const ZXC_TIP:int = 54;
      
      public static const THIRTY_OPEN:int = 55;
      
      public static const FORTY_OPEN:int = 56;
      
      public static const FIFTY_OPEN:int = 57;
      
      public static const THIRTY_SHOW:int = 58;
      
      public static const ROUND_TIME_TIP:int = 59;
      
      public static const CIVIL_SHOW:int = 60;
      
      public static const CIVIL_CLICKED:int = 61;
      
      public static const MASTER_ROOM_SHOW:int = 62;
      
      public static const MASTER_ROOM_CLICKED:int = 63;
      
      public static const CONSORTIA_SHOW:int = 64;
      
      public static const CONSORTIA_CLICKED:int = 65;
      
      public static const DUNGEON_SHOW:int = 66;
      
      public static const DUNGEON_CLICKED:int = 67;
      
      public static const CONSORTIA_CHAT:int = 70;
      
      public static const GUIDE_STRENGTH:int = 72;
      
      public static const GUIDE_SHOP:int = 73;
      
      public static const VANE_SHOW:int = 74;
      
      public static const GUIDE_COMPOSE:int = 75;
      
      public static const TOFF_LIST_OPEN:int = 76;
      
      public static const TOFF_LIST_SHOW:int = 77;
      
      public static const TOFF_LIST_CLICKED:int = 78;
      
      public static const HOT_WELL_OPEN:int = 79;
      
      public static const HOT_WELL_SHOW:int = 80;
      
      public static const HOT_WELL_CLICKED:int = 81;
      
      public static const AUCTION_OPEN:int = 82;
      
      public static const AUCTION_SHOW:int = 83;
      
      public static const AUCTION_CLICKED:int = 84;
      
      public static const CAMPAIGN_LAB_OPEN:int = 85;
      
      public static const CAMPAIGN_LAB_SHOW:int = 86;
      
      public static const CAMPAIGN_LAB_CLICKED:int = 87;
      
      public static const GUIDE_FUSION:int = 88;
      
      public static const CHALLENGE_TIP:int = 89;
      
      public static const VISIT_TOFF_LIST:int = 90;
      
      public static const VISIT_AUCTION:int = 91;
      
      public static const VISIT_CAMPAIGN_LAB:int = 92;
      
      public static const ZXC_TIPII:int = 93;
      
      public static const GUIDE_PLANE:int = 94;
      
      public static const CHANNEL_OPEN:int = 95;
      
      public static const CHANNEL_OPEN_SHOW:int = 96;
      
      public static const MAIL_OPEN:int = 97;
      
      public static const SIGN_OPEN:int = 99;
      
      public static const SIGN_OPEN_SHOW:int = 100;
      
      public static const TOTEM_OPEN:int = 101;
      
      public static const TOTEM_OPEN_SHINE:int = 102;
      
      public static const GEMSTONE_OPEN:int = 103;
      
      public static const BATTLE_GRUOND_OPEN:int = 104;
      
      public static const BEAD_OPEN_SHINE:int = 105;
      
      public static const AVATAR_COLLECTION_OPEN_SHINE:int = 106;
      
      public static const DRESS_OPEN:int = 107;
      
      public static const MAGIC_STONE_SHINE:int = 108;
      
      public static const CLOTHES_WEAPON_TIP:int = 132;
      
      public static const TOFFLIST_CLICK:int = 109;
      
      public static const HORSE_GUIDE_1:int = 110;
      
      public static const HORSE_GUIDE_2:int = 111;
      
      public static const HORSE_GUIDE_3:int = 112;
      
      public static const HORSE_GUIDE_4:int = 113;
      
      public static const HORSE_GUIDE_5:int = 114;
      
      public static const HORSE_GUIDE_6:int = 115;
      
      public static const HORSE_GUIDE_7:int = 116;
      
      public static const MAGIC_STONE_OPEN:int = 117;
      
      public static const MAGIC_STONE_EXPLORE:int = 118;
      
      public static const MAGIC_STONE_EQUIP:int = 119;
      
      public static const MAGIC_STONE_BAG:int = 127;
      
      public static const DUNGEON_GUIDE_1:int = 120;
      
      public static const DUNGEON_GUIDE_2:int = 121;
      
      public static const DUNGEON_GUIDE_3:int = 122;
      
      public static const DUNGEON_GUIDE_4:int = 123;
      
      public static const TEXP_GUIDE:int = 124;
      
      public static const CARD_GUIDE:int = 125;
      
      public static const BEAD_GUIDE:int = 126;
      
      public static const INSECT_NET_USE:int = 128;
      
      public static const CONSORTIA_BUYGIFT:int = 129;
      
      public static const FIRST_ENTER_NESTTWO:int = 130;
      
      public static const FIRST_ENTERHALL:int = 131;
      
      public static const NEWPLAYER_END:int = 132;
      
      public static const ENCHANT_OPEN:int = 133;
      
      public static const FIRST_SHOW_PLAYERINFO:int = 134;
      
      public static const FARM_EGGS:int = 135;
      
      public static const TREASURE_HUNTING:int = 136;
      
      public static const SECRET_AREA:int = 137;
      
      public static const CRYPT:int = 138;
      
      public static const TEMPLE:int = 139;
      
      public static const GUARD_CORE:int = 140;
      
      public static const MAGIC_STONE_EXPLORE2:int = 142;
      
      public static const HORSE_AMULET:int = 141;
      
      public static const SHOUSHI_GUIDE:int = 143;
      
      public static const IS_MASTER:int = 144;
      
      public static const DDT_KING_GRADE:int = 160;
      
      public static const EXPLORER_MANUAL:int = 161;
      
      public static const MINES:int = 650;
      
      public static const NEW_OPEN_GUIDE_START:int = 200;
      
      public static const GHOST_FIRST:int = 300;
      
      public static const GHOSTPROP_FIRST:int = 301;
      
      public static const CHAT_HELPINFO:int = 400;
      
      public static const OLD_PLAYER:int = 950;
       
      
      private const FRAME_RATE:int = 25;
      
      public var delay:int;
      
      private var _id:int;
      
      private var _execute:Function;
      
      private var _prepare:Function;
      
      private var _finish:Function;
      
      private var _isKey:Boolean;
      
      public function Step(param1:int, param2:Function, param3:Function = null, param4:Function = null, param5:int = 0, param6:Boolean = false){super();}
      
      public function get ID() : int{return 0;}
      
      public function prepare() : void{}
      
      public function execute() : Boolean{return false;}
      
      public function finish() : void{}
      
      public function dispose() : void{}
   }
}
