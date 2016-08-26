.class public Lcom/mediatek/internal/telephony/RadioManager;
.super Landroid/os/Handler;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/RadioManager$2;,
        Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$SimStateChangedRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;
    }
.end annotation


# static fields
.field public static final ACTION_FORCE_SET_RADIO_POWER:Ljava/lang/String; = "com.mediatek.internal.telephony.RadioManager.intent.action.FORCE_SET_RADIO_POWER"

.field private static final ACTION_WIFI_ONLY_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_WIFI_ONLY_MODE"

.field private static final AIRPLANE_MODE_OFF:Z = false

.field private static final AIRPLANE_MODE_ON:Z = true

.field private static final C2K_5M:Ljava/lang/String; = "CLLWG"

.field private static final CARD_TYPE_CSIM:I = 0x4

.field private static final CARD_TYPE_RUIM:I = 0x8

.field private static final CARD_TYPE_SIM:I = 0x1

.field private static final CARD_TYPE_USIM:I = 0x2

.field private static final CDMA_PROPERTY_SILENT_REBOOT_MD:Ljava/lang/String; = "cdma.ril.eboot"

.field private static final EVENT_RADIO_AVAILABLE:I = 0x1

.field private static final EVENT_VIRTUAL_SIM_ON:I = 0x2

.field private static final ICC_READ_NOT_READY:Z = false

.field private static final ICC_READ_READY:Z = true

.field private static final INITIAL_RETRY_INTERVAL_MSEC:I = 0xc8

.field private static final INVALID_PHONE_ID:I = -0x1

.field private static final IS_INDIAN:Ljava/lang/String; = "1"

.field private static final IS_NOT_SILENT_REBOOT:Ljava/lang/String; = "0"

.field private static final IS_SILENT_REBOOT:Ljava/lang/String; = "1"

.field static final LOG_TAG:Ljava/lang/String; = "RadioManager"

.field private static final MODEM_POWER_OFF:Z = false

.field private static final MODEM_POWER_ON:Z = true

.field private static final MODE_PHONE1_ONLY:I = 0x1

.field private static final MODE_PHONE2_ONLY:I = 0x2

.field private static final MODE_PHONE3_ONLY:I = 0x4

.field private static final MODE_PHONE4_ONLY:I = 0x8

.field private static final NO_NAME:Ljava/lang/String; = "NO_NAME"

.field private static final NO_SIM_INSERTED:I = 0x0

.field private static final PREF_CATEGORY_RADIO_STATUS:Ljava/lang/String; = "RADIO_STATUS"

.field private static final PROPERTY_CONFIG_EMDSTATUS_SEND:Ljava/lang/String; = "ril.cdma.emdstatus.send"

.field private static final PROPERTY_ICCID_SIM_C2K:Ljava/lang/String; = "ril.iccid.sim1_c2k"

.field private static final PROPERTY_ICCID_SIM_LTE:Ljava/lang/String; = "ril.iccid.sim1_lte"

.field private static final PROPERTY_RIL_CARD_TYPE_SET:Ljava/lang/String; = "gsm.ril.cardtypeset"

.field private static final PROPERTY_RIL_CARD_TYPE_SET_2:Ljava/lang/String; = "gsm.ril.cardtypeset.2"

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static final PROPERTY_SILENT_REBOOT_MD1:Ljava/lang/String; = "gsm.ril.eboot"

.field private static final PROPERTY_SILENT_REBOOT_MD2:Ljava/lang/String; = "gsm.ril.eboot.2"

.field private static final RADIO_POWER_OFF:Z = false

.field private static final RADIO_POWER_ON:Z = true

.field private static final SIM_INSERTED:I = 0x1

.field private static final SIM_NOT_INITIALIZED:I = -0x1

.field private static final STRING_NO_SIM_INSERTED:Ljava/lang/String; = "N/A"

.field private static final WIFI_ONLY_MODE_OFF:Z = false

.field private static final WIFI_ONLY_MODE_ON:Z = true

.field private static mIccidPreference:Landroid/content/SharedPreferences;

.field protected static mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/mediatek/internal/telephony/IRadioPower;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;


