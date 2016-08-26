.class public Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
.super Landroid/os/Handler;
.source "SvlteRatController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    }
.end annotation


# static fields
.field public static final ENGINEER_MODE_AUTO:I = 0x0

.field public static final ENGINEER_MODE_CDMA:I = 0x1

.field public static final ENGINEER_MODE_CSFB:I = 0x2

.field public static final ENGINEER_MODE_LTE:I = 0x3

.field private static final EVENT_HANDLE_3G_RADIO_OFF:I = 0x3eb

.field private static final EVENT_RADIO_AVAILABLE:I = 0x3e8

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x3e9

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE_CDMA:I = 0x3ea

.field public static final EXTRA_ROAMING_MODE:Ljava/lang/String; = "roamingMode"

.field public static final EXTRA_SVLTE_RAT_MODE:Ljava/lang/String; = "svlteRatMode"

.field public static final EXTRA_SVLTE_RAT_SWITCH_PRIORITY:Ljava/lang/String; = "svlteRatSwitchPriority"

.field public static final INTENT_ACTION_FINISH_SWITCH_ROAMING_MODE:Ljava/lang/String; = "com.mediatek.intent.action.FINISH_SWITCH_ROAMING_MODE"

.field public static final INTENT_ACTION_FINISH_SWITCH_SVLTE_RAT_MODE:Ljava/lang/String; = "com.mediatek.intent.action.FINISH_SWITCH_SVLTE_RAT_MODE"

.field public static final INTENT_ACTION_START_SWITCH_ROAMING_MODE:Ljava/lang/String; = "com.mediatek.intent.action.START_SWITCH_ROAMING_MODE"

.field public static final INTENT_ACTION_START_SWITCH_SVLTE_RAT_MODE:Ljava/lang/String; = "com.mediatek.intent.action.START_SWITCH_SVLTE_RAT_MODE"

.field private static final LOG_TAG_PHONE:Ljava/lang/String; = "PHONE"

.field private static final PENDINGINFO_SET_RAT:I = 0x0

.field private static final PENDINGINFO_SET_RAT_AND_ROAMING:I = 0x2

.field private static final PENDINGINFO_SET_ROAMING:I = 0x1

.field private static final PROPERTY_RAT_SWITCHING:Ljava/lang/String; = "ril.rat.switching"

.field public static final RAT_MODE_CSFB:I = 0x8

.field public static final RAT_MODE_CSFB_2G:I = 0x1

.field public static final RAT_MODE_CSFB_3G:I = 0x2

.field public static final RAT_MODE_CSFB_4G:I = 0x4

.field public static final RAT_MODE_SVLTE:I = 0x80

.field public static final RAT_MODE_SVLTE_2G:I = 0x10

.field public static final RAT_MODE_SVLTE_3G:I = 0x20

.field public static final RAT_MODE_SVLTE_4G:I = 0x40

.field private static final RAT_SWITCH_FOR_MODE_CHANGE:I = 0x2

.field private static final RAT_SWITCH_FOR_NORMAL:I = 0x1

.field public static final SVLTE_PROJ_DC_3M:I = 0x3

.field public static final SVLTE_PROJ_DC_4M:I = 0x4

.field public static final SVLTE_PROJ_DC_5M:I = 0x5

.field public static final SVLTE_PROJ_DC_6M:I = 0x6

.field public static final SVLTE_PROJ_SC_3M:I = 0x67

.field public static final SVLTE_PROJ_SC_4M:I = 0x68

.field public static final SVLTE_PROJ_SC_5M:I = 0x69

.field public static final SVLTE_PROJ_SC_6M:I = 0x6a

.field private static sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sIsFlightModePowerOffMdSupport:Z


# instance fields
.field private mAirplaneMode:Z

.field private mBlockByRadioPowerOff:Z

.field private mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mContext:Landroid/content/Context;

.field private mEngMode:I

.field private mEngineerMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

.field private mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

.field private mLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field private mNewRadioTechMode:I

.field private mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

.field private mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

.field private final mOnSubscriptionsChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;

.field private mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

.field private mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

.field private mRadioTechMode:I

