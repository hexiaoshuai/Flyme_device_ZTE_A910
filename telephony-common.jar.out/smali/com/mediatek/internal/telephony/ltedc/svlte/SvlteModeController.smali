.class public Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
.super Landroid/os/Handler;
.source "SvlteModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ConfigModemRunnable;
    }
.end annotation


# static fields
.field private static final ACTION_FORM_MODE_CONTROLLER:I = 0x2

.field public static final CDMA_PROP:Ljava/lang/String; = "persist.radio.cdma_slot"

.field public static final CSFB_ON_SLOT:I = -0x1

.field private static final DEBUG:Z = true

.field protected static final EVENT_C2K_WP_CARD_TYPE_READY:I = 0x1

.field private static final EVENT_CDMA_RADIO_CHANGE_FOR_AVALIABLE:I = 0x68

.field protected static final EVENT_RIL_CONNECTED:I = 0x2

.field private static final INITIAL_RETRY_INTERVAL_MSEC:I = 0xc8

.field private static final LOG_TAG:Ljava/lang/String; = "SvlteModeController"

.field public static final MTK_C2K_6M_SUPPORT:Ljava/lang/String; = "ro.ct6m_support"

.field public static final MTK_C2K_SLOT2_SUPPORT:Ljava/lang/String; = "ro.mtk.c2k.slot2.support"

.field private static final OPERATOR_OM:Ljava/lang/String; = "OM"

.field private static final OPERATOR_OP09:Ljava/lang/String; = "OP09"

.field private static final PROPERTY_NET_CDMA_MDMSTAT:Ljava/lang/String; = "net.cdma.mdmstat"

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field public static final RADIO_TECH_MODE_CSFB:I = 0x2

.field public static final RADIO_TECH_MODE_SVLTE:I = 0x3

.field public static final RADIO_TECH_MODE_UNKNOWN:I = 0x1

.field private static final SPEC_OP09_A:Ljava/lang/String; = "SEGDEFAULT"

.field public static final SVLTE_ON_SLOT_0:I = 0x0

.field public static final SVLTE_ON_SLOT_1:I = 0x1

.field public static final SVLTE_PROP:Ljava/lang/String; = "persist.radio.svlte_slot"

.field public static final SVLTE_PROP_DEFAULT_VALUE:Ljava/lang/String;

.field public static final TELEPHONY_MODE_C_LWTG:I = 0x4

.field public static final TELEPHONY_MODE_G_LC:I = 0x3

.field public static final TELEPHONY_MODE_G_LWTG:I = 0x5

.field public static final TELEPHONY_MODE_LC_G:I = 0x0

.field public static final TELEPHONY_MODE_LC_SINGLE:I = 0x6

.field public static final TELEPHONY_MODE_LWTG_C:I = 0x1

.field public static final TELEPHONY_MODE_LWTG_G:I = 0x2

.field public static final TELEPHONY_MODE_LWTG_SINGLE:I = 0x7

.field public static final TELEPHONY_MODE_UNKNOWN:I = -0x1

.field private static final mLock:Ljava/lang/Object;

