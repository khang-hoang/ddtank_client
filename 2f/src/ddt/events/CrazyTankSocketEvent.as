package ddt.events
{
   import flash.events.Event;
   import road7th.comm.PackageIn;
   
   public class CrazyTankSocketEvent extends Event
   {
      
      public static const MARK_ME_HIDE_INFO:String = "mark_me_hide_info";
      
      public static const TARTGE_PLAYER:String = "target_player";
      
      public static const STICK_DOACTION:String = "stick_doAction";
      
      public static const BAG_LOCKED:String = "bagLocked";
      
      public static const PLAYER_START_MOVE:String = "playerStartMove";
      
      public static const PLAYER_STOP_MOVE:String = "playerStopMove";
      
      public static const PLAY_FINISH:String = "playeFinished";
      
      public static const PLAYER_MOVE:String = "playerMove";
      
      public static const LOTTERY_OPNE:String = "lottery_open";
      
      public static const BOMB_DIE:String = "bombDie";
      
      public static const DIRECTION_CHANGED:String = "playerDirection";
      
      public static const ANOTHERDIMENSION:String = "anotherDimension";
      
      public static const CHANGE_BALL:String = "changeBall";
      
      public static const PLAYER_GUN_ANGLE:String = "playerGunAngle";
      
      public static const PLAYER_SHOOT:String = "playerShoot";
      
      public static const ENTERTAINMENT:String = "entertainment";
      
      public static const PLAYER_SHOOT_TAG:String = "playerShootTag";
      
      public static const PLAYER_BEAT:String = "playerBeat";
      
      public static const ADD_PLAYER_SHADOW:String = "addPlayerShow";
      
      public static const ARRANGE_FRIEND_FARM:String = "arrangeFriendFarm";
      
      public static const ENTER_TREASURE:String = "enterTreasure";
      
      public static const BEREPAIR_FRIEND_FARM_SEND:String = "beRepairFriendFarmSend";
      
      public static const END_TREASURE:String = "endTreasure";
      
      public static const DIG:String = "dig";
      
      public static const LOGIN_ABOUT_TREASURE:String = "LoginAboutTreasure";
      
      public static const START_GAME_TREASURE:String = "stratGameTreasure";
      
      public static const BOX_DISAPPEAR:String = "boxdisappear";
      
      public static const PICK_BOX:String = "PickBox";
      
      public static const PLAYER_CHANGE:String = "playerChange";
      
      public static const PLAYER_BLOOD:String = "playerBlood";
      
      public static const PLAYER_FROST:String = "playerFrost";
      
      public static const PLAYER_INVINCIBLY:String = "playerInvincibly";
      
      public static const PLAYER_HIDE:String = "playerHide";
      
      public static const PLAYER_CARRY:String = "playerCarry";
      
      public static const PLAYER_BECKON:String = "playerBeckon";
      
      public static const PLAYER_NONOLE:String = "playerNoNole";
      
      public static const PLAYER_PROPERTY:String = "playerProperty";
      
      public static const CHANGE_STATE:String = "changeState";
      
      public static const PLAYER_VANE:String = "playerVane";
      
      public static const PLAYER_APK:String = "playerAPK";
      
      public static const PLAYER_PICK_BOX:String = "playerPick";
      
      public static const PLAYER_FIGHT_PROP:String = "playerFightProp";
      
      public static const PLAYER_STUNT:String = "playerStunt";
      
      public static const PLAYER_PROP:String = "playerProp";
      
      public static const PLAYER_DANDER:String = "playerDander";
      
      public static const REDUCE_DANDER:String = "reduceDander";
      
      public static const LOAD:String = "load";
      
      public static const PLAYER_ADDATTACK:String = "playerAddAttack";
      
      public static const PLAYER_ADDBAL:String = "playerAddBall";
      
      public static const SHOOTSTRAIGHT:String = "shootStaight";
      
      public static const SUICIDE:String = "suicide";
      
      public static const GAME_REVIVE:String = "gameRevive";
      
      public static const FIGHT_STATUS:String = "gameFightStatus";
      
      public static const SKIPNEXT:String = "gameSkipNext";
      
      public static const CLEAR_DEBUFF:String = "gameClearDebuff";
      
      public static const USE_PET_SKILL:String = "usePetSkill";
      
      public static const PET_BEAT:String = "petBeat";
      
      public static const PET_SKILL_CD:String = "petSkillCD";
      
      public static const WISHOFDD:String = "wishofdd";
      
      public static const SKILL_LOCK:String = "skill_lock";
      
      public static const PET_BUFF:String = "petBuff";
      
      public static const PING:String = "ping";
      
      public static const NETWORK:String = "netWork";
      
      public static const GAME_TAKE_TEMP:String = "gameTakeTemp";
      
      public static const CONNECT_SUCCESS:String = "connectSuccess";
      
      public static const GAME_ROOM_CREATE:String = "gameRoomCreate";
      
      public static const GAME_RECONNECTION:String = "gameReconnection";
      
      public static const GAME_ROOMLIST_UPDATE:String = "gameRoomListUpdate";
      
      public static const ROOMLIST_PASS:String = "RoomListPass";
      
      public static const GAME_PLAYER_ENTER:String = "gamePlayerEnter";
      
      public static const SINGLE_ROOM_BEGIN:String = "SINGLE_ROOM_BEGIN";
      
      public static const KIT_USER:String = "kitUser";
      
      public static const GAME_ROOM_UPDATE_PLACE:String = "gameRoomOpen";
      
      public static const GAME_ROOM_KICK:String = "gameRoomKick";
      
      public static const GAME_PLAYER_EXIT:String = "GamePlayerExit";
      
      public static const GAME_WAIT_RECV:String = "recvGameWait";
      
      public static const GAME_WAIT_FAILED:String = "GameWaitFailed";
      
      public static const GAME_AWIT_CANCEL:String = "GameWaitCancel";
      
      public static const GMAE_STYLE_RECV:String = "GameStyleRecv";
      
      public static const GAME_ROOM_LOGIN:String = "gameLogin";
      
      public static const GAME_TEAM:String = "gameTeam";
      
      public static const GAME_PLAYER_STATE_CHANGE:String = "playerState";
      
      public static const GAME_ROOM_FULL:String = "gameRoomFull";
      
      public static const FAST_INVITE_CALL:String = "fastInviteCall";
      
      public static const GAME_ENERGY_NOT_ENOUGH:String = "gameEnergyNotEnough";
      
      public static const GAME_CREATE:String = "gameCreate";
      
      public static const GAME_START:String = "gameStart";
      
      public static const GAME_LOAD:String = "gameLoad";
      
      public static const GAME_MISSION_INFO:String = "gameMissionInfo";
      
      public static const BUY_BEAD:String = "buybead";
      
      public static const BREAK_GOODS:String = "breakgoods";
      
      public static const REPAIR_GOODS:String = "repairGoods";
      
      public static const UPDATE_OFFER:String = "updateoffer";
      
      public static const CONSORTIA_RESPONSE:String = "consortiaresponse";
      
      public static const CONSORTIA_ALLY_APPLY_UPDATE:String = "consortiaAllyAppleUpdate";
      
      public static const CONSORTIA_ALLY_UPDATE:String = "consortiaallyupdate";
      
      public static const CONSORTIA_ALLY_APPLY_DELETE:String = "consortiaallyapplydelete";
      
      public static const CONSORTIA_ALLY_APPLY_ADD:String = "consortiaallyapplyadd";
      
      public static const GAME_OVER:String = "gameOver";
      
      public static const MISSION_OVE:String = "missionOver";
      
      public static const MISSION_COMPLETE:String = "missionOver";
      
      public static const GAME_ALL_MISSION_OVER:String = "gameAllMissionOver";
      
      public static const GAME_TAKE_OUT:String = "gameTakeOut";
      
      public static const GAME_ROOM_SETUP_CHANGE:String = "gameRoomSetUp";
      
      public static const GAME_OPEN_SELECT_LEADER:String = "gameOpenSelectLeader";
      
      public static const GAME_WANNA_LEADER:String = "gameWannaLeader";
      
      public static const GAME_CAPTAIN_CHOICE:String = "gamecaptionchoice";
      
      public static const GAME_CAPTAIN_AFFIRM:String = "gamecaptainaffirm";
      
      public static const TEMP_STYLE:String = "tempStyle";
      
      public static const ITEM_EMBED:String = "itemEmbed";
      
      public static const CLEAR_STORE_BAG:String = "clearStoreBag";
      
      public static const SYS_CHAT_DATA:String = "syschatdata";
      
      public static const AUCTION_DELETE:String = "auctionDelete";
      
      public static const AUCTION_ADD:String = "auctionAdd";
      
      public static const BUFF_INFO:String = "buffInfo";
      
      public static const BUFF_OBTAIN:String = "buffObtain";
      
      public static const BUFF_ADD:String = "buffAdd";
      
      public static const BUFF_UPDATE:String = "buffUpdate";
      
      public static const MARRY_SCENE_CHANGE:String = "marry scene change";
      
      public static const LARGESS:String = "church largess";
      
      public static const KICK:String = "church kick";
      
      public static const FORBID:String = "church forbid";
      
      public static const MARRYINFO_UPDATE:String = "marryinfo update";
      
      public static const PLAY_MOVIE:String = "playMovie";
      
      public static const ADD_LIVING:String = "addLiving";
      
      public static const ADD_MAP_THINGS:String = "addMapThing";
      
      public static const LIVING_MOVETO:String = "livingMoveTo";
      
      public static const LIVING_FALLING:String = "livingFalling";
      
      public static const LIVING_JUMP:String = "livingJump";
      
      public static const LIVING_BEAT:String = "livingBeat";
      
      public static const LIVING_SAY:String = "livingSay";
      
      public static const LIVING_RANGEATTACKING:String = "livingRangeAttacking";
      
      public static const BARRIER_INFO:String = "barrierInfo";
      
      public static const ADD_MAP_THING:String = "addMapThing";
      
      public static const UPDATE_BOARD_STATE:String = "updateBoardState";
      
      public static const GAME_MISSION_START:String = "gameMissionStart";
      
      public static const GAME_MISSION_PREPARE:String = "gameMissionPrepare";
      
      public static const SHOW_CARDS:String = "showCard";
      
      public static const UPDATE_BUFF:String = "updateBuff";
      
      public static const GEM_GLOW:String = "gemGlow";
      
      public static const FOCUS_ON_OBJECT:String = "focusOnObject";
      
      public static const DICE_ACTIVE_OPEN:String = "dice_active_open";
      
      public static const DICE_ACTIVE_CLOSE:String = "dice_active_close";
      
      public static const DICE_RECEIVE_DATA:String = "dice_receive_data";
      
      public static const DICE_RECEIVE_RESULT:String = "dice_receive_result";
      
      public static const DICE_START:String = "dice_start";
      
      public static const GAME_ROOM_INFO:String = "gameRoomInfo";
      
      public static const ADD_TIP_LAYER:String = "addTipLayer";
      
      public static const PLAY_INFO_IN_GAME:String = "playInfoInGame";
      
      public static const PAYMENT_TAKE_CARD:String = "playmentTakeCard";
      
      public static const INSUFFICIENT_MONEY:String = "insufficientMoney";
      
      public static const GAME_MISSION_TRY_AGAIN:String = "gameMissionTryAgain";
      
      public static const IS_LAST_MISSION:String = "islastMission";
      
      public static const PASSED_WARRIORSARENA_10:String = "passed_warriorsarena_10";
      
      public static const LAST_MISSION_FOR_WARRIORSARENA:String = "warriorsarenaLastMission";
      
      public static const No_WARRIORSARENA_TICKET:String = "no_Warriorsarena_ticket";
      
      public static const GET_ITEM_MESS:String = "getItemMess";
      
      public static const USER_ANSWER:String = "userAnswer";
      
      public static const PLAY_SOUND:String = "playSound";
      
      public static const LOAD_RESOURCE:String = "loadResource";
      
      public static const PLAY_ASIDE:String = "playWordTip";
      
      public static const FORBID_DRAG:String = "forbidDrag";
      
      public static const TOP_LAYER:String = "topLayer";
      
      public static const CONTROL_BGM:String = "controlBGM";
      
      public static const FIGHT_LIB_INFO_CHANGE:String = "fightLibInfoChange";
      
      public static const USE_DEPUTY_WEAPON:String = "Use_Deputy_Weapon";
      
      public static const POPUP_QUESTION_FRAME:String = "popupQuestionFrame";
      
      public static const SHOW_PASS_STORY_BTN:String = "showPassStoryBtn";
      
      public static const LIVING_BOLTMOVE:String = "livingBoltmove";
      
      public static const CHANGE_TARGET:String = "changeTarget";
      
      public static const LIVING_SHOW_BLOOD:String = "livingShowBlood";
      
      public static const ACTION_MAPPING:String = "actionMapping";
      
      public static const FIGHT_ACHIEVEMENT:String = "fightAchievement";
      
      public static const APPLYSKILL:String = "applySkill";
      
      public static const REMOVESKILL:String = "removeSkill";
      
      public static const CHANGEMAXFORCE:String = "changedMaxForce";
      
      public static const HORSERACE_OPEN_CLOSE:String = "horseRace_open_close";
      
      public static const HORSERACE_CMD:String = "horseRace_cmd";
      
      public static const GET_TIME_BOX:String = "getTimeBox";
      
      public static const GET_TIME_BOX_INFO:String = "getTimeBoxInfo";
      
      public static const VIP_REWARD_IS_TAKED:String = "vipRewardIsTaked";
      
      public static const GAMESYSMESSAGE:String = "gamesysmessage";
      
      public static const WINDPIC:String = "windPic";
      
      public static const TEXP:String = "texp";
      
      public static const LIVING_CHAGEANGLE:String = "LivingChangeAngele";
      
      public static const MOVE_PETBAG:String = "movePetBag";
      
      public static const FEED_PET:String = "feedPet";
      
      public static const EQUIP_PET_SKILL:String = "equipPetSkill";
      
      public static const RENAME_PET:String = "renamePet";
      
      public static const RELEASE_PET:String = "releasePet";
      
      public static const ADOPT_PET:String = "adoptPet";
      
      public static const CHANGE_SEX:String = "changeSex";
      
      public static const WORLDBOSS_ROOM_LOGIN:String = "worldboss_room_login";
      
      public static const WORLDBOSS_RANKING_INROOM:String = "worldboss_ranking_inroom";
      
      public static const WORLDBOSS_BUYBUFF:String = "worldboss_buy_buff";
      
      public static const CUMULATECHARGE_OPEN:String = "cumulatecharge_open";
      
      public static const CUMULATECHARGE_OVER:String = "cumulatecharge_over";
      
      public static const CUMULATECHARGE_DATA:String = "cumulatecharge_data";
      
      public static const GET_SPREE:String = "get_spree";
      
      public static const FIRSTRECHARGE_OPEN:String = "firstRecharge_open";
      
      public static const SELECT_OBJECT:String = "selectObject";
      
      public static const CAMPBATTLE:String = "campbattle";
      
      public static const GAME_IN_COLOR_CHANGE:String = "game_in_color_change";
      
      public static const ADD_NEW_PLAYER:String = "add_new_player";
      
      public static const ADD_TERRACE:String = "add_terrace";
      
      public static const GAME_TRUSTEESHIP:String = "game_trusteeship";
      
      public static const SEVEN_DOUBLE:String = "seven_double";
      
      public static const SINGLEBATTLE_STARTMATCH:String = "singleBattleStartMatch";
      
      public static const UPDATE_ACTIVITYDUNGEON_INFO:String = "update_activitydungeon_info";
      
      public static const ADD_ANIMATION:String = "add_animation";
      
      public static const ESCORT:String = "escort";
      
      public static const DRGN_BAOT:String = "drgn_baot";
      
      public static const FLOAT_PARADE:String = "float_parade";
      
      public static const DDT_KING_FLOAT:String = "ddt_king_float";
      
      public static const ROUND_ONE_END:String = "roundOneEnd";
      
      public static const SKILL_INFO_INIT:String = "skillInfoInit";
      
      public static const RESCUE_ITEM_INFO:String = "RescueItemInfo";
      
      public static const RESCUE_KING_BLESS:String = "RescueKingBless";
      
      public static const ADD_SCORE:String = "addScore";
      
      public static const CHRISTMAS_SYSTEM:String = "christmas_system";
      
      public static const SNOWMEN_UP:String = "snowmen_up";
      
      public static const CHRISTMAS_INIT:String = "christmas_init";
      
      public static const ACTIVE_STATE:String = "active_state";
      
      public static const FIGHT_MONSTER:String = "fight_monster";
      
      public static const SELF_MONSTER_INFO:String = "self_monster_info";
      
      public static const CHRISTMAS_MOVE:String = "christmas_move";
      
      public static const PLAYER_STATUE:String = "player_statue";
      
      public static const ADDPLAYER_ROOM:String = "addplayer_room";
      
      public static const CHRISTMAS_EXIT:String = "christmas_exit";
      
      public static const CHRISTMAS_MONSTER:String = "christmas_monster";
      
      public static const GET_PAKCS_TO_PLAYER:String = "getpackstoplayer";
      
      public static const CHRISTMAS_PACKS:String = "christmas_packs";
      
      public static const CHRISTMAS_ROOM_SPEAK:String = "christmas_room_speak";
      
      public static const UPDATE_TIMES_ROOM:String = "update_times_room";
      
      public static const ACCUMULATIVELOGIN_AWARD:String = "accumulativeLogin_award";
      
      public static const SINGBATTLE_FORCED_EXIT:String = "singleBattle_forecdExit";
      
      public static const FIGHTFOOTBALLTIME_ACTIVE:String = "fightFootballTime_active";
      
      public static const FIGHTFOOTBALLTIME_ROOM_CREATE:String = "fightFootballtime_room_create";
      
      public static const FIGHTFOOTBALLTIME_CMD:String = "fightFootballtime_cmd";
      
      public static const NONE_TASK_IS_MAIN:String = "n_tsk_s_main";
      
      public static const PYRAMID_SYSTEM:String = "pyramid_system";
      
      public static const PETISLANDINIT:String = "petIslandInit";
      
      public static const HAPPYRECHARGE:String = "happyRecharge";
      
      public static const CLOUDBUY:String = "cloudBuy";
      
      public static const NEW_YEAR_RICE:String = "newYearRice";
      
      public static const YEARFOODENTER:String = "yearFoodEnter";
      
      public static const YEARFOODCOOK:String = "yearFoodCook";
      
      public static const EXITYEARFOODROOM:String = "exitYearFoodRoom";
      
      public static const YEARFOODINVITE:String = "yearFoodInvite";
      
      public static const YEARFOODROOMINVITE:String = "yearFoodRoomInvite";
      
      public static const YEARFOODCREATEFOOD:String = "yearFoodCreateFood";
      
      public static const LANTERNRIDDLES_BEGIN:String = "lanternRiddles_begin";
      
      public static const LANTERNRIDDLES_QUESTION:String = "lanternRiddles_question";
      
      public static const LANTERNRIDDLES_ANSWERRESULT:String = "lanternRiddles_answer";
      
      public static const LANTERNRIDDLES_SKILL:String = "lanternRiddles_skill";
      
      public static const LANTERNRIDDLES_RANKINFO:String = "lanternRiddles_rankinfo";
      
      public static const LANTERNRIDDLES_BEGINTIPS:String = "lanternRiddles_beiginTips";
      
      public static const REDPACKET:String = "redpacket";
      
      public static const MATCH_MESSAGE:String = "matchMessage";
      
      public static const FIGHT_KING:String = "fightKing";
      
      public static const UPDATA_REDPACKTE_LIST:String = "updataRedPacketList";
      
      public static const REDPACKET_RECORD:String = "redpacketRecord";
      
      public static const MATCH_INFO:String = "matchInfo";
      
      public static const VIP_MERRY_DISCOUNT:String = "vipMerryDiscount";
      
      public static const MAGIC_STONE_MONSTER_INFO:String = "MagicStoneMonster_Info";
      
      public static const MAGICSTONE_DOUBLESCORE:String = "magicstone_doublescore";
      
      public static const PRAY_INDIANA:String = "pray_indiana";
      
      public static const GET_CSM_TIME_BOX:String = "getCSMTimeBox";
      
      public static const LUCKYSTAR_OPEN:String = "luckystaropen";
      
      public static const LUCKYSTAR_END:String = "luckystarend";
      
      public static const LUCKYSTAR_ALLGOODS:String = "luckystarallgoods";
      
      public static const LUCKYSTAR_RECORD:String = "luckystarrecord";
      
      public static const LUCKYSTAR_GOODSINFO:String = "luckystargoodsinfo";
      
      public static const LUCKYSTAR_REWARDINFO:String = "luckystarrewardinfo";
      
      public static const LUCKYSTAR_AWARDRANK:String = "luckystarawardrank";
      
      public static const GODS_ROADS:String = "gods_roads";
      
      public static const CHICKACTIVATION_SYSTEM:String = "chickActivation_system";
      
      public static const DDPLAY_BEGIN:String = "DDPlay_brgin";
      
      public static const DDPLAY_ENTER:String = "DDPlay_enter";
      
      public static const DDPLAY_START:String = "DDPlay_start";
      
      public static const DDPLAY_EXCHANGE:String = "DDPlay_exchange";
      
      public static const ITEMACTIVITYGIFT_DATA:String = "itemActivityGift_data";
      
      public static const TREASUREPUZZLE_SYSTEM:String = "treasurePuzzle_system";
      
      public static const MAGICHOUSE:String = "magichouse";
      
      public static const BUY_GOODS:String = "buygoods";
      
      public static const ZODIAC:String = "zodiac";
      
      public static const CATCHBEAST_BEGIN:String = "catchbeast_begin";
      
      public static const CATCHBEAST_VIEWINFO:String = "catchbeast_viewinfo";
      
      public static const CATCHBEAST_CHALLENGE:String = "catchbeast_challenge";
      
      public static const CATCHBEAST_BUYBUFF:String = "catchbeast_buybuff";
      
      public static const CATCHBEAST_GETAWARD:String = "catchbeast_getaward";
      
      public static const SUPER_WINNER:String = "super_winner";
      
      public static const WITCHBLESSING_DATA:String = "witchblessing_data";
      
      public static const SEVENDAYTARGET_GODSROADS:String = "sevenDayTarget_godsroads";
      
      public static const SEVENDAYTARGET_NEWPLAYERREWARD:String = "sevenDayTarget_newplayerReward";
      
      public static const BOGU_ADVENTURE:String = "boguadventure";
      
      public static const GUILDMEMBERWEEK_SYSTEM:String = "guildmemberweek_system";
      
      public static const GUILDMEMBERWEEK_OPEN:String = "guildmemberweek_open";
      
      public static const GUILDMEMBERWEEK_CLOSE:String = "guildmemberweek_close";
      
      public static const GUILDMEMBERWEEK_PLAYERTOP10:String = "guildmemberweek_playertop10";
      
      public static const GUILDMEMBERWEEK_GET_POINTBOOK:String = "guildmemberweek_AddPointBook";
      
      public static const GUILDMEMBERWEEK_ADDPOINTBOOKRECORD:String = "guildmemberweek_addpointbookrecord";
      
      public static const GUILDMEMBERWEEK_FINISHACTIVITY:String = "guildmemberweek_finishactivity";
      
      public static const GUILDMEMBERWEEK_SHOWRUNKING:String = "guildmemberweek_showrunking";
      
      public static const GUILDMEMBERWEEK_GET_MYRUNKING:String = "guildmemberweek_getmyrunking";
      
      public static const GUILDMEMBERWEEK_GET_UPADDPOINTBOOK:String = "guildmemberweek_upaddpointbookrecord";
      
      public static const GUILDMEMBERWEEK_GET_SHOWACTIVITYEND:String = "guildmemberweek_showactivityend";
      
      public static const GET_CARD:String = "get_card";
      
      public static const CARDS_SOUL:String = "cards_soul";
      
      public static const DEED_MAIN:String = "deed_main";
      
      public static const DEED_UPDATE_BUFF_DATA:String = "deed_update_buff_data";
      
      public static const DROP_GOODS:String = "dropGoods";
      
      public static const GROWTHPACKAGE:String = "growthPackage";
      
      public static const FAST_AUCTION_BUGLE:String = "fast_auction_bugle";
      
      public static const LOGINDEVICE:String = "login_device";
      
      public static const SIGNBUFF:String = "sign_buff";
      
      public static const LOTTERY_TICKET:String = "lotteryTicket";
      
      public static const TRAIL_ELITE:String = "trailElite";
      
      public static const UPDATE_FLAG_COUNT:String = "updateFlagCount";
      
      public static const FLGA_BATTLE_STATE:String = "flagBattleState";
      
      public static const OPEN_GAME_DICE:String = "openGameDice";
      
      public static const GAME_ROLL_DICE:String = "gameRollDice";
      
      public static const ISLAND_INFO:String = "islandInfo";
      
      public static const PVE_POWER_BUFF:String = "pvePowerBuff";
       
      
      private var _pkg:PackageIn;
      
      public var executed:Boolean;
      
      public var _cmd:int;
      
      public function CrazyTankSocketEvent(param1:String, param2:PackageIn = null, param3:int = 0){super(null,null,null);}
      
      public function get pkg() : PackageIn{return null;}
      
      public function get cmd() : int{return 0;}
   }
}