.field private mRatChangeInRoaming:Z

.field private mRatSwitchHandler:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

.field private mSlotId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

.field private mSvlteRatModeChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    sput-boolean v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sIsFlightModePowerOffMdSupport:Z

    .line 278
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)V
    .locals 4
    .param p1, "lteDcPhoneProxy"    # Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 286
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 173
    const/4 v1, 0x3

    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRadioTechMode:I

    .line 175
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 176
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 177
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 178
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 179
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRadioTechMode:I

    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    .line 181
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;->ENGINEER_MODE_NONE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngineerMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

    .line 182
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getEngineerMode()I

    move-result v1

    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;

    .line 223
    new-instance v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mOnSubscriptionsChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;

    .line 279
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 280
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 328
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mBlockByRadioPowerOff:Z

    .line 329
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mAirplaneMode:Z

    .line 330
    new-instance v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$1;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 287
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 288
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mContext:Landroid/content/Context;

    .line 289
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 290
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 291
    new-instance v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatSwitchHandler:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;

    .line 292
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    .line 294
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x3e8

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 295
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x3e9

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 296
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x3ea

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 298
    const-string v1, "1"

    const-string v2, "ril.flightmode.poweroffMD"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sIsFlightModePowerOffMdSupport:Z

    .line 302
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getSvlteProjectType()I

    move-result v1

    const/16 v2, 0x67

    if-ne v1, v2, :cond_1

    .line 303
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 304
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 305
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getCdmaRatModeKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 310
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sIsFlightModePowerOffMdSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sIsFlightModePowerOffMdSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 312
    const-string v1, "OP09"

    const-string v2, "ro.operator.optr"

    const-string v3, "OM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 313
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 314
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mOnSubscriptionsChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 320
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 321
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 323
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isAirplaneModeFromSetting()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mAirplaneMode:Z

    .line 325
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 46
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "x2"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setRadioTechMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 46
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->blockByRadioPowerOff()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->needSwitchInAirplaneMode(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;ZZZI)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->finishSwitchMode(ZZZI)V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "x2"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->resetRadioPowerOff(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsCdmaApp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getCardType()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsUsimApp(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isFixedSvlteMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 46
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRadioTechMode:I

    return v0
.end method

.method static synthetic access$2102(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRadioTechMode:I

    return p1
.end method

.method static synthetic access$2200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isLteOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdmaOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Landroid/content/Intent;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Landroid/os/Message;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->updateAirplaneMode(Landroid/content/Intent;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object p1
.end method

.method private blockByRadioPowerOff()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 856
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 858
    .local v0, "airplaneMode":I
    if-ne v0, v1, :cond_0

    .line 859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blockByRadioPowerOff(), airplaneMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 862
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private containsCdmaApp()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 789
    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCtCard(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 790
    const-string v3, "persist.radio.simswitch"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 792
    .local v0, "capabilitySlotId":I
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isDualCtCard()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    if-eq v3, v0, :cond_1

    .line 797
    .end local v0    # "capabilitySlotId":I
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "capabilitySlotId":I
    :cond_1
    move v1, v2

    .line 795
    goto :goto_0
.end method

.method private containsUsimApp(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 822
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_0

    .line 823
    const/4 v0, 0x1

    .line 825
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final executePendingSwitchRecord()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executePendingSwitchRecord, mPendingCardTypeSwitchRecord ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPendingModeSwitchRecord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 942
    const/4 v7, 0x0

    .line 943
    .local v7, "pendingRecord":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-eqz v0, :cond_2

    .line 944
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 945
    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 952
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executePendingSwitchRecord, mSvlteRatMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRoamingMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 954
    if-eqz v7, :cond_5

    .line 955
    iget v0, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSetInfo:I

    if-nez v0, :cond_3

    .line 956
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v0, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 963
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executePendingSwitchRecord, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 965
    iget-object v1, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iget-object v2, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iget-boolean v3, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mForceSwitch:Z

    iget v4, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPriority:I

    iget v5, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSetInfo:I

    iget-object v6, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingResponse:Landroid/os/Message;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ZIILandroid/os/Message;)Z

    .line 971
    iget-boolean v0, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mRatChangeInRoaming:Z

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    .line 988
    :cond_1
    return-void

    .line 946
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-eqz v0, :cond_0

    .line 947
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 948
    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    goto :goto_0

    .line 957
    :cond_3
    iget v0, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSetInfo:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 958
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iput-object v0, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    goto :goto_1

    .line 960
    :cond_4
    const-string v0, "executePendingSwitchRecord, no need to update any rat or roaming info"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 973
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    .line 974
    .local v9, "phoneCount":I
    const/4 v11, 0x0

    .local v11, "slotId":I
    :goto_2
    if-ge v11, v9, :cond_1

    .line 975
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    if-eq v11, v0, :cond_6

    .line 976
    invoke-static {v11}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 977
    .local v8, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v8, :cond_6

    instance-of v0, v8, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    if-eqz v0, :cond_6

    .line 978
    check-cast v8, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .end local v8    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v10

    .line 980
    .local v10, "ratController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    invoke-direct {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->hasPendingSwitchRecord()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executePendingSwitchRecord, notify slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 982
    invoke-direct {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->executePendingSwitchRecord()V

    .line 974
    .end local v10    # "ratController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2
.end method

.method private finishSwitchMode(ZZZI)V
    .locals 6
    .param p1, "forceFinish"    # Z
    .param p2, "svlteRatChanged"    # Z
    .param p3, "roamingChanged"    # Z
    .param p4, "priority"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSwitchMode, forceFinish = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", svlteRatChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", roamingChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", priority = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 915
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 916
    .local v1, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 917
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.intent.action.FINISH_SWITCH_SVLTE_RAT_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 918
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "svlteRatMode"

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 919
    const-string v2, "svlteRatSwitchPriority"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 920
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 921
    invoke-static {v0, v5, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 923
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    if-eqz p3, :cond_2

    .line 924
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.intent.action.FINISH_SWITCH_ROAMING_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 925
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 926
    const-string v2, "roamingMode"

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 927
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 928
    invoke-static {v0, v5, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 929
    const-string v2, "ril.rat.switching"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 934
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->executePendingSwitchRecord()V

    .line 935
    return-void
.end method

.method private getCardType()I
    .locals 3

    .prologue
    .line 783
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 784
    .local v0, "cardType":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCardType]: SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 785
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    aget v1, v0, v1

    return v1
.end method

.method public static getEngineerMode()I
    .locals 3

    .prologue
    .line 841
    const-string v1, "persist.radio.ct.ir.engmode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 843
    .local v0, "mode":I
    return v0
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v0

    return-object v0
.end method

.method public static getSvlteProjectType()I
    .locals 5

    .prologue
    .line 1517
    const/4 v2, 0x6

    .line 1518
    .local v2, "type":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->getC2KOMNetworkSelectionType()I

    move-result v0

    .line 1519
    .local v0, "nwSelType":I
    const-string v3, "ro.mtk.c2k.om.mode"

    const-string v4, "cllwtg"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1521
    .local v1, "omMode":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 1522
    const-string v3, "cllwtg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1523
    const/16 v2, 0x6a

    .line 1543
    :cond_0
    :goto_0
    return v2

    .line 1524
    :cond_1
    const-string v3, "cllwg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1525
    const/16 v2, 0x69

    goto :goto_0

    .line 1526
    :cond_2
    const-string v3, "cllg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1527
    const/16 v2, 0x68

    goto :goto_0

    .line 1528
    :cond_3
    const-string v3, "cwg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1529
    const/16 v2, 0x67

    goto :goto_0

    .line 1532
    :cond_4
    const-string v3, "cllwtg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1533
    const/4 v2, 0x6

    goto :goto_0

    .line 1534
    :cond_5
    const-string v3, "cllwg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1535
    const/4 v2, 0x5

    goto :goto_0

    .line 1536
    :cond_6
    const-string v3, "cllg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1537
    const/4 v2, 0x4

    goto :goto_0

    .line 1538
    :cond_7
    const-string v3, "cwg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1539
    const/4 v2, 0x3

    goto :goto_0
.end method

.method private final hasPendingSwitchRecord()Z
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isAirplaneModeFromSetting()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 366
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 368
    .local v0, "airplaneMode":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAirplaneModeFromSetting: airplaneMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 369
    return v0

    .end local v0    # "airplaneMode":Z
    :cond_0
    move v0, v1

    .line 366
    goto :goto_0
.end method

.method private isCdmaOn()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 413
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    if-ne v1, v2, :cond_0

    .line 427
    :goto_0
    return v0

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->isCdmaOn()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->isCdmaOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 417
    .local v0, "cdmaOn":Z
    :cond_1
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    if-ne v1, v2, :cond_2

    .line 418
    const/4 v0, 0x0

    .line 420
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->getC2KOMNetworkSelectionType()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdma4GSim()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v1, v2, :cond_2

    .line 423
    const/4 v0, 0x1

    .line 426
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cdmaOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isCtCard(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 813
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 814
    .local v0, "cardType":[I
    aget v2, v0, p1

    and-int/lit8 v2, v2, 0x4

    if-gtz v2, :cond_0

    aget v2, v0, p1

    and-int/lit8 v2, v2, 0x8

    if-gtz v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 817
    .local v1, "retCtCard":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCtCard, slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " retCtCard="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 818
    return v1

    .line 814
    .end local v1    # "retCtCard":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDualCtCard()Z
    .locals 4

    .prologue
    .line 801
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 802
    .local v0, "cardType":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 803
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCtCard(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 804
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDualCtCard slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 805
    const/4 v2, 0x0

    .line 809
    :goto_1
    return v2

    .line 802
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 808
    :cond_1
    const-string v2, "isDualCtCard true "

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 809
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isFixedSvlteMode()Z
    .locals 4

    .prologue
    .line 1506
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    if-nez v1, :cond_0

    const-string v1, "OP09"

    const-string v2, "ro.operator.optr"

    const-string v3, "OM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1508
    .local v0, "fixedSvlteMode":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " fixedSvlteMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1509
    return v0

    .line 1506
    .end local v0    # "fixedSvlteMode":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLteOn()Z
    .locals 3

    .prologue
    .line 401
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->isLteOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->isLteOn()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->isGsmOn()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->isGsmOn()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 404
    .local v0, "lteOn":Z
    :goto_0
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 405
    const/4 v0, 0x1

    .line 407
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lteOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 408
    return v0

    .line 401
    .end local v0    # "lteOn":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1547
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SRC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    return-void
.end method

.method private final needSwitchInAirplaneMode(Z)Z
    .locals 3
    .param p1, "forceSwitch"    # Z

    .prologue
    .line 866
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isFlightModePowerOffModemSupport()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 868
    .local v0, "result":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needSwitchInAirplaneMode(), result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 869
    return v0

    .line 866
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetRadioPowerOff(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 3
    .param p1, "svlteRatMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    const/4 v2, 0x0

    .line 847
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isLteOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 850
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdmaOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 853
    :cond_1
    return-void
.end method

.method private setRadioTechMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 5
    .param p1, "svlteRatMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 376
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsCdmaApp()Z

    move-result v0

    .line 377
    .local v0, "hasCdmaApp":Z
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 378
    iput v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    .line 379
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdma4GSim()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq p1, v1, :cond_1

    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne p2, v1, :cond_2

    .line 381
    :cond_1
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    .line 394
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioTechMode, hasCdmaApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " svlteRatMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "roamingMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mNewRadioTechMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 397
    return-void

    .line 383
    :cond_3
    if-eqz v0, :cond_7

    .line 384
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdma4GSim()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq p1, v1, :cond_5

    :cond_4
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne p2, v1, :cond_6

    .line 387
    :cond_5
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    goto :goto_0

    .line 388
    :cond_6
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne p2, v1, :cond_2

    .line 389
    iput v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    goto :goto_0

    .line 391
    :cond_7
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isFixedSvlteMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 392
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    goto :goto_0
.end method

.method private setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ILandroid/os/Message;)Z
    .locals 7
    .param p1, "svlteRatMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .param p3, "setInfo"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setSvlteRatMode] svlteRatMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRoamingMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 613
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ZIILandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method private setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ZIILandroid/os/Message;)Z
    .locals 9
    .param p1, "svlteRatMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .param p3, "forceSwitch"    # Z
    .param p4, "recordPriority"    # I
    .param p5, "pendingSetInfo"    # I
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->blockByRadioPowerOff()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->needSwitchInAirplaneMode(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mBlockByRadioPowerOff:Z

    .line 705
    sget-boolean v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sIsFlightModePowerOffMdSupport:Z

    if-nez v0, :cond_0

    .line 706
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 707
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 710
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->finishSwitchMode(ZZZI)V

    .line 711
    const-string v0, "setSvlteRatMode(), block by radio power off now."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 712
    const/4 v0, 0x0

    .line 779
    :goto_0
    return v0

    .line 715
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSvlteRatMode(), radioTechMode from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRadioTechMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSvlteRatMode(), SvlteRatMode from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSvlteRatMode(), RoamingMode from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSvlteRatMode(), sInSwitching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 720
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 721
    const/4 v0, 0x2

    if-ne p4, v0, :cond_3

    .line 722
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p6

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;ZII)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 732
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 725
    :cond_3
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p6

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;ZII)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 727
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    if-eqz v0, :cond_2

    .line 728
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mRatChangeInRoaming:Z

    .line 729
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    goto :goto_1

    .line 736
    :cond_4
    if-nez p3, :cond_6

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    if-nez v0, :cond_6

    .line 737
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    if-eqz v0, :cond_5

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSvlteRatMode(), In engineer mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 739
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 741
    :cond_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, p1, :cond_6

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v0, p2, :cond_6

    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRadioTechMode:I

    if-ne v0, v1, :cond_6

    .line 743
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->finishSwitchMode(ZZZI)V

    .line 744
    const-string v0, "setSvlteRatMode(), already in desired mode -> no need to switch, send finish broadcast"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 746
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 750
    :cond_6
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    if-eqz v0, :cond_8

    .line 751
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setRadioTechMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    .line 752
    const/4 v8, 0x0

    .line 753
    .local v8, "preferNetworkType":I
    const-string v0, "ro.mtk_svlte_lcg_support"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setSvlteRatMode(), 4M mRatChangeInRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " set to NETWORK_MODE_GSM_ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 756
    const/4 v8, 0x1

    .line 762
    :goto_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v8, p6}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSvlteRatMode, rat change in roaming, rat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNewRadioTechMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " svlteRatMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRoamingMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 768
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 769
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 770
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->finishSwitchMode(ZZZI)V

    .line 771
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    .line 772
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 758
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setSvlteRatMode(), NOT 4M! mRatChangeInRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " set to NETWORK_MODE_WCDMA_PREF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 774
    .end local v8    # "preferNetworkType":I
    :cond_8
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 775
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 776
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq v0, p1, :cond_9

    const/4 v0, 0x1

    :goto_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-eq v1, p2, :cond_a

    const/4 v1, 0x1

    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->startSwitchMode(ZZ)V

    .line 778
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatSwitchHandler:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;

    invoke-virtual {v0, p3, p6, p4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->doSwitch(ZLandroid/os/Message;I)V

    .line 779
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 776
    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private startSwitchMode(ZZ)V
    .locals 7
    .param p1, "svlteRatChanged"    # Z
    .param p2, "roamingChanged"    # Z

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x20000000

    const/4 v4, -0x1

    .line 891
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 892
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 893
    .local v1, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    if-eqz p1, :cond_0

    .line 894
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.intent.action.START_SWITCH_SVLTE_RAT_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 895
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 896
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 897
    invoke-static {v0, v6, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 899
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    if-eqz p2, :cond_1

    .line 900
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.intent.action.START_SWITCH_ROAMING_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 901
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 902
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 903
    invoke-static {v0, v6, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 904
    const-string v2, "ril.rat.switching"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private final updateAirplaneMode(Landroid/content/Intent;Landroid/os/Message;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 343
    .local v0, "airplaneMode":Z
    if-eqz p1, :cond_1

    .line 344
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAirplaneMode: intent state= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 350
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAirplaneMode,mAirplaneMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mAirplaneMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",airplaneMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 353
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mAirplaneMode:Z

    if-eq v0, v1, :cond_0

    .line 354
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mAirplaneMode:Z

    .line 355
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mAirplaneMode:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mBlockByRadioPowerOff:Z

    if-eqz v1, :cond_0

    .line 356
    sget-boolean v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sIsFlightModePowerOffMdSupport:Z

    if-nez v1, :cond_0

    .line 357
    const-string v1, "updateAirplaneMode: setSvlteRatMode"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ILandroid/os/Message;)Z

    .line 363
    :cond_0
    return-void

    .line 347
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isAirplaneModeFromSetting()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public allowRadioPowerOn(I)Z
    .locals 13
    .param p1, "phoneId"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1437
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v10, p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 1438
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCtDualModeSimCard(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1442
    :cond_0
    const-string v9, "allowRadioPowerOn return for non-svlte slot."

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    move v9, v8

    .line 1488
    :goto_0
    return v9

    .line 1446
    :cond_1
    const-string v10, "persist.radio.simswitch"

    invoke-static {v10, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    .line 1448
    .local v0, "capabilitySlotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isDualCtCard()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneIdByPhoneId(I)I

    move-result v10

    if-eq v0, v10, :cond_2

    .line 1450
    const-string v9, "allowRadioPowerOn return for dual ct card non-svlte slot."

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    move v9, v8

    .line 1451
    goto :goto_0

    .line 1455
    :cond_2
    iget v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    if-ne v10, v12, :cond_3

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v10

    if-ne v10, p1, :cond_3

    .line 1456
    const-string v8, "allowRadioPowerOn=false on CDMA in LWG mode for engineer mode."

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1459
    :cond_3
    iget v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    if-ne v10, v8, :cond_4

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v10

    if-ne v10, p1, :cond_4

    .line 1460
    const-string v8, "allowRadioPowerOn=false on LtePhone in CDMA Only for engineer mode."

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1464
    :cond_4
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 1465
    .local v6, "ratMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1468
    .local v7, "roamingMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    const/4 v2, 0x0

    .line 1469
    .local v2, "isGmssOn":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->getC2KOMNetworkSelectionType()I

    move-result v10

    if-nez v10, :cond_5

    .line 1470
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdma4GSim()Z

    move-result v10

    if-eqz v10, :cond_a

    sget-object v10, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v6, v10, :cond_a

    move v2, v8

    .line 1472
    :cond_5
    :goto_1
    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->isLteOn()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->isLteOn()Z

    move-result v10

    if-nez v10, :cond_7

    :cond_6
    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->isGsmOn()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->isGsmOn()Z

    move-result v10

    if-eqz v10, :cond_b

    :cond_7
    move v3, v8

    .line 1474
    .local v3, "lwgOn":Z
    :goto_2
    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->isCdmaOn()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->isCdmaOn()Z

    move-result v10

    if-nez v10, :cond_9

    :cond_8
    if-eqz v2, :cond_c

    :cond_9
    move v1, v8

    .line 1475
    .local v1, "cdmaOn":Z
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "allowRadioPowerOn lwgOn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", cdmaOn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isGmssOn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1476
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v10, p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 1478
    .local v5, "phoneType":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "allowRadioPowerOn, phoneId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", phoneType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ratMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", roamingMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1481
    if-ne v5, v12, :cond_d

    if-nez v1, :cond_d

    .line 1482
    const-string v8, "allowRadioPowerOn=false on C2K radio."

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "cdmaOn":Z
    .end local v3    # "lwgOn":Z
    .end local v5    # "phoneType":I
    :cond_a
    move v2, v9

    .line 1470
    goto/16 :goto_1

    :cond_b
    move v3, v9

    .line 1472
    goto/16 :goto_2

    .restart local v3    # "lwgOn":Z
    :cond_c
    move v1, v9

    .line 1474
    goto :goto_3

    .line 1484
    .restart local v1    # "cdmaOn":Z
    .restart local v5    # "phoneType":I
    :cond_d
    if-ne v5, v8, :cond_e

    if-nez v3, :cond_e

    .line 1485
    const-string v8, "allowRadioPowerOn=false on LWG radio."

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    move v9, v8

    .line 1488
    goto/16 :goto_0
.end method

.method public getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object v0
.end method

.method public getSvlteRatMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 431
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 433
    :pswitch_0
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 434
    const-string v0, "EM: CDMA only mode"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 435
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 460
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    goto :goto_0

    .line 437
    :cond_2
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 438
    const-string v0, "EM: CSFB only mode"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 439
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    .line 440
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ZIILandroid/os/Message;)Z

    goto :goto_1

    .line 443
    :cond_3
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 444
    const-string v0, "EM: LTE only mode"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 445
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    .line 446
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->toggleActivePhone(I)V

    goto :goto_1

    .line 448
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_RADIO_AVAILABLE, Auto mode, Reset to roaming mode to Home, mSvlteRatMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRoamingMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNewRadioTechMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCtDualModeSimCard(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, v1, :cond_1

    .line 457
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    goto/16 :goto_1

    .line 463
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_RADIO_NOT_AVAILABLE, RadioState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 464
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCtDualModeSimCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    :cond_6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 471
    :pswitch_2
    const-string v0, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE_CDMA"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 472
    sget-boolean v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sIsFlightModePowerOffMdSupport:Z

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRadioTechMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 477
    const-string v0, "Sending EVDOMODE=0"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/16 v2, 0x3eb

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->configEvdoMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 484
    :pswitch_3
    const-string v0, "EVENT_HANDLE_3G_RADIO_OFF. Sending ECTMODE=2"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v5

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v6

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 431
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isCdma4GSim()Z
    .locals 2

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getCardType()I

    move-result v0

    .line 834
    .local v0, "cardType":I
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsCdmaApp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsUsimApp(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 835
    const/4 v1, 0x1

    .line 837
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCtDualModeSimCard(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 1498
    const-string v1, " isCtDualModeSimCard, start"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1499
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdma4GSim()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1501
    .local v0, "ctDualModeSimCard":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isCtDualModeSimCard, ctDualModeSimCard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1502
    return v0

    .line 1499
    .end local v0    # "ctDualModeSimCard":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerSvlteRatModeChangedListener(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .prologue
    .line 877
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    :cond_0
    return-void
.end method

.method public setRadioTechnology(ILandroid/os/Message;)Z
    .locals 10
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRadioTechnology] networkType:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 626
    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    if-eqz v2, :cond_2

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRadioTechnology] In engineer mode:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 628
    and-int/lit8 v2, p1, 0x8

    if-gtz v2, :cond_0

    and-int/lit16 v2, p1, 0x80

    if-lez v2, :cond_1

    .line 630
    :cond_0
    const/4 v2, 0x2

    invoke-direct {p0, v8, v0, v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->finishSwitchMode(ZZZI)V

    .line 695
    :goto_0
    return v0

    .line 632
    :cond_1
    invoke-direct {p0, v8, v0, v0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->finishSwitchMode(ZZZI)V

    goto :goto_0

    .line 637
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 638
    .local v1, "svlteRatMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    const/4 v3, 0x0

    .line 639
    .local v3, "forceSwitch":Z
    and-int/lit8 v0, p1, 0x8

    if-gtz v0, :cond_3

    and-int/lit16 v0, p1, 0x80

    if-lez v0, :cond_4

    .line 641
    :cond_3
    const/4 v3, 0x1

    .line 643
    :cond_4
    const/16 v0, 0x10

    if-lt p1, v0, :cond_5

    .line 644
    and-int/lit8 v0, p1, 0x10

    if-lez v0, :cond_b

    and-int/lit8 v0, p1, 0x20

    if-lez v0, :cond_b

    and-int/lit8 v0, p1, 0x40

    if-lez v0, :cond_b

    .line 647
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 662
    :cond_5
    :goto_1
    const/4 v4, 0x1

    .line 663
    .local v4, "recordPriority":I
    and-int/lit8 v0, p1, 0x8

    if-gtz v0, :cond_6

    and-int/lit16 v0, p1, 0x80

    if-lez v0, :cond_7

    .line 665
    :cond_6
    const/4 v4, 0x2

    .line 669
    :cond_7
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v1, v0, :cond_8

    .line 670
    const-string v0, "persist.radio.simswitch"

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 672
    .local v7, "capabilityPhoneId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRadioTechnology] capabilityPhoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mSlotId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 675
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    if-eq v7, v0, :cond_8

    .line 676
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 680
    .end local v7    # "capabilityPhoneId":I
    :cond_8
    const/4 v5, 0x0

    .line 681
    .local v5, "pendingInfo":I
    iput-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 682
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-eqz v0, :cond_a

    .line 683
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSetInfo:I

    if-eqz v0, :cond_9

    .line 684
    const/4 v5, 0x2

    .line 685
    const-string v0, "[setRadioTechnology] update pendingRat info"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 687
    :cond_9
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 688
    iput-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 691
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRadioTechnology] networkType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " svlteRatMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mRoamingMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " forceSwitch: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " recordPriority: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 695
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ZIILandroid/os/Message;)Z

    move-result v0

    goto/16 :goto_0

    .line 648
    .end local v4    # "recordPriority":I
    .end local v5    # "pendingInfo":I
    :cond_b
    and-int/lit8 v0, p1, 0x10

    if-lez v0, :cond_c

    and-int/lit8 v0, p1, 0x20

    if-lez v0, :cond_c

    .line 650
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 652
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v0, v2, :cond_5

    .line 653
    iput-boolean v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    goto/16 :goto_1

    .line 656
    :cond_c
    and-int/lit8 v0, p1, 0x40

    if-lez v0, :cond_d

    .line 657
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    goto/16 :goto_1

    .line 659
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRadioTechnology] mode not supported: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z
    .locals 7
    .param p1, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 569
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    if-eqz v0, :cond_0

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRoamingMode] In engineer mode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 571
    const/4 v0, 0x0

    .line 599
    :goto_0
    return v0

    .line 573
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRoamingMode]roamingMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",mRoamingMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 577
    const/4 v5, 0x1

    .line 578
    .local v5, "pendingInfo":I
    const/4 v4, 0x1

    .line 579
    .local v4, "priority":I
    const/4 v3, 0x0

    .line 581
    .local v3, "forSwitch":Z
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 583
    .local v1, "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPriority:I

    .line 584
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mForceSwitch:Z

    .line 585
    iput-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 597
    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setRadioTechMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    move-object v0, p0

    move-object v2, p1

    move-object v6, p2

    .line 599
    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ZIILandroid/os/Message;)Z

    move-result v0

    goto :goto_0

    .line 586
    .end local v1    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-eqz v0, :cond_3

    .line 587
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSetInfo:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 588
    const-string v0, "[setRoamingMode] should update pending info"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 589
    const/4 v5, 0x2

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 592
    .restart local v1    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mForceSwitch:Z

    .line 593
    iput-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    goto :goto_1

    .line 595
    .end local v1    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .restart local v1    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    goto :goto_1
.end method

.method public setRoamingMode(ZLandroid/os/Message;)Z
    .locals 2
    .param p1, "roaming"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 557
    if-eqz p1, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 559
    .local v0, "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z

    move-result v1

    return v1

    .line 557
    .end local v0    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    goto :goto_0
.end method

.method public setSvlteRatMode(ILandroid/os/Message;)Z
    .locals 1
    .param p1, "svlteRatMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 522
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Landroid/os/Message;)Z
    .locals 2
    .param p1, "svlteRatMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 533
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget-object v0, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 535
    .local v0, "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 539
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ILandroid/os/Message;)Z

    move-result v1

    return v1

    .line 537
    .end local v0    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .restart local v0    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    goto :goto_0
.end method

.method public unregisterSvlteRatModeChangedListener(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .prologue
    .line 887
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 888
    return-void
.end method