.field private static sCardModes:[I

.field private static sCdmaSocketSlotId:I

.field private static sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;


# instance fields
.field private mAlreadyRegistForRadioState:Z

.field private mCardTypes:[I

.field private mConfgiC2kDone:Z

.field private mConfgiGsmDone:Z

.field mConfigModemRunnable:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ConfigModemRunnable;

.field private mContext:Landroid/content/Context;

.field private mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastProtocol:I

.field private mNeedReSwitch:[Z

.field private mOP09Spec:Ljava/lang/String;

.field private mOldCardModes:[I

.field private mOperatorSpec:Ljava/lang/String;

.field private mPendingCardTypes:[I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotBeSwitchCardType:I

.field private mSlotIdWaitConnect:I

.field private mSvlteModeOn:Z

.field private mSwitchQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchingSlotId:I

.field private mWaitC2KRadioAvailable:Z

.field private mWaitingRilSocketConnect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->SVLTE_PROP_DEFAULT_VALUE:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->initCardModes()[I

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    .line 113
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLock:Ljava/lang/Object;

    .line 149
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gsm.ril.fulluicctype"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gsm.ril.fulluicctype.2"

    aput-object v2, v0, v1

    const-string v1, "gsm.ril.fulluicctype.3"

    aput-object v1, v0, v3

    const-string v1, "gsm.ril.fulluicctype.4"

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 187
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 103
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    .line 119
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 122
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    .line 123
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I

    .line 125
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiGsmDone:Z

    .line 126
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiC2kDone:Z

    .line 127
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mNeedReSwitch:[Z

    .line 147
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 156
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    .line 257
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitC2KRadioAvailable:Z

    .line 258
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mAlreadyRegistForRadioState:Z

    .line 829
    new-instance v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 928
    new-instance v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ConfigModemRunnable;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ConfigModemRunnable;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfigModemRunnable:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ConfigModemRunnable;

    .line 188
    const-string v1, "SvlteModeController"

    const-string v2, "SvlteModeController constructor"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    .line 191
    const-string v1, "ro.operator.optr"

    const-string v2, "OM"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOperatorSpec:Ljava/lang/String;

    .line 192
    const-string v1, "ro.operator.seg"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOP09Spec:Ljava/lang/String;

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operator Spec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOP09Spec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOP09Spec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForC2KWPCardTypeReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.intent.action.FINISH_SWITCH_SVLTE_RAT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setSvlteModeProperties()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->configModemStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
    .param p1, "x1"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I

    return p1
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    return v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSvlteModeOn:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->disconnectRilSocket(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->finishSwitchMode()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->switchRadioTechnology(I)V

    return-void
.end method

.method private blockBySimSwitch()Z
    .locals 3

    .prologue
    .line 1307
    const-string v1, "ril.cdma.switching"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1308
    .local v0, "blockBySimSwitch":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[blockBySimSwitch] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1309
    return v0
.end method

.method private calculateCardMode()[I
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 571
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    new-array v1, v7, [I

    .line 572
    .local v1, "cardModes":[I
    const-string v7, "OP09"

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "SEGDEFAULT"

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOP09Spec:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 573
    aput v9, v1, v2

    .line 574
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 575
    aput v10, v1, v3

    .line 574
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 577
    :cond_0
    const-string v6, "[calculateCardMode] >>> OPERATOR_OP09 case."

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 578
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->printRadioModes([I)V

    .line 642
    .end local v3    # "i":I
    :goto_1
    return-object v1

    .line 583
    :cond_1
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, v2

    invoke-direct {p0, v7, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getPreferRadioTech(II)I

    move-result v4

    .line 587
    .local v4, "slot0Prefer":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    if-ne v7, v6, :cond_3

    .line 590
    aput v4, v1, v2

    .line 591
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v6, v6, v2

    if-nez v6, :cond_2

    .line 592
    aput v9, v1, v2

    .line 594
    :cond_2
    const-string v6, "[calculateCardMode] >>> SINGLE SIM case."

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 595
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->printRadioModes([I)V

    goto :goto_1

    .line 599
    :cond_3
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, v6

    invoke-direct {p0, v7, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getPreferRadioTech(II)I

    move-result v5

    .line 601
    .local v5, "slot1Prefer":I
    if-ne v4, v5, :cond_a

    if-ne v5, v9, :cond_a

    .line 602
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, v2

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, v6

    if-gtz v7, :cond_5

    :cond_4
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, v2

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, v6

    if-nez v7, :cond_8

    .line 606
    :cond_5
    const-string v7, "persist.radio.simswitch"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .line 608
    .local v0, "capability":I
    if-ne v0, v6, :cond_7

    .line 609
    .local v2, "csfbSlot":I
    :goto_2
    aput v9, v1, v0

    .line 610
    aput v10, v1, v2

    .line 611
    const/4 v6, -0x1

    iput v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 612
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 613
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 640
    .end local v0    # "capability":I
    .end local v2    # "csfbSlot":I
    :cond_6
    :goto_3
    const-string v6, "[calculateCardMode] >>> WP SOLUTION 2 case."

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 641
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->printRadioModes([I)V

    goto :goto_1

    .restart local v0    # "capability":I
    :cond_7
    move v2, v6

    .line 608
    goto :goto_2

    .line 616
    .end local v0    # "capability":I
    :cond_8
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, v2

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v8, v8, v6

    if-le v7, v8, :cond_9

    .line 617
    aput v9, v1, v2

    .line 618
    aput v10, v1, v6

    goto :goto_3

    .line 620
    :cond_9
    aput v10, v1, v2

    .line 621
    aput v9, v1, v6

    goto :goto_3

    .line 625
    :cond_a
    aput v4, v1, v2

    .line 626
    aput v5, v1, v6

    .line 627
    aget v7, v1, v2

    if-ne v7, v10, :cond_6

    aget v7, v1, v6

    if-ne v7, v10, :cond_6

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, v2

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, v6

    if-nez v7, :cond_6

    .line 630
    :cond_b
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, v2

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v6, v7, v6

    if-nez v6, :cond_c

    .line 632
    sget v6, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    aput v9, v1, v6

    goto :goto_3

    .line 634
    :cond_c
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    sget v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    aget v6, v6, v7

    if-nez v6, :cond_6

    .line 635
    sget v6, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    aput v9, v1, v6

    goto :goto_3
.end method

.method private configModemStatus()V
    .locals 12

    .prologue
    .line 934
    const-string v9, "net.cdma.mdmstat"

    const-string v10, "not ready"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 935
    .local v4, "md3State":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configModemStatus md3State = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 936
    const-string v9, "ready"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 937
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfigModemRunnable:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ConfigModemRunnable;

    const-wide/16 v10, 0xc8

    invoke-virtual {p0, v9, v10, v11}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    const-string v9, "persist.radio.simswitch"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 942
    .local v0, "capability":I
    const/4 v1, 0x0

    .line 943
    .local v1, "cardType1":I
    const/4 v2, 0x0

    .line 944
    .local v2, "cardType2":I
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    array-length v9, v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 945
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    const/4 v10, 0x0

    aget v1, v9, v10

    .line 950
    :cond_2
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configModemStatus cardType1="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cardType2="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", capability="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 953
    const/4 v5, 0x2

    .line 954
    .local v5, "modemStatus":I
    const/4 v8, 0x1

    .line 957
    .local v8, "remoteSimProtocol":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->isSvlteTestSimMode()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 958
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    array-length v9, v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 959
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getFullCardType(I)I

    move-result v1

    .line 964
    :cond_3
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SvlteTestSimMode: cardType1="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,cardType2="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 969
    :cond_4
    const-string v9, "OP09"

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v9, "SEGDEFAULT"

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOP09Spec:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 970
    const-string v9, "configModemStatus: OP09 A"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 971
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 973
    const-string v9, "configModemStatus: no card"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 974
    const/4 v5, 0x1

    .line 975
    const/4 v8, 0x1

    .line 1122
    :cond_5
    :goto_3
    iput v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    .line 1124
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configModemStatus modemStatus="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", remoteSimProtocol="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1126
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    .line 1127
    .local v6, "phoneCount":I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 1128
    .local v7, "proxyPhones":[Lcom/android/internal/telephony/Phone;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configModemStatus mConfgiGsmDone="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiGsmDone:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,mConfgiC2kDone="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiC2kDone:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,mWaitingRilSocketConnect="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1131
    iget-boolean v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiGsmDone:Z

    if-nez v9, :cond_2c

    .line 1132
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v6, :cond_2b

    .line 1133
    aget-object v9, v7, v3

    check-cast v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v8, v10}, Lcom/android/internal/telephony/PhoneBase;->configModemStatus(IILandroid/os/Message;)V

    .line 1135
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configModemStatus for slot["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] LTE phone."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1132
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 946
    .end local v3    # "i":I
    .end local v5    # "modemStatus":I
    .end local v6    # "phoneCount":I
    .end local v7    # "proxyPhones":[Lcom/android/internal/telephony/Phone;
    .end local v8    # "remoteSimProtocol":I
    :cond_6
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    array-length v9, v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 947
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    const/4 v10, 0x0

    aget v1, v9, v10

    .line 948
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    const/4 v10, 0x1

    aget v2, v9, v10

    goto/16 :goto_1

    .line 960
    .restart local v5    # "modemStatus":I
    .restart local v8    # "remoteSimProtocol":I
    :cond_7
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    array-length v9, v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 961
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getFullCardType(I)I

    move-result v1

    .line 962
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getFullCardType(I)I

    move-result v2

    goto/16 :goto_2

    .line 976
    :cond_8
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 978
    const-string v9, "configModemStatus: GSM only"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 979
    const/4 v5, 0x0

    .line 980
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 981
    :cond_9
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 983
    const-string v9, "configModemStatus: CT 3G"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 984
    const/4 v5, 0x1

    .line 985
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 986
    :cond_a
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 987
    const-string v9, "configModemStatus: CT 4G"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 989
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v9

    if-nez v9, :cond_b

    .line 990
    const/4 v5, 0x1

    .line 994
    :goto_5
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 992
    :cond_b
    const/4 v5, 0x2

    goto :goto_5

    .line 997
    :cond_c
    const-string v9, "configModemStatus: other case, may not happen!"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1001
    :cond_d
    const-string v9, "configModemStatus: OM/CT C"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1003
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v9

    if-nez v9, :cond_e

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v9

    if-eqz v9, :cond_13

    :cond_e
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v9

    if-nez v9, :cond_f

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1006
    :cond_f
    const/4 v8, 0x1

    .line 1007
    const/4 v9, 0x1

    if-ne v0, v9, :cond_11

    .line 1008
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1009
    const/4 v5, 0x2

    .line 1020
    :goto_6
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1021
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 1011
    :cond_10
    const/4 v5, 0x1

    goto :goto_6

    .line 1014
    :cond_11
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1015
    const/4 v5, 0x2

    goto :goto_6

    .line 1017
    :cond_12
    const/4 v5, 0x1

    goto :goto_6

    .line 1027
    :cond_13
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v9

    if-nez v9, :cond_14

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1029
    :cond_14
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v9

    if-nez v9, :cond_15

    .line 1030
    const/4 v5, 0x1

    .line 1035
    :goto_7
    const/4 v9, 0x1

    if-ne v0, v9, :cond_16

    .line 1036
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 1032
    :cond_15
    const/4 v5, 0x2

    goto :goto_7

    .line 1038
    :cond_16
    const/4 v8, 0x2

    .line 1040
    goto/16 :goto_3

    .line 1041
    :cond_17
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v9

    if-nez v9, :cond_18

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 1043
    :cond_18
    const/4 v5, 0x1

    .line 1044
    const/4 v9, 0x1

    if-ne v0, v9, :cond_19

    .line 1045
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 1047
    :cond_19
    const/4 v8, 0x2

    .line 1049
    goto/16 :goto_3

    .line 1053
    :cond_1a
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v9

    if-nez v9, :cond_1b

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 1054
    :cond_1b
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 1056
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v9

    if-nez v9, :cond_1c

    .line 1057
    const/4 v5, 0x1

    .line 1062
    :goto_8
    const/4 v9, 0x1

    if-ne v0, v9, :cond_1d

    .line 1063
    const/4 v8, 0x2

    goto/16 :goto_3

    .line 1059
    :cond_1c
    const/4 v5, 0x2

    goto :goto_8

    .line 1065
    :cond_1d
    const/4 v8, 0x1

    .line 1067
    goto/16 :goto_3

    .line 1068
    :cond_1e
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 1070
    const/4 v5, 0x1

    .line 1071
    const/4 v9, 0x1

    if-ne v0, v9, :cond_1f

    .line 1072
    const/4 v8, 0x2

    goto/16 :goto_3

    .line 1074
    :cond_1f
    const/4 v8, 0x1

    .line 1076
    goto/16 :goto_3

    .line 1082
    :cond_20
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configModemStatus mLastProtocol="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1083
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v9

    if-eqz v9, :cond_22

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 1085
    const/4 v5, 0x0

    .line 1086
    iget v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_21

    iget v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    .line 1087
    :goto_9
    goto/16 :goto_3

    .line 1086
    :cond_21
    const/4 v8, 0x2

    goto :goto_9

    .line 1088
    :cond_22
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v9

    if-eqz v9, :cond_25

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 1090
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->isSvlteTestSimMode()Z

    move-result v9

    if-eqz v9, :cond_23

    .line 1091
    const/4 v5, 0x0

    .line 1095
    :goto_a
    iget v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_24

    iget v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    .line 1096
    :goto_b
    goto/16 :goto_3

    .line 1093
    :cond_23
    const/4 v5, 0x1

    goto :goto_a

    .line 1095
    :cond_24
    const/4 v8, 0x2

    goto :goto_b

    .line 1097
    :cond_25
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v9

    if-eqz v9, :cond_27

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 1099
    const/4 v5, 0x1

    .line 1100
    iget v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_26

    iget v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    .line 1101
    :goto_c
    goto/16 :goto_3

    .line 1100
    :cond_26
    const/4 v8, 0x2

    goto :goto_c

    .line 1102
    :cond_27
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1105
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v6

    .line 1106
    .restart local v6    # "phoneCount":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "phoneCount: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1107
    const/4 v9, 0x1

    if-ne v6, v9, :cond_29

    .line 1109
    const/4 v5, 0x2

    .line 1110
    iget v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_28

    iget v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    :goto_d
    goto/16 :goto_3

    :cond_28
    const/4 v8, 0x1

    goto :goto_d

    .line 1113
    :cond_29
    const/4 v5, 0x1

    .line 1114
    iget v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2a

    iget v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    .line 1117
    :goto_e
    goto/16 :goto_3

    .line 1114
    :cond_2a
    const/4 v8, 0x2

    goto :goto_e

    .line 1137
    .restart local v3    # "i":I
    .restart local v7    # "proxyPhones":[Lcom/android/internal/telephony/Phone;
    :cond_2b
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiGsmDone:Z

    .line 1140
    .end local v3    # "i":I
    :cond_2c
    iget-boolean v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiC2kDone:Z

    if-nez v9, :cond_0

    .line 1141
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configModemStatus for C2K, cdmaSocketId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1142
    sget v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    aget-object v9, v7, v9

    check-cast v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v8, v10}, Lcom/android/internal/telephony/PhoneBase;->configModemStatus(IILandroid/os/Message;)V

    .line 1144
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiC2kDone:Z

    .line 1145
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isOP09Project()Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "ro.mtk.c2k.slot2.support"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1146
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->enableMD3Sleep()V

    goto/16 :goto_0
.end method

.method private connectRilSocket()V
    .locals 3

    .prologue
    .line 890
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectRilSocket, slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 892
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->connectRilSocket()V

    .line 894
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 897
    :cond_0
    return-void
.end method

.method private containsCdma(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 803
    and-int/lit8 v0, p1, 0x4

    if-gtz v0, :cond_0

    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_1

    .line 805
    :cond_0
    const/4 v0, 0x1

    .line 807
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private containsGsm(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 811
    and-int/lit8 v0, p1, 0x1

    if-gtz v0, :cond_0

    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1

    .line 813
    :cond_0
    const/4 v0, 0x1

    .line 815
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private containsUsim(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 819
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_0

    .line 820
    const/4 v0, 0x1

    .line 822
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disconnectRilSocket(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 900
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectRilSocket, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 902
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->disconnectRilSocket()V

    .line 904
    :cond_0
    return-void
.end method

.method private doSwitchRadioTech()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 314
    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    if-le v3, v8, :cond_0

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doSwitchRadioTech, Just return. AS slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " switchCardType to sim."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->switchCardType(II)V

    .line 318
    iput v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 319
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOldCardModes:[I

    sput-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    .line 320
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 362
    :goto_0
    return-void

    .line 323
    :cond_0
    const/4 v0, 0x0

    .line 324
    .local v0, "firstSwitchSlot":I
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->startSwitchMode()V

    .line 325
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSvlteModeOn:Z

    .line 326
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 327
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOldCardModes:[I

    aget v3, v3, v1

    if-ne v3, v7, :cond_1

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v3, v3, v1

    if-ne v3, v9, :cond_1

    sget v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    if-eq v1, v3, :cond_1

    .line 331
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    .line 332
    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    .line 334
    :cond_1
    sget v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    if-ne v1, v3, :cond_2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v3, v3, v1

    if-ne v3, v7, :cond_2

    .line 335
    move v0, v1

    .line 337
    :cond_2
    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v3, v3, v1

    if-ne v3, v9, :cond_3

    .line 338
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSvlteModeOn:Z

    .line 326
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 342
    :cond_4
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[doSwitchRadioTech] mSwitchQueue size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 344
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 345
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 346
    .local v2, "slotId":I
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->switchRadioTechnology(I)V

    .line 347
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 348
    .end local v2    # "slotId":I
    :cond_5
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[doSwitchRadioTech] firstSwitchSlot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 350
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->switchRadioTechnology(I)V

    .line 351
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[doSwitchRadioTech] mSwitchQueue size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 353
    const-string v3, "[doSwitchRadioTech] waiting for INTENT_ACTION_FINISH_SWITCH_SVLTE_RAT_MODE broadcast."

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    :cond_6
    const-string v3, "[doSwitchRadioTech] Error switch Queue!."

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 359
    :cond_7
    const-string v3, "[doSwitchRadioTech] No need switch raido technology."

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 360
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->finishSwitchMode()V

    goto/16 :goto_0
.end method

.method private enableMD3Sleep()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1159
    const-string v4, "persist.radio.simswitch"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1160
    .local v0, "capability":I
    const/4 v1, 0x0

    .line 1161
    .local v1, "cardType1":I
    const/4 v2, 0x0

    .line 1162
    .local v2, "cardType2":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    array-length v4, v4

    if-ne v4, v6, :cond_3

    .line 1163
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v1, v4, v7

    .line 1168
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableMD3Sleep cardType1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cardType2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", capability="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1171
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    array-length v4, v4

    if-ne v4, v8, :cond_2

    .line 1172
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1173
    :cond_1
    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    .line 1174
    .local v3, "phone":Lcom/android/internal/telephony/PhoneBase;
    add-int/lit8 v4, v0, -0x1

    if-nez v4, :cond_4

    .line 1175
    iget-object v4, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->enableMd3Sleep(I)V

    .line 1176
    const-string v4, "enableMD3Sleep,G+C,set to 1"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1194
    .end local v3    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_2
    :goto_1
    return-void

    .line 1164
    :cond_3
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    array-length v4, v4

    if-ne v4, v8, :cond_0

    .line 1165
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v1, v4, v7

    .line 1166
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v2, v4, v6

    goto :goto_0

    .line 1178
    .restart local v3    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_4
    iget-object v4, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->enableMd3Sleep(I)V

    .line 1179
    const-string v4, "enableMD3Sleep,G+C,set to 0"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1182
    .end local v3    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_5
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1183
    :cond_6
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    .line 1184
    .restart local v3    # "phone":Lcom/android/internal/telephony/PhoneBase;
    add-int/lit8 v4, v0, -0x1

    if-ne v4, v6, :cond_7

    .line 1185
    iget-object v4, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->enableMd3Sleep(I)V

    .line 1186
    const-string v4, "enableMD3Sleep,C+G,set to 1"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1188
    :cond_7
    iget-object v4, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->enableMd3Sleep(I)V

    .line 1189
    const-string v4, "enableMD3Sleep,C+G,set to 1"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private finishSwitchMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 686
    const-string v1, "Broadcast finish switch mode"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 688
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 690
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sendBroadcast(Landroid/content/Intent;I)V

    .line 691
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setSvlteModeProperties()V

    .line 693
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    if-eqz v1, :cond_2

    .line 694
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->blockBySimSwitch()Z

    move-result v1

    if-nez v1, :cond_1

    .line 695
    const-string v1, "Start switch mode pended"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 697
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiGsmDone:Z

    .line 698
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiC2kDone:Z

    .line 700
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    .line 701
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOldCardModes:[I

    .line 702
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isSwitchInAirplaneMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 703
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->calculateCardMode()[I

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    .line 704
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setupSvlteSystemProp([I)V

    .line 706
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->doSwitchRadioTech()V

    .line 710
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    .line 714
    :goto_1
    return-void

    .line 708
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 712
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1
.end method

.method public static getActiveSvlteModeSlotId()I
    .locals 4

    .prologue
    .line 766
    const/4 v1, -0x1

    .line 767
    .local v1, "svlteSlotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-nez v2, :cond_0

    .line 768
    const-string v2, "[getActiveSvlteModeSlotId] SVLTE not support, return -1."

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 777
    :goto_0
    return v1

    .line 771
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 772
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v2, v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 773
    move v1, v0

    .line 771
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 776
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getActiveSvlteModeSlotId] slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCdmaSocketSlotId()I
    .locals 3

    .prologue
    .line 785
    const-string v1, "persist.radio.cdma_slot"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 786
    .local v0, "slotId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCdmaSocketSlotId] slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 787
    return v0
.end method

.method private getFullCardType(I)I
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 1197
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 1198
    :cond_0
    const-string v4, "SvlteModeController"

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

    .line 1199
    const/4 v2, 0x0

    .line 1217
    :goto_0
    return v2

    .line 1201
    :cond_1
    sget-object v4, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1202
    .local v1, "cardType":Ljava/lang/String;
    const-string v4, "SvlteModeController"

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

    .line 1203
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1204
    .local v0, "appType":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1205
    .local v2, "fullType":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 1206
    const-string v4, "USIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1207
    or-int/lit8 v2, v2, 0x2

    .line 1205
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1208
    :cond_3
    const-string v4, "SIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1209
    or-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1210
    :cond_4
    const-string v4, "CSIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1211
    or-int/lit8 v2, v2, 0x8

    goto :goto_2

    .line 1212
    :cond_5
    const-string v4, "RUIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1213
    or-int/lit8 v2, v2, 0x4

    goto :goto_2

    .line 1216
    :cond_6
    const-string v4, "SvlteModeController"

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

.method public static getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
    .locals 3

    .prologue
    .line 162
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "SvlteModeController.getInstance can\'t be called before make()"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 167
    :cond_0
    :try_start_1
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private getPreferRadioTech(II)I
    .locals 2
    .param p1, "cardType"    # I
    .param p2, "slot"    # I

    .prologue
    .line 659
    const/4 v0, 0x1

    .line 660
    .local v0, "prefer":I
    sparse-switch p1, :sswitch_data_0

    .line 670
    const/4 v0, 0x2

    .line 673
    :goto_0
    return v0

    .line 664
    :sswitch_0
    const/4 v0, 0x3

    .line 665
    goto :goto_0

    .line 667
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOldCardModes:[I

    aget v0, v1, p2

    .line 668
    goto :goto_0

    .line 660
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public static getRadioTechnologyMode()I
    .locals 3

    .prologue
    .line 731
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v0

    .line 732
    .local v0, "mode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getRadioTechnologyMode] mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 733
    return v0
.end method

.method public static getRadioTechnologyMode(I)I
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    .line 743
    const/4 v0, 0x1

    .line 744
    .local v0, "mode":I
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 746
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    .line 747
    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .line 748
    .local v2, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v2, :cond_0

    .line 749
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDMA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 750
    const/4 v0, 0x3

    .line 756
    .end local v2    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRadioTechnologyMode] mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slotId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 757
    return v0

    .line 752
    .restart local v2    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getTelephonyMode()I
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 1229
    const-string v5, "persist.radio.simswitch"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 1231
    .local v0, "currMajorSim":I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v1

    .line 1232
    .local v1, "svlteSlotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 1234
    const-string v2, "[getTelephonyMode] >>> SINGLE SIM case."

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1235
    if-nez v1, :cond_1

    .line 1236
    const/4 v2, 0x6

    .line 1264
    :cond_0
    :goto_0
    return v2

    .line 1238
    :cond_1
    const/4 v2, 0x7

    goto :goto_0

    .line 1240
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-gt v5, v4, :cond_0

    .line 1245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getTelephonyMode] svlteSlotId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", currMajorSim = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1247
    if-nez v0, :cond_5

    .line 1248
    if-nez v1, :cond_3

    .line 1249
    const/4 v2, 0x0

    goto :goto_0

    .line 1250
    :cond_3
    if-ne v1, v3, :cond_4

    move v2, v3

    .line 1251
    goto :goto_0

    :cond_4
    move v2, v4

    .line 1253
    goto :goto_0

    .line 1255
    :cond_5
    if-ne v0, v3, :cond_0

    .line 1256
    if-nez v1, :cond_6

    .line 1257
    const/4 v2, 0x4

    goto :goto_0

    .line 1258
    :cond_6
    if-ne v1, v3, :cond_7

    .line 1259
    const/4 v2, 0x3

    goto :goto_0

    .line 1261
    :cond_7
    const/4 v2, 0x5

    goto :goto_0
.end method

.method private static initCardModes()[I
    .locals 4

    .prologue
    .line 202
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    new-array v0, v2, [I

    .line 203
    .local v0, "cardModes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 204
    const-string v2, "persist.radio.svlte_slot"

    const-string v3, "3,2,2,2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_0
    return-object v0
.end method

.method private is3GCdmaCard(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 535
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    const/4 v0, 0x1

    .line 540
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private is4GCdmaCard(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsUsim(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    const/4 v0, 0x1

    .line 531
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGsmCard(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 544
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsGsm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    const/4 v0, 0x1

    .line 549
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNonCard(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 553
    if-nez p1, :cond_0

    .line 554
    const/4 v0, 0x1

    .line 556
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOP09Project()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1152
    const-string v4, "OP09"

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "SEGDEFAULT"

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOP09Spec:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 1153
    .local v0, "isCTA":Z
    :goto_0
    const-string v4, "ro.ct6m_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1154
    .local v1, "isCTC":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0    # "isCTA":Z
    .end local v1    # "isCTC":Z
    :cond_2
    move v0, v3

    .line 1152
    goto :goto_0
.end method

.method private isSwitchInAirplaneMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1268
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isFlightModePowerOffModemSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1278
    :cond_0
    :goto_0
    return v1

    .line 1271
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1273
    .local v0, "airplaneMode":I
    if-ne v0, v2, :cond_0

    .line 1274
    const-string v1, "[isSwitchInAirplaneMode] Switch mode by previous mode."

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1275
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->printRadioModes([I)V

    move v1, v2

    .line 1276
    goto :goto_0
.end method

.method private isUsimOnlyCard(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 826
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsUsim(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsCdma(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1286
    const-string v0, "SvlteModeController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    return-void
.end method

.method private static logicLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1294
    const-string v0, "SvlteModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SMC]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    return-void
.end method

.method public static make(Landroid/content/Context;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "SvlteRatController.make() should only be called once"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 182
    :cond_0
    :try_start_1
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .line 183
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private onC2kCardTypeReady()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 298
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiGsmDone:Z

    .line 299
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiC2kDone:Z

    .line 301
    const-string v0, "[onC2kCardTypeReady] Start switch"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    .line 304
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOldCardModes:[I

    .line 305
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isSwitchInAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->calculateCardMode()[I

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    .line 307
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setupSvlteSystemProp([I)V

    .line 309
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->doSwitchRadioTech()V

    .line 310
    return-void
.end method

.method private printRadioModes([I)V
    .locals 4
    .param p1, "cardModes"    # [I

    .prologue
    .line 646
    array-length v2, p1

    if-nez v2, :cond_1

    .line 647
    const-string v2, "[printRadioModes] error cardModes."

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 656
    :cond_0
    return-void

    .line 650
    :cond_1
    const/4 v1, 0x0

    .local v1, "slot":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 651
    aget v2, p1, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const-string v0, "RADIO_TECH_MODE_CSFB"

    .line 653
    .local v0, "mode":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[printRadioModes] slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : mCardTypes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 650
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 651
    .end local v0    # "mode":Ljava/lang/String;
    :cond_2
    const-string v0, "RADIO_TECH_MODE_SVLTE"

    goto :goto_1
.end method

.method private sendBroadcast(Landroid/content/Intent;I)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    .line 718
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p1

    move/from16 v12, p2

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :goto_0
    return-void

    .line 721
    :catch_0
    move-exception v13

    .line 722
    .local v13, "ex":Landroid/os/RemoteException;
    const-string v0, "SvlteModeController"

    const-string v1, "Error while calling sendBroadcast"

    invoke-static {v0, v1, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setCdmaSocketSlotId(I)V
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 795
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    if-eq v0, p0, :cond_0

    .line 796
    sput p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    .line 797
    const-string v0, "persist.radio.cdma_slot"

    add-int/lit8 v1, p0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setCdmaSocketSlotId] slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 800
    :cond_0
    return-void
.end method

.method private setSvlteModeProperties()V
    .locals 3

    .prologue
    .line 878
    const/4 v0, 0x0

    .local v0, "slotId":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 879
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 880
    const-string v1, "[setSvlteModeProperties] svlte"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 881
    const-string v1, "persist.radio.svlte.mode"

    const-string v2, "svlte"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :goto_1
    return-void

    .line 878
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 885
    :cond_1
    const-string v1, "[setSvlteModeProperties] csfb"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 886
    const-string v1, "persist.radio.svlte.mode"

    const-string v2, "csfb"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setupSvlteSystemProp([I)V
    .locals 4
    .param p1, "cardModes"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 561
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 563
    const-string v0, "persist.radio.svlte_slot"

    aget v1, p1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :goto_0
    return-void

    .line 565
    :cond_0
    const-string v0, "persist.radio.svlte_slot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startSwitchMode()V
    .locals 3

    .prologue
    .line 677
    const-string v1, "Broadcast startSwitchMode"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 678
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 680
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 682
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sendBroadcast(Landroid/content/Intent;I)V

    .line 683
    return-void
.end method

.method private switchRadioTechnology(I)V
    .locals 14
    .param p1, "slotId"    # I

    .prologue
    const/4 v13, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 438
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[switchRadioTechnology] Switch slotId: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOldCardModes:[I

    aget v9, v9, p1

    if-ne v9, v13, :cond_0

    const-string v9, " SVLTE"

    :goto_0
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " -->"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v9, v9, p1

    if-ne v9, v13, :cond_1

    const-string v9, " SVLTE"

    :goto_1
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 441
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v9, v9, p1

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v1

    .line 442
    .local v1, "is4GCdmaCard":Z
    const-string v9, "ro.mtk_lte_support"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_2

    move v2, v10

    .line 443
    .local v2, "isLteSupport":Z
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[switchRadioTechnology][is4GCdmaCard]: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", [isLteSupport]: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 446
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 447
    .local v3, "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v8

    .line 448
    .local v8, "svlteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    const/16 v4, 0x8

    .line 449
    .local v4, "netWorkType":I
    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v9, v9, p1

    if-ne v9, v13, :cond_4

    .line 450
    iget-boolean v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    if-eqz v9, :cond_3

    .line 451
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->connectRilSocket()V

    .line 525
    :goto_3
    return-void

    .line 438
    .end local v1    # "is4GCdmaCard":Z
    .end local v2    # "isLteSupport":Z
    .end local v3    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .end local v4    # "netWorkType":I
    .end local v8    # "svlteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    :cond_0
    const-string v9, " CSFB"

    goto :goto_0

    :cond_1
    const-string v9, " CSFB"

    goto :goto_1

    .restart local v1    # "is4GCdmaCard":Z
    :cond_2
    move v2, v11

    .line 442
    goto :goto_2

    .line 455
    .restart local v2    # "isLteSupport":Z
    .restart local v3    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .restart local v4    # "netWorkType":I
    .restart local v8    # "svlteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    :cond_3
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSubId()I

    move-result v7

    .line 456
    .local v7, "subId":I
    if-gez v7, :cond_5

    .line 457
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mNeedReSwitch:[Z

    aput-boolean v10, v9, p1

    .line 461
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[switchRadioTechnology][needReSwitch][slotId]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mNeedReSwitch:[Z

    aget-boolean v10, v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 464
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getCdmaRatModeKey(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 467
    .local v6, "ratMode":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getRatMode ratMode= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 468
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v9

    aget-object v5, v9, v6

    .line 471
    .local v5, "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    const-string v9, "persist.radio.simswitch"

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 473
    .local v0, "capabilityPhoneId":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[switchRadioTechnology] capabilityPhoneId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 474
    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    .line 475
    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v5, v9, :cond_6

    .line 476
    const/16 v4, 0xc0

    .line 489
    :goto_5
    if-eq p1, v0, :cond_4

    .line 490
    and-int/lit8 v4, v4, -0x41

    .line 521
    .end local v0    # "capabilityPhoneId":I
    .end local v5    # "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .end local v6    # "ratMode":I
    .end local v7    # "subId":I
    :cond_4
    :goto_6
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->configModemStatus()V

    .line 522
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[switchRadioTechnology][netWorkType]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 523
    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I

    .line 524
    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setRadioTechnology(ILandroid/os/Message;)Z

    goto/16 :goto_3

    .line 459
    .restart local v7    # "subId":I
    :cond_5
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mNeedReSwitch:[Z

    aput-boolean v11, v9, p1

    goto/16 :goto_4

    .line 478
    .restart local v0    # "capabilityPhoneId":I
    .restart local v5    # "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .restart local v6    # "ratMode":I
    :cond_6
    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v5, v9, :cond_7

    .line 479
    const/16 v4, 0xb0

    goto :goto_5

    .line 483
    :cond_7
    const/16 v4, 0xf0

    goto :goto_5

    .line 494
    :cond_8
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v9, v9, p1

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isUsimOnlyCard(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 497
    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v5, v9, :cond_9

    .line 498
    const/16 v4, 0xc0

    .line 511
    :goto_7
    if-eq p1, v0, :cond_4

    .line 512
    and-int/lit8 v4, v4, -0x41

    goto :goto_6

    .line 500
    :cond_9
    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v5, v9, :cond_a

    .line 501
    const/16 v4, 0xb0

    goto :goto_7

    .line 505
    :cond_a
    const/16 v4, 0xf0

    goto :goto_7

    .line 515
    :cond_b
    const/16 v4, 0xb0

    goto :goto_6
.end method

.method private tryToSwitchMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 262
    sget v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 265
    .local v0, "rs":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryToSwitchMode, RadioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWaitC2KRadioAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitC2KRadioAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAlreadyRegistForRadioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mAlreadyRegistForRadioState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->blockBySimSwitch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->unregisterForRadioAvailable()V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitC2KRadioAvailable:Z

    if-eqz v1, :cond_2

    .line 271
    const-string v1, "[tryToSwitchMode] Switching now, pended"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->unregisterForRadioAvailable()V

    .line 273
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    goto :goto_0

    .line 275
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v0, v1, :cond_3

    .line 276
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->unregisterForRadioAvailable()V

    .line 277
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->onC2kCardTypeReady()V

    goto :goto_0

    .line 279
    :cond_3
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitC2KRadioAvailable:Z

    .line 280
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mAlreadyRegistForRadioState:Z

    if-nez v1, :cond_0

    .line 281
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mAlreadyRegistForRadioState:Z

    .line 282
    sget v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x68

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private unregisterForRadioAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 290
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitC2KRadioAvailable:Z

    .line 291
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mAlreadyRegistForRadioState:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 294
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mAlreadyRegistForRadioState:Z

    .line 296
    :cond_0
    return-void
.end method

.method private unregisterForRilConnected()V
    .locals 2

    .prologue
    .line 907
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterForRilConnected, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 909
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    .line 911
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    .line 913
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 211
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForC2KWPCardTypeReady(Landroid/os/Handler;)V

    .line 212
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 213
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 214
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    .line 216
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    .line 217
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I

    .line 218
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->unregisterForRilConnected()V

    .line 219
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 220
    const-string v0, "dispose!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public getNeedReSwitch(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mNeedReSwitch:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public getNetWorkTypeBySlotId(I)I
    .locals 10
    .param p1, "slotId"    # I

    .prologue
    .line 372
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, p1

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v1

    .line 373
    .local v1, "is4GCdmaCard":Z
    const/16 v3, 0x8

    .line 374
    .local v3, "netWorkType":I
    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v7, v7, p1

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 375
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 376
    .local v2, "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSubId()I

    move-result v6

    .line 377
    .local v6, "subId":I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getCdmaRatModeKey(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 380
    .local v5, "ratMode":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRatMode ratMode= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " subId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v7

    aget-object v4, v7, v5

    .line 383
    .local v4, "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    const-string v7, "persist.radio.simswitch"

    const-string v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .line 385
    .local v0, "capabilityPhoneId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[switchRadioTechnology] capabilityPhoneId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 387
    if-eqz v1, :cond_3

    .line 388
    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v4, v7, :cond_1

    .line 389
    const/16 v3, 0xc0

    .line 402
    :goto_0
    if-eq p1, v0, :cond_0

    .line 403
    and-int/lit8 v3, v3, -0x41

    .line 434
    .end local v0    # "capabilityPhoneId":I
    .end local v2    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .end local v4    # "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .end local v5    # "ratMode":I
    .end local v6    # "subId":I
    :cond_0
    :goto_1
    return v3

    .line 391
    .restart local v0    # "capabilityPhoneId":I
    .restart local v2    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .restart local v4    # "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .restart local v5    # "ratMode":I
    .restart local v6    # "subId":I
    :cond_1
    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v4, v7, :cond_2

    .line 392
    const/16 v3, 0xb0

    goto :goto_0

    .line 396
    :cond_2
    const/16 v3, 0xf0

    goto :goto_0

    .line 407
    :cond_3
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, p1

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isUsimOnlyCard(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 410
    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v4, v7, :cond_4

    .line 411
    const/16 v3, 0xc0

    .line 424
    :goto_2
    if-eq p1, v0, :cond_0

    .line 425
    and-int/lit8 v3, v3, -0x41

    goto :goto_1

    .line 413
    :cond_4
    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v4, v7, :cond_5

    .line 414
    const/16 v3, 0xb0

    goto :goto_2

    .line 418
    :cond_5
    const/16 v3, 0xf0

    goto :goto_2

    .line 428
    :cond_6
    const/16 v3, 0xb0

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 225
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 226
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 252
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 228
    :sswitch_0
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitC2KRadioAvailable:Z

    if-eqz v1, :cond_0

    .line 229
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitC2KRadioAvailable:Z

    .line 230
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->tryToSwitchMode()V

    goto :goto_0

    .line 234
    :sswitch_1
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitC2KRadioAvailable:Z

    .line 235
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->tryToSwitchMode()V

    goto :goto_0

    .line 238
    :sswitch_2
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 239
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, -0x1

    if-le v1, v4, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_RIL_CONNECTED, mWaitingRilSocketConnect ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 245
    :goto_2
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setCdmaSocketSlotId(I)V

    .line 247
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->switchRadioTechnology(I)V

    .line 248
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->unregisterForRilConnected()V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 239
    goto :goto_1

    .line 243
    :cond_2
    const-string v1, "Unexpected exception on EVENT_RIL_CONNECTED"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto :goto_2

    .line 226
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method public isSvlteModeSwitching()Z
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