# instance fields
.field private PROPERTY_ICCID_SIM:[Ljava/lang/String;

.field private bIsInIpoShutdown:Z

.field private bIsQueueIpoShutdown:Z

.field private mAirplaneMode:Z

.field private mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

.field private mBitmapForPhoneCount:I

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mImsState:I

.field private mImsSwitchController:Lcom/mediatek/internal/telephony/ImsSwitchController;

.field private mInitializeWaitCounter:[I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsEccCall:Z

.field private mModemPower:[Z

.field private mPhoneCount:I

.field private mSimInsertedStatus:[I

.field private mWifiOnlyMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    .line 164
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gsm.ril.fulluicctype"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gsm.ril.fulluicctype.2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gsm.ril.fulluicctype.3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gsm.ril.fulluicctype.4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneCount"    # I
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 217
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 110
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    .line 114
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    .line 152
    iput-object v11, p0, Lcom/mediatek/internal/telephony/RadioManager;->mImsSwitchController:Lcom/mediatek/internal/telephony/ImsSwitchController;

    .line 157
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string v8, "ril.iccid.sim1"

    aput-object v8, v5, v6

    const-string v8, "ril.iccid.sim2"

    aput-object v8, v5, v7

    const-string v8, "ril.iccid.sim3"

    aput-object v8, v5, v10

    const-string v8, "ril.iccid.sim4"

    aput-object v8, v5, v9

    iput-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    .line 188
    iput v6, p0, Lcom/mediatek/internal/telephony/RadioManager;->mImsState:I

    .line 282
    new-instance v5, Lcom/mediatek/internal/telephony/RadioManager$1;

    invoke-direct {v5, p0}, Lcom/mediatek/internal/telephony/RadioManager$1;-><init>(Lcom/mediatek/internal/telephony/RadioManager;)V

    iput-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "airplane_mode_on"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 220
    .local v0, "airplaneMode":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "user_selected_wfc_preference"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 224
    .local v4, "wifionlyMode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Initialize RadioManager under airplane mode:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " wifi only mode:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 226
    new-array v5, p2, [I

    iput-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    .line 227
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 228
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    const/4 v8, -0x1

    aput v8, v5, v2

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    :cond_0
    new-array v5, p2, [I

    iput-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mInitializeWaitCounter:[I

    .line 231
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 232
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mInitializeWaitCounter:[I

    aput v6, v5, v2

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 235
    :cond_1
    iput-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    .line 236
    if-nez v0, :cond_2

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    .line 237
    if-ne v9, v4, :cond_3

    move v5, v7

    :goto_3
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    .line 238
    iput-object p3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 239
    iput p2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    .line 240
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->convertPhoneCountIntoBitmap(I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    .line 241
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    const-string v8, "RADIO_STATUS"

    invoke-virtual {v5, v8, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    sput-object v5, Lcom/mediatek/internal/telephony/RadioManager;->mIccidPreference:Landroid/content/SharedPreferences;

    .line 242
    iget v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    new-array v5, v5, [Z

    iput-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:[Z

    .line 244
    new-instance v5, Lcom/mediatek/internal/telephony/ImsSwitchController;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    iget-object v9, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v5, v6, v8, v9}, Lcom/mediatek/internal/telephony/ImsSwitchController;-><init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mImsSwitchController:Lcom/mediatek/internal/telephony/ImsSwitchController;

    .line 246
    const/4 v2, 0x0

    :goto_4
    if-ge v2, p2, :cond_4

    .line 247
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:[Z

    aput-boolean v7, v5, v2

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_2
    move v5, v7

    .line 236
    goto :goto_2

    :cond_3
    move v5, v6

    .line 237
    goto :goto_3

    .line 250
    :cond_4
    const-string v5, "ro.mtk_bsp_package"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 251
    const-string v5, "Not BSP Package, register intent!!!"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 252
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 253
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v5, "com.mediatek.internal.telephony.RadioManager.intent.action.FORCE_SET_RADIO_POWER"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v5, "android.intent.action.ACTION_WIFI_ONLY_MODE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    const/4 v2, 0x0

    :goto_5
    if-ge v2, p2, :cond_5

    .line 260
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 261
    .local v3, "index":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v2

    invoke-interface {v5, p0, v10, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVirtualSimOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 262
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v2

    invoke-interface {v5, p0, v7, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 268
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "index":Ljava/lang/Integer;
    :cond_5
    new-instance v5, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    invoke-direct {v5, v6, v7}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    .line 271
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/RadioManager;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->onReceiveSimStateChangedIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/RadioManager;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->onReceiveForceSetRadioPowerIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private checkForCTACase()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1154
    const/4 v1, 0x1

    .line 1155
    .local v1, "isCTACase":Z
    const-string v2, "Check For CTA case!"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1156
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    if-eq v2, v4, :cond_2

    .line 1157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v2, :cond_3

    .line 1158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check For CTA case: mSimInsertedStatus["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1159
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aget v2, v2, v0

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1160
    :cond_0
    const/4 v1, 0x0

    .line 1157
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1164
    .end local v0    # "i":I
    :cond_2
    const/4 v1, 0x0

    .line 1167
    :cond_3
    if-nez v1, :cond_4

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsEccCall:Z

    if-nez v2, :cond_4

    .line 1168
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->turnOffCTARadioIfNecessary()V

    .line 1170
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CTA case: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1171
    return v1
.end method

.method private containsGsm(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 1137
    and-int/lit8 v0, p1, 0x1

    if-gtz v0, :cond_0

    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1

    .line 1139
    :cond_0
    const/4 v0, 0x1

    .line 1141
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertPhoneCountIntoBitmap(I)I
    .locals 4
    .param p1, "phoneCount"    # I

    .prologue
    .line 274
    const/4 v1, 0x0

    .line 275
    .local v1, "ret":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 276
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Convert phoneCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " into bitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 279
    return v1
.end method

.method private doIpoShutDown()V
    .locals 2

    .prologue
    .line 622
    const-string v0, "do IPO shutdown"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 623
    const-string v0, "gsm.ril.cardtypeset"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v0, "gsm.ril.cardtypeset.2"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v0, "ril.cdma.emdstatus.send"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const/4 v0, 0x0

    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    .line 627
    return-void
.end method

.method private eventIdtoString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 1646
    const/4 v0, 0x0

    .line 1647
    .local v0, "str":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1657
    :goto_0
    return-object v0

    .line 1649
    :pswitch_0
    const-string v0, "EVENT_RADIO_AVAILABLE"

    .line 1650
    goto :goto_0

    .line 1652
    :pswitch_1
    const-string v0, "EVENT_VIRTUAL_SIM_ON"

    .line 1653
    goto :goto_0

    .line 1647
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private findMainCapabilityPhoneId()I
    .locals 4

    .prologue
    .line 743
    const/4 v0, 0x0

    .line 744
    .local v0, "result":I
    const-string v2, "persist.radio.simswitch"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 746
    .local v1, "switchStatus":I
    add-int/lit8 v0, v1, -0x1

    .line 747
    if-ltz v0, :cond_0

    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-lt v0, v2, :cond_1

    .line 748
    :cond_0
    const/4 v0, 0x0

    .line 750
    .end local v0    # "result":I
    :cond_1
    return v0
.end method

.method private getAirplaneMode()Z
    .locals 1

    .prologue
    .line 1604
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    return v0
.end method

.method private getCiIndex(Landroid/os/Message;)I
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1662
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1669
    .local v1, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 1670
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1671
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 1679
    .restart local v1    # "index":Ljava/lang/Integer;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 1672
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/AsyncResult;

    if-eqz v2, :cond_0

    .line 1673
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1674
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1675
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "index":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private getFullCardType(I)I
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 1708
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 1709
    :cond_0
    const-string v4, "RadioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFullCardType invalid slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    const/4 v2, 0x0

    .line 1728
    :goto_0
    return v2

    .line 1712
    :cond_1
    sget-object v4, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1713
    .local v1, "cardType":Ljava/lang/String;
    const-string v4, "RadioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFullCardType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1715
    .local v0, "appType":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1716
    .local v2, "fullType":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 1717
    const-string v4, "USIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1718
    or-int/lit8 v2, v2, 0x2

    .line 1716
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1719
    :cond_3
    const-string v4, "SIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1720
    or-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1721
    :cond_4
    const-string v4, "CSIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1722
    or-int/lit8 v2, v2, 0x8

    goto :goto_2

    .line 1723
    :cond_5
    const-string v4, "RUIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1724
    or-int/lit8 v2, v2, 0x4

    goto :goto_2

    .line 1727
    :cond_6
    const-string v4, "RadioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fullType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/RadioManager;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    return-object v0
.end method

.method private getSimInsertedStatus(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 864
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 865
    const/4 p1, 0x0

    .line 869
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aget v0, v0, p1

    return v0

    .line 866
    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 867
    const/4 p1, 0x1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/RadioManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneCount"    # I
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 199
    const-class v1, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v1

    .line 200
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager;-><init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/mediatek/internal/telephony/RadioManager;->sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    .line 203
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    monitor-exit v1

    return-object v0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isAllowRadioPowerOn(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 1737
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->allowRadioPowerOn(I)Z

    move-result v0

    return v0
.end method

.method private isCdmaOnly(I)Z
    .locals 3
    .param p1, "cardType"    # I

    .prologue
    .line 1766
    const-string v0, "RadioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdmaOnly, cardType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 1770
    :cond_0
    const/4 v0, 0x1

    .line 1772
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFlightModePowerOffModemEnabled()Z
    .locals 2

    .prologue
    .line 1507
    const-string v0, "ril.testmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1508
    const-string v0, "ril.test.poweroffmd"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1510
    :goto_0
    return v0

    :cond_0
    const-string v0, "ro.mtk_flight_mode_power_off_md"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gsm.sim.ril.testsim"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gsm.sim.ril.testsim.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gsm.sim.ril.testsim.3"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gsm.sim.ril.testsim.4"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGsmCard(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 1145
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->containsGsm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    const/4 v0, 0x1

    .line 1150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIccIdReady(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1026
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v0

    .line 1027
    .local v0, "iccId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1028
    .local v1, "ret":Z
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1029
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ICC read not ready for phone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1030
    const/4 v1, 0x0

    .line 1035
    :goto_0
    return v1

    .line 1032
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ICC read ready, iccid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1033
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isMSimModeSupport()Z
    .locals 2

    .prologue
    .line 1591
    const-string v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1592
    const/4 v0, 0x0

    .line 1594
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isModemPowerOff(I)Z
    .locals 7
    .param p0, "phoneId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1522
    const/4 v2, 0x0

    .line 1523
    .local v2, "powerOff":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v1

    .line 1525
    .local v1, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1534
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    .line 1535
    .local v0, "cdmaSlot":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isModemPowerOff: cdmaSlot="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ,phoneId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1536
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v3, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    .line 1537
    const-string v3, "isModemPowerOff: C2K phone"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1538
    if-nez v0, :cond_2

    .line 1539
    const/4 p0, 0x0

    .line 1552
    .end local v0    # "cdmaSlot":I
    :cond_0
    :goto_0
    sget-object v3, Lcom/mediatek/internal/telephony/RadioManager$2;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    .line 1574
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1576
    if-nez p0, :cond_a

    .line 1577
    const-string v3, "ril.ipo.radiooff"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v2, v4

    .line 1586
    :cond_1
    :goto_1
    return v2

    .line 1541
    .restart local v0    # "cdmaSlot":I
    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    .line 1544
    :cond_3
    const-string v3, "isModemPowerOff: GSM phone"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1545
    if-nez v0, :cond_4

    .line 1546
    const/4 p0, 0x1

    goto :goto_0

    .line 1548
    :cond_4
    const/4 p0, 0x0

    goto :goto_0

    .line 1554
    .end local v0    # "cdmaSlot":I
    :pswitch_0
    const-string v3, "ril.ipo.radiooff"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v2, v4

    .line 1555
    :goto_2
    goto :goto_1

    :cond_5
    move v2, v5

    .line 1554
    goto :goto_2

    .line 1557
    :pswitch_1
    packed-switch p0, :pswitch_data_1

    .line 1565
    const/4 v2, 0x1

    .line 1566
    goto :goto_1

    .line 1559
    :pswitch_2
    const-string v3, "ril.ipo.radiooff"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v2, v4

    .line 1560
    :goto_3
    goto :goto_1

    :cond_6
    move v2, v5

    .line 1559
    goto :goto_3

    .line 1562
    :pswitch_3
    const-string v3, "ril.ipo.radiooff.2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v2, v4

    .line 1563
    :goto_4
    goto :goto_1

    :cond_7
    move v2, v5

    .line 1562
    goto :goto_4

    .line 1571
    :pswitch_4
    const-string v3, "ril.ipo.radiooff"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v2, v4

    .line 1572
    :goto_5
    goto :goto_1

    :cond_8
    move v2, v5

    .line 1571
    goto :goto_5

    :cond_9
    move v2, v5

    .line 1577
    goto :goto_1

    .line 1578
    :cond_a
    if-ne p0, v4, :cond_1

    .line 1579
    const-string v3, "ril.ipo.radiooff.2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v2, v4

    :goto_6
    goto :goto_1

    :cond_b
    move v2, v5

    goto :goto_6

    .line 1582
    :cond_c
    const-string v3, "ril.ipo.radiooff"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v2, v4

    :goto_7
    goto :goto_1

    :cond_d
    move v2, v5

    goto :goto_7

    .line 1552
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 1557
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isMtkIndiaC2k5MSupport()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1247
    const-string v4, "CLLWG"

    const-string v5, "ro.mtk.c2k.om.mode"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 1249
    .local v1, "isSupport":Z
    :goto_0
    const-string v4, "1"

    const-string v5, "ro.mtk_c2k_om_nw_sel_type"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 1252
    .local v0, "isIndia":Z
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMtkC2k5M(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isIndia(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1254
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_2
    return v2

    .end local v0    # "isIndia":Z
    .end local v1    # "isSupport":Z
    :cond_0
    move v1, v3

    .line 1247
    goto :goto_0

    .restart local v1    # "isSupport":Z
    :cond_1
    move v0, v3

    .line 1249
    goto :goto_1

    .restart local v0    # "isIndia":Z
    :cond_2
    move v2, v3

    .line 1254
    goto :goto_2
.end method

.method private isNonCdma(I)Z
    .locals 3
    .param p1, "cardType"    # I

    .prologue
    .line 1777
    const-string v0, "RadioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNonCdma, cardType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    .line 1780
    const/4 v0, 0x1

    .line 1782
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPowerOnFeatureAllClosed()Z
    .locals 2

    .prologue
    .line 1491
    const/4 v0, 0x1

    .line 1492
    .local v0, "ret":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1493
    const/4 v0, 0x0

    .line 1499
    :cond_0
    :goto_0
    return v0

    .line 1494
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isRadioOffPowerOffModemEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1495
    const/4 v0, 0x0

    goto :goto_0

    .line 1496
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1497
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRadioOffPowerOffModemEnabled()Z
    .locals 2

    .prologue
    .line 1503
    const-string v0, "ro.mtk_radiooff_power_off_md"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUnderCryptKeeper()Z
    .locals 2

    .prologue
    .line 554
    const-string v0, "ro.crypto.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "encrypted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trigger_restart_min_framework"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    const-string v0, "[Special Case] Under CryptKeeper, Not to turn on/off modem"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 557
    const/4 v0, 0x1

    .line 560
    :goto_0
    return v0

    .line 559
    :cond_0
    const-string v0, "[Special Case] Not Under CryptKeeper"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 560
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidPhoneId(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 425
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 426
    :cond_0
    const/4 v0, 0x0

    .line 428
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1704
    const-string v0, "RadioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RadioManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    return-void
.end method

.method private static declared-synchronized notifyRadioPowerChange(ZI)V
    .locals 6
    .param p0, "power"    # Z
    .param p1, "phoneId"    # I

    .prologue
    .line 1696
    const-class v4, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1697
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mediatek/internal/telephony/IRadioPower;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyRadioPowerChange: user:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1698
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/IRadioPower;

    .line 1699
    .local v2, "iRadioPower":Lcom/mediatek/internal/telephony/IRadioPower;
    invoke-interface {v2, p0, p1}, Lcom/mediatek/internal/telephony/IRadioPower;->notifyRadioPowerChange(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1696
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mediatek/internal/telephony/IRadioPower;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "iRadioPower":Lcom/mediatek/internal/telephony/IRadioPower;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1701
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit v4

    return-void
.end method

.method private onReceiveForceSetRadioPowerIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0xb

    const/16 v7, 0xa

    const/4 v6, -0x1

    const/4 v3, 0x1

    .line 398
    const/4 v1, 0x0

    .line 399
    .local v1, "phoneId":I
    const-string v4, "mode"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 400
    .local v0, "mode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "force set radio power, mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 401
    if-ne v0, v6, :cond_1

    .line 402
    const-string v3, "Invalid mode, MSIM_MODE intent has no extra value"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 422
    :cond_0
    return-void

    .line 405
    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v1, v4, :cond_0

    .line 406
    shl-int v4, v3, v1

    and-int/2addr v4, v0

    if-nez v4, :cond_3

    const/4 v2, 0x0

    .line 408
    .local v2, "singlePhonePower":Z
    :goto_1
    if-ne v3, v2, :cond_2

    .line 409
    invoke-virtual {p0, v3, v1}, Lcom/mediatek/internal/telephony/RadioManager;->forceSetRadioPower(ZI)V

    .line 410
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v4

    if-ne v1, v4, :cond_2

    .line 412
    if-nez v1, :cond_4

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/RadioManager;->isAllowRadioPowerOn(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 414
    invoke-virtual {p0, v3, v7}, Lcom/mediatek/internal/telephony/RadioManager;->forceSetRadioPower(ZI)V

    .line 405
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "singlePhonePower":Z
    :cond_3
    move v2, v3

    .line 406
    goto :goto_1

    .line 415
    .restart local v2    # "singlePhonePower":Z
    :cond_4
    if-ne v1, v3, :cond_2

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/RadioManager;->isAllowRadioPowerOn(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 417
    invoke-virtual {p0, v3, v8}, Lcom/mediatek/internal/telephony/RadioManager;->forceSetRadioPower(ZI)V

    goto :goto_2
.end method

.method private onReceiveSimStateChangedIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0xb

    const/16 v9, 0xa

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 312
    const-string v5, "ss"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "simStatus":Ljava/lang/String;
    const-string v5, "phone"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 317
    .local v2, "phoneId":I
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->isValidPhoneId(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INTENT:Invalid phone id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", do nothing!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INTENT:SIM_STATE_CHANGED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sim status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "gsm.ril.cardtypeset"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "gsm.ril.cardtypeset.2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 329
    :cond_2
    const/4 v0, 0x1

    .line 331
    .local v0, "desiredRadioPower":Z
    const-string v5, "READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "LOCKED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "LOADED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 334
    :cond_3
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aput v7, v5, v2

    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/RadioManager;->simStatusToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 338
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "iccid":Ljava/lang/String;
    const-string v5, "N/A"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 340
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "LOADED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v5

    if-ne v2, v5, :cond_4

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimWithCsim(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 344
    const-string v5, "CT 4G card SIM state loaded, c2k iccid not ready, wait for it..."

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 345
    new-instance v3, Lcom/mediatek/internal/telephony/RadioManager$SimStateChangedRunnable;

    invoke-direct {v3, p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$SimStateChangedRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;Landroid/content/Intent;)V

    .line 346
    .local v3, "simStateChangedRunnable":Lcom/mediatek/internal/telephony/RadioManager$SimStateChangedRunnable;
    const-wide/16 v6, 0xc8

    invoke-virtual {p0, v3, v6, v7}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 349
    .end local v3    # "simStateChangedRunnable":Lcom/mediatek/internal/telephony/RadioManager$SimStateChangedRunnable;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":SIM ready but ICCID not ready, do nothing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 352
    :cond_5
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v5

    if-ne v2, v5, :cond_6

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isHaveCard(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": No card, do nothing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 359
    :cond_6
    const/4 v0, 0x1

    .line 360
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v5, :cond_0

    .line 361
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Radio Power due to SIM_STATE_CHANGED, power: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 363
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimWithCsim(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SVLTE phone id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SIM_STATE_CHANGED, need to check card type for LTE phone radio"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 368
    if-nez v2, :cond_7

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/RadioManager;->isAllowRadioPowerOn(I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getEngineerMode()I

    move-result v5

    if-eq v5, v7, :cond_7

    .line 371
    invoke-virtual {p0, v0, v9}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    goto/16 :goto_0

    .line 372
    :cond_7
    if-ne v2, v7, :cond_0

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/RadioManager;->isAllowRadioPowerOn(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getEngineerMode()I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 375
    invoke-virtual {p0, v0, v10}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    goto/16 :goto_0

    .line 381
    .end local v1    # "iccid":Ljava/lang/String;
    :cond_8
    const-string v5, "ABSENT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 382
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v5

    if-ne v2, v5, :cond_9

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isHaveCard(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 387
    :cond_9
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aput v8, v5, v2

    .line 388
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/RadioManager;->simStatusToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 389
    const/4 v0, 0x0

    .line 390
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v5, :cond_0

    .line 391
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Radio Power due to SIM_STATE_CHANGED, power: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    goto/16 :goto_0
.end method

.method private putIccIdToPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 1460
    if-eqz p2, :cond_0

    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add radio off SIM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1462
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1464
    :cond_0
    return-void
.end method

.method private readIccIdUsingPhoneId(I)Ljava/lang/String;
    .locals 14
    .param p1, "phoneId"    # I

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1039
    const/4 v6, 0x0

    .line 1040
    .local v6, "ret":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1041
    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1042
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Common ICCID for phone "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    move-object v7, v6

    .line 1133
    .end local v6    # "ret":Ljava/lang/String;
    .local v7, "ret":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 1046
    .end local v7    # "ret":Ljava/lang/String;
    .restart local v6    # "ret":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 1047
    .local v4, "phoneCount":I
    new-array v0, v4, [I

    .line 1048
    .local v0, "cardType":[I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->isSvlteTestSimMode()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1049
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 1050
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->getFullCardType(I)I

    move-result v8

    aput v8, v0, v1

    .line 1051
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SvlteTestSimMode,  cardType["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v0, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1049
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1054
    .end local v1    # "i":I
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 1056
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "solution2 readIccIdUsingPhoneId: phoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cardType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1059
    if-eqz p1, :cond_3

    const/16 v8, 0xa

    if-ne p1, v8, :cond_e

    .line 1061
    :cond_3
    invoke-static {v11}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v5

    .line 1062
    .local v5, "radioTechMode":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readIccIdUsingPhoneId: slot1 radioTechMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1063
    if-ne v5, v13, :cond_9

    .line 1065
    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1066
    .local v3, "iccidCommon":Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "N/A"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    aget v8, v0, v11

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/RadioManager;->isCdmaOnly(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1068
    const-string v8, "ril.iccid.sim1_c2k"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1069
    .local v2, "iccidC2K":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v8

    if-nez v8, :cond_6

    if-eqz v2, :cond_6

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1070
    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-static {v8, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readIccIdUsingPhoneId: update iccid[0] use iccidC2K:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1077
    .end local v2    # "iccidC2K":Ljava/lang/String;
    :cond_5
    :goto_2
    if-nez p1, :cond_8

    .line 1079
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->isSvlteTestSimMode()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1132
    .end local v3    # "iccidCommon":Ljava/lang/String;
    .end local v5    # "radioTechMode":I
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ICCID for phone "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    move-object v7, v6

    .line 1133
    .end local v6    # "ret":Ljava/lang/String;
    .restart local v7    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 1073
    .end local v7    # "ret":Ljava/lang/String;
    .restart local v2    # "iccidC2K":Ljava/lang/String;
    .restart local v3    # "iccidCommon":Ljava/lang/String;
    .restart local v5    # "radioTechMode":I
    .restart local v6    # "ret":Ljava/lang/String;
    :cond_6
    const-string v8, "readIccIdUsingPhoneId: CDMA only iccid not ready"

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1079
    .end local v2    # "iccidC2K":Ljava/lang/String;
    :cond_7
    const-string v8, "ril.iccid.sim1_c2k"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 1083
    :cond_8
    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 1085
    .end local v3    # "iccidCommon":Ljava/lang/String;
    :cond_9
    if-ne v5, v12, :cond_d

    .line 1086
    if-eqz p1, :cond_a

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->getFullCardType(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/RadioManager;->isGsmCard(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1087
    :cond_a
    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 1090
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->isSvlteTestSimMode()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_4
    goto :goto_3

    :cond_c
    const-string v8, "ril.iccid.sim1_c2k"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 1095
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readIccIdUsingPhoneId: invalid radioTechMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1097
    .end local v5    # "radioTechMode":I
    :cond_e
    if-eq p1, v10, :cond_f

    const/16 v8, 0xb

    if-ne p1, v8, :cond_18

    .line 1099
    :cond_f
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v5

    .line 1100
    .restart local v5    # "radioTechMode":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readIccIdUsingPhoneId: slot2 radioTechMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1101
    if-ne v5, v13, :cond_14

    .line 1103
    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1104
    .restart local v3    # "iccidCommon":Ljava/lang/String;
    if-eqz v3, :cond_10

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string v8, "N/A"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    :cond_10
    aget v8, v0, v10

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/RadioManager;->isCdmaOnly(I)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1106
    const-string v8, "ril.iccid.sim1_c2k"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1107
    .restart local v2    # "iccidC2K":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v8

    if-ne v8, v10, :cond_12

    if-eqz v2, :cond_12

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 1108
    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-static {v8, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readIccIdUsingPhoneId: update iccid[1] use iccidC2K:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1115
    .end local v2    # "iccidC2K":Ljava/lang/String;
    :cond_11
    :goto_5
    if-ne p1, v10, :cond_13

    .line 1116
    const-string v8, "ril.iccid.sim1_c2k"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 1111
    .restart local v2    # "iccidC2K":Ljava/lang/String;
    :cond_12
    const-string v8, "readIccIdUsingPhoneId: CDMA only iccid not ready"

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 1118
    .end local v2    # "iccidC2K":Ljava/lang/String;
    :cond_13
    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 1120
    .end local v3    # "iccidCommon":Ljava/lang/String;
    :cond_14
    if-ne v5, v12, :cond_17

    .line 1121
    if-eq p1, v10, :cond_15

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->getFullCardType(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/RadioManager;->isGsmCard(I)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1122
    :cond_15
    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 1124
    :cond_16
    const-string v8, "ril.iccid.sim1_c2k"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 1127
    :cond_17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readIccIdUsingPhoneId: invalid radioTechMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1130
    .end local v5    # "radioTechMode":I
    :cond_18
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readIccIdUsingPhoneId: invalid phoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private refreshIccIdPreference(ZLjava/lang/String;)V
    .locals 2
    .param p1, "power"    # Z
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 1449
    const-string v1, "refresh iccid preference"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1450
    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager;->mIccidPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1451
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_0

    const-string v1, "N/A"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1452
    invoke-direct {p0, v0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->putIccIdToPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 1456
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1457
    return-void

    .line 1454
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->removeIccIdFromPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private refreshSimSetting(ZI)V
    .locals 6
    .param p1, "radioPower"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const/16 v4, 0xb

    const/16 v3, 0xa

    const/4 v5, 0x1

    .line 1196
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1197
    if-eqz p1, :cond_3

    .line 1198
    if-ne p2, v3, :cond_2

    .line 1199
    const/4 p2, 0x0

    .line 1213
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "msim_mode_setting"

    iget v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1215
    .local v1, "simMode":I
    move v0, v1

    .line 1217
    .local v0, "oldMode":I
    if-nez p1, :cond_5

    .line 1218
    shl-int v2, v5, p2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    .line 1223
    :goto_1
    if-eq v1, v0, :cond_1

    .line 1224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refresh MSIM mode setting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1225
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "msim_mode_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1228
    .end local v0    # "oldMode":I
    .end local v1    # "simMode":I
    :cond_1
    :goto_2
    return-void

    .line 1200
    :cond_2
    if-ne p2, v4, :cond_0

    .line 1201
    const/4 p2, 0x1

    goto :goto_0

    .line 1205
    :cond_3
    if-eq p2, v3, :cond_4

    if-ne p2, v4, :cond_0

    .line 1207
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshSimSetting phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", not update SimSetting!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1220
    .restart local v0    # "oldMode":I
    .restart local v1    # "simMode":I
    :cond_5
    shl-int v2, v5, p2

    or-int/2addr v1, v2

    goto :goto_1
.end method

.method public static declared-synchronized registerForRadioPowerChange(Ljava/lang/String;Lcom/mediatek/internal/telephony/IRadioPower;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "iRadioPower"    # Lcom/mediatek/internal/telephony/IRadioPower;

    .prologue
    .line 1683
    const-class v1, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 1684
    :try_start_0
    const-string p0, "NO_NAME"

    .line 1686
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " registerForRadioPowerChange"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1687
    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1688
    monitor-exit v1

    return-void

    .line 1683
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removeIccIdFromPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 1467
    if-eqz p2, :cond_0

    .line 1468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove radio off SIM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1469
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1471
    :cond_0
    return-void
.end method

.method private resetSimInsertedStatus(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset Sim InsertedStatus for Phone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1610
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 1611
    return-void
.end method

.method public static sendRequestBeforeSetRadioPower(ZI)V
    .locals 2
    .param p0, "power"    # Z
    .param p1, "phoneId"    # I

    .prologue
    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send request before EFUN, power:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1481
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->notifyRadioPowerChange(ZI)V

    .line 1482
    return-void
.end method

.method private setAirplaneMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set mAirplaneMode as:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1600
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    .line 1601
    return-void
.end method

.method private setSilentRebootPropertyForAllModem(Ljava/lang/String;)V
    .locals 3
    .param p1, "isSilentReboot"    # Ljava/lang/String;

    .prologue
    .line 564
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    .line 565
    .local v0, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager$2;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 583
    const-string v1, "set eboot under SS"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 584
    const-string v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    const-string v1, "cdma.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 567
    :pswitch_0
    const-string v1, "set eboot under DSDS"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 568
    const-string v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 571
    :pswitch_1
    const-string v1, "set eboot under DSDA"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 572
    const-string v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v1, "gsm.ril.eboot.2"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    const-string v1, "cdma.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 579
    :pswitch_2
    const-string v1, "set eboot under TSTS"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 580
    const-string v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setSimInsertedStatus(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 1010
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1011
    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v0

    .line 1018
    .local v0, "iccId":Ljava/lang/String;
    const-string v1, "N/A"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1019
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    const/4 v2, 0x0

    aput v2, v1, p1

    goto :goto_0

    .line 1021
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    const/4 v2, 0x1

    aput v2, v1, p1

    goto :goto_0
.end method

.method private simStatusToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "simStatus"    # I

    .prologue
    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 445
    :goto_0
    return-object v0

    .line 436
    :pswitch_0
    const-string v0, "SIM HAVE NOT INITIALIZED"

    .line 437
    goto :goto_0

    .line 439
    :pswitch_1
    const-string v0, "SIM DETECTED"

    .line 440
    goto :goto_0

    .line 442
    :pswitch_2
    const-string v0, "NO SIM DETECTED"

    goto :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private turnOffCTARadioIfNecessary()V
    .locals 3

    .prologue
    .line 1178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 1179
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aget v1, v1, v0

    if-nez v1, :cond_2

    .line 1180
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->isModemPowerOff(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1181
    const-string v1, "modem off, not to handle CTA"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1189
    :cond_0
    return-void

    .line 1184
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turn off phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " radio because we are no longer in CTA mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1185
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1178
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized unregisterForRadioPowerChange(Lcom/mediatek/internal/telephony/IRadioPower;)V
    .locals 3
    .param p0, "iRadioPower"    # Lcom/mediatek/internal/telephony/IRadioPower;

    .prologue
    .line 1691
    const-class v1, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " unregisterForRadioPowerChange"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1692
    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1693
    monitor-exit v1

    return-void

    .line 1691
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateMsimModeRadioPower(ZI)V
    .locals 4
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 967
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 968
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v1

    .line 969
    .local v1, "svlteSlot":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMsimModeRadioPower: power="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " svlteSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 970
    if-ne v1, p2, :cond_0

    .line 971
    if-nez p1, :cond_1

    .line 972
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    .line 985
    :cond_0
    :goto_0
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1006
    return-void

    .line 974
    :cond_1
    if-nez p2, :cond_2

    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->isAllowRadioPowerOn(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 976
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto :goto_0

    .line 977
    :cond_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->isAllowRadioPowerOn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 979
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto :goto_0
.end method

.method private updatePhoneRadioPower(ZI)V
    .locals 3
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 873
    invoke-static {p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 874
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    .line 875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhoneRadioPower: phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null, skip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 936
    :goto_0
    return-void

    .line 878
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0
.end method


# virtual methods
.method public forceAllowAirplaneModeChange(Z)V
    .locals 1
    .param p1, "forceSwitch"    # Z

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->setForceSwitch(Z)V

    .line 1763
    return-void
.end method

.method public forceSetRadioPower(ZI)V
    .locals 6
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const-wide/16 v4, 0xc8

    .line 1262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "force set radio power for phone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,power: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1264
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1265
    const-string v2, "Force Set Radio Power under airplane mode, ignore"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1306
    :cond_0
    :goto_0
    return-void

    .line 1269
    :cond_1
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsInIpoShutdown:Z

    if-eqz v2, :cond_2

    .line 1270
    const-string v2, "Force Set Radio Power under ipo shutdown, ignore"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1274
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ril.cdma.emdstatus.send"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1276
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    .line 1278
    .local v0, "forceSetRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;
    invoke-virtual {p0, v0, v4, v5}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1287
    .end local v0    # "forceSetRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;
    :cond_3
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1288
    const-string v2, "force set radio power, read iccid not ready, wait for200ms"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1290
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    .line 1292
    .restart local v0    # "forceSetRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;
    invoke-virtual {p0, v0, v4, v5}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1297
    .end local v0    # "forceSetRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;
    :cond_4
    move v1, p1

    .line 1298
    .local v1, "radioPower":Z
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 1299
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1300
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimWithCsim(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v2

    if-ne p2, v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMtkIndiaC2k5MSupport()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceSetRadioPower: CT 4G card need turn LTE radio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1304
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto/16 :goto_0
.end method

.method public forceSetRadioPower(ZIZ)V
    .locals 2
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I
    .param p3, "isEccOn"    # Z

    .prologue
    .line 1316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "force set radio power isEccOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1317
    iput-boolean p3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsEccCall:Z

    .line 1318
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager;->forceSetRadioPower(ZI)V

    .line 1319
    return-void
.end method

.method public getAirplaneRequestHandler()Lcom/mediatek/internal/telephony/AirplaneRequestHandler;
    .locals 1

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1619
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->getCiIndex(Landroid/os/Message;)I

    move-result v1

    .line 1621
    .local v1, "phoneIdForMsg":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage msg.what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/RadioManager;->eventIdtoString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1622
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1640
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1643
    :cond_0
    :goto_0
    return-void

    .line 1624
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v2, :cond_2

    .line 1625
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is not available, so return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1624
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1630
    :cond_2
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsQueueIpoShutdown:Z

    if-eqz v2, :cond_0

    .line 1631
    const-string v2, "bIsQueueIpoShutdown is true"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1632
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->doIpoShutDown()V

    .line 1633
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsQueueIpoShutdown:Z

    goto :goto_0

    .line 1637
    .end local v0    # "i":I
    :pswitch_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/RadioManager;->forceSetRadioPower(ZI)V

    goto :goto_0

    .line 1622
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isAllowAirplaneModeChange()Z
    .locals 1

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->allowSwitching()Z

    move-result v0

    return v0
.end method

.method public isSvlteTestSimAllowPowerOn(I)Z
    .locals 9
    .param p1, "phoneId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 940
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->isSvlteTestSimMode()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 941
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 942
    .local v3, "phoneCount":I
    new-array v0, v3, [I

    .line 943
    .local v0, "cardType":[I
    const/4 v4, 0x0

    .line 944
    .local v4, "type":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 945
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->getFullCardType(I)I

    move-result v5

    aput v5, v0, v1

    .line 946
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SvlteTestSimMode,  cardType["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "]="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v8, v0, v1

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 944
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 948
    :cond_0
    if-eqz p1, :cond_1

    const/16 v5, 0xa

    if-ne p1, v5, :cond_3

    .line 949
    :cond_1
    aget v4, v0, v6

    .line 953
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v5, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .line 955
    .local v2, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v2, :cond_5

    .line 956
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "CDMA"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/RadioManager;->isNonCdma(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 957
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SvlteTestSimMode: skip CDMA power on phone: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    move v5, v6

    .line 963
    .end local v0    # "cardType":[I
    .end local v1    # "i":I
    .end local v2    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v3    # "phoneCount":I
    .end local v4    # "type":I
    :goto_2
    return v5

    .line 950
    .restart local v0    # "cardType":[I
    .restart local v1    # "i":I
    .restart local v3    # "phoneCount":I
    .restart local v4    # "type":I
    :cond_3
    if-eq p1, v7, :cond_4

    const/16 v5, 0xb

    if-ne p1, v5, :cond_2

    .line 951
    :cond_4
    aget v4, v0, v7

    goto :goto_1

    .line 962
    .end local v0    # "cardType":[I
    .end local v1    # "i":I
    .end local v3    # "phoneCount":I
    .end local v4    # "type":I
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SvlteTestSimMode: power on phone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    move v5, v7

    .line 963
    goto :goto_2
.end method

.method public notifyAirplaneModeChange(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 480
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->allowSwitching()Z

    move-result v3

    if-nez v3, :cond_1

    .line 481
    const-string v3, "airplane mode switching, not allow switch now "

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 482
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3, p1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->pendingAirplaneModeRequest(Z)V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 486
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3, p1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->waitRadioAvaliable(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 487
    const-string v3, "airplane mode switching, not allow switch now, waitRadioAvaliable..."

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_2
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne p1, v3, :cond_3

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mAirplaneMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is not expected (the same)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :cond_3
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Airplane mode changed:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 502
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->isUnderCryptKeeper()Z

    move-result v3

    if-nez v3, :cond_5

    .line 503
    const-string v3, "Airplane mode changed: turn on/off all modem"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 504
    if-eqz p1, :cond_4

    .line 507
    .local v1, "modemPower":Z
    :goto_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3, v1, v4}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->onAirplaneChangeStarted(ZZ)V

    .line 510
    const-string v3, "1"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 511
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    invoke-virtual {p0, v1, v3}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    .line 512
    const-string v3, "ril.cdma.emdstatus.send"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->monitorAirplaneChangeDone()V

    goto/16 :goto_0

    .end local v1    # "modemPower":Z
    :cond_4
    move v1, v4

    .line 504
    goto :goto_1

    .line 518
    :cond_5
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 519
    const-string v3, "Airplane mode changed: turn on/off all radio"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 520
    if-eqz p1, :cond_7

    move v2, v1

    .line 523
    .local v2, "radioPower":Z
    :goto_2
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3, v2, v1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->onAirplaneChangeStarted(ZZ)V

    .line 526
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v3, :cond_a

    .line 527
    invoke-virtual {p0, v2, v0}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 528
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 529
    if-nez v2, :cond_8

    .line 530
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    .line 526
    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    .end local v2    # "radioPower":Z
    :cond_7
    move v2, v4

    .line 520
    goto :goto_2

    .line 532
    .restart local v0    # "i":I
    .restart local v2    # "radioPower":Z
    :cond_8
    if-nez v0, :cond_9

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/RadioManager;->isAllowRadioPowerOn(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 534
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto :goto_4

    .line 535
    :cond_9
    if-ne v0, v4, :cond_6

    const/16 v3, 0xb

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/RadioManager;->isAllowRadioPowerOn(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 537
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto :goto_4

    .line 544
    :cond_a
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->monitorAirplaneChangeDone()V

    goto/16 :goto_0
.end method

.method public notifyIpoPreBoot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 630
    const-string v0, "IPO preboot!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 631
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsInIpoShutdown:Z

    .line 632
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsQueueIpoShutdown:Z

    .line 633
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 634
    const/4 v0, 0x1

    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    .line 635
    return-void
.end method

.method public notifyIpoShutDown()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 605
    const-string v1, "notify IPO shutdown!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 606
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsInIpoShutdown:Z

    .line 608
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCi["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "].getRadioState().isAvailable(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 612
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 613
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsQueueIpoShutdown:Z

    .line 608
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->doIpoShutDown()V

    .line 619
    return-void
.end method

.method public notifyMSimModeChange(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x1

    .line 1403
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSIM mode changed, mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1404
    const/4 v5, -0x1

    if-ne p1, v5, :cond_1

    .line 1405
    const-string v4, "Invalid mode, MSIM_MODE intent has no extra value"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1446
    :cond_0
    :goto_0
    return-void

    .line 1408
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v5, v4, :cond_3

    .line 1409
    :cond_2
    const-string v4, "Airplane mode on or MSIM Mode option is closed, do nothing!"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1413
    :cond_3
    const/4 v2, 0x0

    .line 1414
    .local v2, "phoneId":I
    const/4 v0, 0x1

    .line 1415
    .local v0, "iccIdReady":Z
    const/4 v2, 0x0

    :goto_1
    iget v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v2, v5, :cond_4

    .line 1416
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1417
    const/4 v0, 0x0

    .line 1421
    :cond_4
    if-nez v0, :cond_6

    .line 1422
    const-string v4, "msim mode read iccid not ready, wait for 200ms"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1424
    new-instance v1, Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;I)V

    .line 1426
    .local v1, "notifyMSimModeChangeRunnable":Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;
    const-wide/16 v4, 0xc8

    invoke-virtual {p0, v1, v4, v5}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1415
    .end local v1    # "notifyMSimModeChangeRunnable":Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1430
    :cond_6
    const/4 v2, 0x0

    :goto_2
    iget v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v2, v5, :cond_0

    .line 1431
    shl-int v5, v4, v2

    and-int/2addr v5, p1

    if-nez v5, :cond_8

    const/4 v3, 0x0

    .line 1432
    .local v3, "singlePhonePower":Z
    :goto_3
    const-string v5, "N/A"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1433
    const/4 v3, 0x0

    .line 1434
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phoneId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sim not insert, set  power  to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1436
    :cond_7
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/mediatek/internal/telephony/RadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 1437
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Radio Power due to MSIM mode change, power: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1439
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1440
    invoke-direct {p0, v3, v2}, Lcom/mediatek/internal/telephony/RadioManager;->updateMsimModeRadioPower(ZI)V

    .line 1430
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v3    # "singlePhonePower":Z
    :cond_8
    move v3, v4

    .line 1431
    goto :goto_3

    .line 1442
    .restart local v3    # "singlePhonePower":Z
    :cond_9
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_4
.end method

.method public notifyRadioAvailable(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x1

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " notifies radio available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 597
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v1, v3, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->isUnderCryptKeeper()Z

    move-result v1

    if-nez v1, :cond_0

    .line 598
    const-string v1, "Power off modem because boot up under airplane mode"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 599
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v0

    .line 600
    .local v0, "slotId":I
    const/4 v1, 0x0

    shl-int v2, v3, v0

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    .line 602
    .end local v0    # "slotId":I
    :cond_0
    return-void
.end method

.method public notifySimModeChange(ZI)V
    .locals 4
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 1345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM mode changed, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1346
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1347
    :cond_0
    const-string v1, "Airplane mode on or MSIM Mode option is closed, do nothing!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1376
    :cond_1
    :goto_0
    return-void

    .line 1350
    :cond_2
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1351
    const-string v1, "sim mode read iccid not ready, wait for 200ms"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1353
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    .line 1355
    .local v0, "notifySimModeChangeRunnable":Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1359
    .end local v0    # "notifySimModeChangeRunnable":Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;
    :cond_3
    const-string v1, "N/A"

    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1360
    const/4 p1, 0x0

    .line 1361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sim not insert, set  power  to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1363
    :cond_4
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/RadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 1364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Radio Power due to SIM mode change, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1366
    if-eqz p1, :cond_5

    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isSvlteTestSimAllowPowerOn(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySimModeChange: SvlteTestSimMode bypass power on phone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1371
    :cond_5
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1372
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1373
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager;->updateMsimModeRadioPower(ZI)V

    goto/16 :goto_0
.end method

.method public onReceiveWifiOnlyModeStateChangedIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 454
    const-string v3, "state"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 455
    .local v0, "enabled":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mReceiver: ACTION_WIFI_ONLY_MODE_CHANGED, enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 458
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    if-ne v0, v3, :cond_1

    .line 459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWifiOnlyMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is not expected (the same)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 470
    :cond_0
    return-void

    .line 463
    :cond_1
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    .line 464
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v3, :cond_0

    .line 465
    if-eqz v0, :cond_2

    .line 466
    .local v2, "radioPower":Z
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v1, v3, :cond_0

    .line 467
    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 465
    .end local v1    # "i":I
    .end local v2    # "radioPower":Z
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setModemPower(ZI)V
    .locals 9
    .param p1, "power"    # Z
    .param p2, "phoneBitMap"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 647
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Modem Power according to bitmap, Power:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", PhoneBitMap:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 648
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v1

    .line 650
    .local v1, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    const/4 v4, 0x0

    .line 651
    .local v4, "phoneId":I
    sget-object v5, Lcom/mediatek/internal/telephony/RadioManager$2;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 723
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 724
    const-string v5, "Single SIM mode, for SVLTE need turn on/off LTE MD."

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 725
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    .line 727
    .local v3, "phone":Lcom/android/internal/telephony/PhoneBase;
    iget-object v5, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    .line 728
    const-string v5, "Single SIM mode, for SVLTE need turn on/off Non-LTE MD."

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 729
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    .line 730
    iget-object v5, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    .line 740
    .end local v3    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_0
    :goto_0
    return-void

    .line 653
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v4

    .line 654
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Modem Power under DSDS mode, Power:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 656
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 658
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v4

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    .line 665
    :goto_1
    if-nez p1, :cond_0

    .line 666
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v2, v5, :cond_0

    .line 667
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->resetSimInsertedStatus(I)V

    .line 666
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 660
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v2, v5, :cond_2

    .line 661
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:[Z

    aput-boolean p1, v5, v2

    .line 660
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 663
    :cond_2
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v4

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    goto :goto_1

    .line 673
    .end local v2    # "i":I
    :pswitch_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v2, v5, :cond_7

    .line 674
    move v4, v2

    .line 675
    const/4 v5, 0x1

    shl-int/2addr v5, v2

    and-int/2addr v5, p2

    if-eqz v5, :cond_3

    .line 676
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Modem Power under DSDA mode, Power:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 677
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 678
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 679
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    .line 680
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    .line 694
    :goto_5
    if-nez p1, :cond_3

    .line 695
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/RadioManager;->resetSimInsertedStatus(I)V

    .line 673
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 682
    :cond_4
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    goto :goto_5

    .line 686
    :cond_5
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 688
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v4

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    goto :goto_5

    .line 690
    :cond_6
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:[Z

    aput-boolean p1, v5, v4

    .line 691
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v4

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    goto :goto_5

    .line 699
    :cond_7
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 701
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    .line 702
    .local v0, "cdmaSlotId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Modem Power for C2K, cdmaSlotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,power="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 703
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 708
    .end local v0    # "cdmaSlotId":I
    .end local v2    # "i":I
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v4

    .line 709
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Modem Power under TSTS mode, Power:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 710
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    iget v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v2, v5, :cond_8

    .line 711
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:[Z

    aput-boolean p1, v5, v2

    .line 710
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 713
    :cond_8
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v4

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    .line 714
    if-nez p1, :cond_0

    .line 715
    const/4 v2, 0x0

    :goto_7
    iget v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v2, v5, :cond_0

    .line 716
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->resetSimInsertedStatus(I)V

    .line 715
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 732
    .end local v2    # "i":I
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    .line 733
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Modem Power under SS mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 734
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:[Z

    aput-boolean p1, v5, v4

    .line 735
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v4

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setRadioPower(ZI)V
    .locals 10
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v7, 0x1

    .line 771
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRadioPower, power="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 772
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "ril.cdma.emdstatus.send"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 774
    const-string v5, "emdstatus is not sent, wait for 200ms"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 775
    new-instance v4, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;

    invoke-direct {v4, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    .line 776
    .local v4, "setRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;
    invoke-virtual {p0, v4, v8, v9}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 860
    .end local v4    # "setRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v5, v7, :cond_2

    .line 781
    const-string v5, "Set Radio Power under airplane mode, ignore"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 785
    :cond_2
    invoke-static {p2}, Lcom/mediatek/internal/telephony/RadioManager;->isModemPowerOff(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 786
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modem for phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " off, do not set radio again"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 794
    :cond_3
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 795
    const-string v5, "RILD initialize not completed, wait for 200ms"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 796
    new-instance v4, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;

    invoke-direct {v4, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    .line 797
    .restart local v4    # "setRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;
    invoke-virtual {p0, v4, v8, v9}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 801
    .end local v4    # "setRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;
    :cond_4
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->setSimInsertedStatus(I)V

    .line 803
    move v3, p1

    .line 804
    .local v3, "radioPower":Z
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    .line 806
    .local v1, "iccId":Ljava/lang/String;
    sget-object v5, Lcom/mediatek/internal/telephony/RadioManager;->mIccidPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 807
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adjust radio to off because once manually turned off, iccid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , phone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 808
    const/4 v3, 0x0

    .line 811
    :cond_5
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    if-ne v5, v7, :cond_6

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsEccCall:Z

    if-nez v5, :cond_6

    .line 812
    const-string v5, "setradiopower but wifi only, turn off"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 813
    const/4 v3, 0x0

    .line 816
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->checkForCTACase()Z

    move-result v2

    .line 819
    .local v2, "isCTACase":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 820
    if-eqz p1, :cond_7

    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isAllowRadioPowerOn(I)Z

    move-result v5

    if-nez v5, :cond_7

    .line 821
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not allow power on : +phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 825
    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isSvlteTestSimAllowPowerOn(I)Z

    move-result v5

    if-nez v5, :cond_8

    .line 826
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SvlteTest SIM: not allow power on : +phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 832
    :cond_8
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->getSimInsertedStatus(I)I

    move-result v5

    if-nez v5, :cond_b

    .line 833
    if-ne v2, v7, :cond_9

    .line 834
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v0

    .line 835
    .local v0, "capabilityPhoneId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No SIM inserted, force to turn on 3G/4G phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " radio if no any sim radio is enabled!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 836
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5, v7}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 837
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v5

    if-ne p2, v5, :cond_0

    .line 839
    const-string v5, "No SIM inserted, force to turn on LTE radio"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 840
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto/16 :goto_0

    .line 842
    .end local v0    # "capabilityPhoneId":I
    :cond_9
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsEccCall:Z

    if-ne v7, v5, :cond_a

    .line 843
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ECC call Radio Power, power: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 844
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto/16 :goto_0

    .line 846
    :cond_a
    const-string v5, "No SIM inserted, turn Radio off!"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 847
    const/4 v3, 0x0

    .line 848
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto/16 :goto_0

    .line 851
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trigger set Radio Power, power: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 853
    invoke-direct {p0, v3, p2}, Lcom/mediatek/internal/telephony/RadioManager;->refreshSimSetting(ZI)V

    .line 854
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 855
    invoke-direct {p0, v3, p2}, Lcom/mediatek/internal/telephony/RadioManager;->updatePhoneRadioPower(ZI)V

    goto/16 :goto_0

    .line 857
    :cond_c
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto/16 :goto_0
.end method
