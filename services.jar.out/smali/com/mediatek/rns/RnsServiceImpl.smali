.class public Lcom/mediatek/rns/RnsServiceImpl;
.super Lcom/mediatek/rns/IRnsManager$Stub;
.source "RnsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/rns/RnsServiceImpl$WifiRssiMonitor;,
        Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;,
        Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;,
        Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;,
        Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;,
        Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;,
        Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST:Landroid/net/NetworkRequest;

.field private static final DISABLE_WIFI_GUARD_TIMER:I = 0x2710

.field private static final DISCONNECT_RSSI:I = -0x7f

.field private static final EVENT_APPLY_IMS_OVER_LTE_SETTINGS:I = 0x186a0

.field private static final EVENT_APPLY_WIFI_CALL_SETTINGS:I = 0xa

.field private static final EVENT_DC_SWITCH_STATE_CHANGE:I = 0x3e9

.field private static final EVENT_RAT_CONNECTIVITY_CHANGE:I = 0x3e8

.field private static final EVENT_REGISTER_RNS_AGENT:I = 0x1

.field private static final EVENT_WIFI_DISABLE_ACTION:I = 0x65

.field private static final EVENT_WIFI_DISABLE_EXPIRED:I = 0x66

.field private static final EVENT_WIFI_DISCONNECT:I = 0x64

.field private static final EVENT_WIFI_RSSI_UPDATE:I = 0x0

.field private static final EVENT_WIFI_STATE_CHANGED_ACTION:I = 0x2710

.field private static final MAX_REG_WAIT:I = 0x1388

.field private static final REQUEST:Landroid/net/NetworkRequest;

.field private static final WEAK_SIGNAL:I = -0x74


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private isEpdgImsConnected:Z

.field private isLteImsConnected:Z

.field private mAllowedRadio:I

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

.field private mHandoverEvent:I

.field private mImsOverLteSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsCallActive:Z

.field private mIsDefaultRequestEnabled:Z

.field private mIsEpdgConnectionChanged:Z

.field private mIsFirstRequest:Z

.field private mIsImsOverLteEnabled:Z

.field private mIsSettingChanged:Z

.field private mIsWfcEnabled:Z

.field private mIsWifiConnected:Z

.field private mIsWifiDisabling:Z

.field private mIsWifiEnabled:Z

.field private mLastRssi:I

.field private mLastSignalRsrp:I

.field private mLtePhoneState:Landroid/telephony/ServiceState;

.field private mLteRegTime:J

.field mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mPhoneId:I

.field private mPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/rns/RnsPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevCallState:I

.field private mServiceState:I

.field private mStartTime:J

.field private mState:I

.field private mSubId:I

.field private mTeleMgr:Landroid/telephony/TelephonyManager;

.field private mWfcSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;

.field private mWifiDisableFlag:I

.field private mWifiMgr:Landroid/net/wifi/WifiManager;

.field private mWifiTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xd

    .line 95
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/mediatek/rns/RnsServiceImpl;->REQUEST:Landroid/net/NetworkRequest;

    .line 102
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/mediatek/rns/RnsServiceImpl;->DEFAULT_REQUEST:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 124
    invoke-direct {p0}, Lcom/mediatek/rns/IRnsManager$Stub;-><init>()V

    .line 63
    const-string v3, "RnsServiceImpl"

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->TAG:Ljava/lang/String;

    .line 64
    iput-boolean v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->DEBUG:Z

    .line 75
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z

    .line 76
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z

    .line 77
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsSettingChanged:Z

    .line 78
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    .line 81
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    .line 82
    iput v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 84
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    .line 90
    const/16 v3, -0x6a

    iput v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    .line 91
    iput v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I

    .line 101
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsDefaultRequestEnabled:Z

    .line 108
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    .line 109
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    .line 110
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    .line 111
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z

    .line 114
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    .line 115
    iput v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPhoneId:I

    .line 116
    iput v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I

    .line 117
    iput v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    .line 118
    iput v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPrevCallState:I

    .line 119
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z

    .line 172
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$1;

    invoke-direct {v3, p0}, Lcom/mediatek/rns/RnsServiceImpl$1;-><init>(Lcom/mediatek/rns/RnsServiceImpl;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1249
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$2;

    invoke-direct {v3, p0}, Lcom/mediatek/rns/RnsServiceImpl$2;-><init>(Lcom/mediatek/rns/RnsServiceImpl;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1286
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$3;

    invoke-direct {v3, p0}, Lcom/mediatek/rns/RnsServiceImpl$3;-><init>(Lcom/mediatek/rns/RnsServiceImpl;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 125
    const-string v3, "missing Context"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    .line 126
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 128
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    .line 129
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current RSSI on constructor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "RnsServiceThread"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 132
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 133
    .local v2, "rnsLooper":Landroid/os/Looper;
    if-eqz v2, :cond_0

    .line 134
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    invoke-direct {v3, p0, v2}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;-><init>(Lcom/mediatek/rns/RnsServiceImpl;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    .line 137
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v3, "android.net.conn.CONNECTIVITY_ACTION_HANDOVER_END"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    .line 149
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWfcSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;

    .line 151
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWfcSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;->observe(Landroid/content/Context;)V

    .line 152
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    const v5, 0x186a0

    invoke-direct {v3, v4, v5}, Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mImsOverLteSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;

    .line 154
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mImsOverLteSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;->observe(Landroid/content/Context;)V

    .line 156
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->createDefaultPolicies()V

    .line 158
    iput-boolean v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->handleDefaultPdnRequest()V

    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->needToSendAlertWarning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->sendRoveOutAlert()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/rns/RnsServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiDisableFlag:I

    return v0
.end method

.method static synthetic access$1700(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/mediatek/rns/RnsServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    return v0
.end method

.method static synthetic access$1902(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/mediatek/rns/RnsServiceImpl;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/mediatek/rns/RnsServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    return v0
.end method

.method static synthetic access$2202(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    return p1
.end method

.method static synthetic access$2300(Lcom/mediatek/rns/RnsServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPrevCallState:I

    return v0
.end method

.method static synthetic access$2302(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPrevCallState:I

    return p1
.end method

.method static synthetic access$2402(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I

    return p1
.end method

.method static synthetic access$2800(Lcom/mediatek/rns/RnsServiceImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/rns/RnsServiceImpl;->handleEventWifiRssiUpdate(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->handleEventApplyWifiCallSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->handleEventRatConnectivityChange()V

    return-void
.end method

.method static synthetic access$3100(Lcom/mediatek/rns/RnsServiceImpl;Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/rns/RnsServiceImpl;->onReceiveDcSwitchStateChange(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->handleWifiDisabledExpired()V

    return-void
.end method

.method static synthetic access$3300(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->handleWifiDisableAction()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/rns/RnsServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getMainCapabilitySlotId()I

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPhoneId:I

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/rns/RnsServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    return p1
.end method

.method private addRadio(I)V
    .locals 2
    .param p1, "connectionType"    # I

    .prologue
    .line 879
    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 880
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    .line 884
    return-void

    .line 882
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connectionType out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createDefaultPolicies()V
    .locals 5

    .prologue
    .line 364
    new-instance v1, Lcom/mediatek/rns/RnsPolicy$UserPreference;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;-><init>(I)V

    .line 366
    .local v1, "preference":Lcom/mediatek/rns/RnsPolicy$UserPreference;
    new-instance v0, Lcom/mediatek/rns/RnsPolicy;

    invoke-direct {v0, v1}, Lcom/mediatek/rns/RnsPolicy;-><init>(Lcom/mediatek/rns/RnsPolicy$UserPreference;)V

    .line 367
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    new-instance v2, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    const/16 v3, -0x4b

    const/16 v4, -0x55

    invoke-direct {v2, v3, v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;-><init>(II)V

    .line 371
    .local v2, "threshold":Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;
    new-instance v0, Lcom/mediatek/rns/RnsPolicy;

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-direct {v0, v2}, Lcom/mediatek/rns/RnsPolicy;-><init>(Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;)V

    .line 372
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    return-void
.end method

.method private decideHandover()V
    .locals 11

    .prologue
    const/16 v10, -0x74

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 981
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 982
    const-string v5, "RnsServiceImpl"

    const-string v6, "decideHandover - handover in progress"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    .line 986
    .local v4, "subId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 987
    .local v1, "phoneId":I
    const-string v5, "RnsServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current SIM phoneid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Main Capability "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getMainCapabilitySlotId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getMainCapabilitySlotId()I

    move-result v5

    if-eq v5, v1, :cond_2

    if-eq v1, v9, :cond_2

    .line 991
    const-string v5, "RnsServiceImpl"

    const-string v6, "Current SIM does not support LTE,No IMS connection available"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iput v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 993
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v9}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto :goto_0

    .line 996
    :cond_2
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v6, "UserPreference"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/rns/RnsPolicy;

    .line 997
    .local v2, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 998
    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v3

    .line 999
    .local v3, "profile":I
    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v5, :cond_3

    .line 1000
    const/4 v3, 0x0

    .line 1002
    :cond_3
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1039
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1040
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto :goto_0

    .line 1004
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v5, :cond_4

    .line 1005
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto/16 :goto_0

    .line 1007
    :cond_4
    const-string v5, "RnsServiceImpl"

    const-string v6, "Need to inform to disconnect as for Wifi Only can\'t connect to other radio"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iput v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1010
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v9}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_0

    .line 1014
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v7, "WifiRoveThreshold"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v5

    if-lt v6, v5, :cond_5

    .line 1016
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto/16 :goto_0

    .line 1017
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    if-le v5, v10, :cond_7

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v7, "WifiRoveThreshold"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v5

    if-ge v6, v5, :cond_7

    .line 1021
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1022
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto/16 :goto_0

    .line 1024
    :cond_6
    const-string v5, "RnsServiceImpl"

    const-string v6, "Volte disabled will not establish IMS PDN"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iput v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1026
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v9}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_0

    .line 1028
    :cond_7
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v5, :cond_8

    .line 1031
    const-string v5, "RnsServiceImpl"

    const-string v6, "Establishing connection overWifi even the RSSI strength is less than Rove in value"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto/16 :goto_0

    .line 1034
    :cond_8
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1035
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto/16 :goto_0

    .line 1042
    :cond_9
    const-string v5, "RnsServiceImpl"

    const-string v6, "Need to inform to disconnect as for Cellular Only can\'t connect to other radio"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const-string v5, "net.ims.skip"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1045
    .local v0, "isSkipImsPdn":Z
    if-eqz v0, :cond_a

    .line 1046
    const-string v5, "RnsServiceImpl"

    const-string v6, "Ignore IMS disconnected"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1049
    :cond_a
    iput v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1050
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v9}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_0

    .line 1054
    .end local v0    # "isSkipImsPdn":Z
    :pswitch_3
    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsSettingChanged:Z

    if-nez v5, :cond_b

    iget v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    :cond_b
    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-eqz v5, :cond_e

    .line 1055
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1056
    const-string v5, "RnsServiceImpl"

    const-string v6, "Preference changed to Cell Preferred, do Roveout"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto/16 :goto_0

    .line 1058
    :cond_c
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1059
    const-string v5, "RnsServiceImpl"

    const-string v6, "IMS connection can\'t be establish for Cellular Preferred as 3G/2G is available"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const-string v5, "net.ims.skip"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1063
    .restart local v0    # "isSkipImsPdn":Z
    if-eqz v0, :cond_d

    .line 1064
    const-string v5, "RnsServiceImpl"

    const-string v6, "Ignore IMS disconnected"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1067
    :cond_d
    iput v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1068
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v9}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_0

    .line 1073
    .end local v0    # "isSkipImsPdn":Z
    :cond_e
    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-eqz v5, :cond_11

    .line 1075
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v7, "WifiRoveThreshold"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v5

    if-ge v6, v5, :cond_0

    .line 1078
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1079
    const-string v5, "RnsServiceImpl"

    const-string v6, "Cell Preferred,wifi rssi drops,do Roveout"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto/16 :goto_0

    .line 1081
    :cond_f
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1082
    const-string v5, "RnsServiceImpl"

    const-string v6, "IMS connection can\'t be establish for Cellular Preferred as 3G/2G is available"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    const-string v5, "net.ims.skip"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1086
    .restart local v0    # "isSkipImsPdn":Z
    if-eqz v0, :cond_10

    .line 1087
    const-string v5, "RnsServiceImpl"

    const-string v6, "Ignore IMS disconnected"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1090
    :cond_10
    iput v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1091
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v9}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_0

    .line 1098
    .end local v0    # "isSkipImsPdn":Z
    :cond_11
    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v5, :cond_14

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1101
    iget v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    if-ge v5, v10, :cond_12

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v7, "WifiRoveThreshold"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v5

    if-le v6, v5, :cond_12

    .line 1105
    const-string v5, "RnsServiceImpl"

    const-string v6, "Cell Preferred rsrp low do Rovein"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    .line 1109
    :cond_12
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1110
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v7, "WifiRoveThreshold"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v5

    if-le v6, v5, :cond_13

    .line 1113
    const-string v5, "RnsServiceImpl"

    const-string v6, "Cell Preferred IMS over LTE off do Rovein"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto/16 :goto_0

    .line 1116
    :cond_13
    const-string v5, "RnsServiceImpl"

    const-string v6, "Cell Preferred IMS over LTE off no wifi do fallback"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iput v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1118
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v9}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_0

    .line 1124
    :cond_14
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1125
    const-string v5, "RnsServiceImpl"

    const-string v6, "Cell Preferred create IMS over LTE"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto/16 :goto_0

    .line 1128
    :cond_15
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v5

    if-nez v5, :cond_16

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v7, "WifiRoveThreshold"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v5

    if-le v6, v5, :cond_16

    .line 1132
    const-string v5, "RnsServiceImpl"

    const-string v6, "Cell Preferred no signal except wifi good rssi do Rovein"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto/16 :goto_0

    .line 1135
    :cond_16
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1136
    const-string v5, "RnsServiceImpl"

    const-string v6, "Cell Preferred no signal except wifi available do Rovein"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto/16 :goto_0

    .line 1002
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private dump()V
    .locals 5

    .prologue
    .line 1699
    const-string v2, "RnsServiceImpl"

    const-string v3, "--- dump ---"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1701
    .local v1, "key":Ljava/lang/String;
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "policy["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1703
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWfcEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLteNetworkReady = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    const-string v2, "RnsServiceImpl"

    const-string v3, "--- end ---"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    return-void
.end method

.method private enumerateBits(J)[I
    .locals 11
    .param p1, "val"    # J

    .prologue
    const-wide/16 v8, 0x1

    .line 846
    invoke-static {p1, p2}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 847
    .local v4, "size":I
    new-array v3, v4, [I

    .line 848
    .local v3, "result":[I
    const/4 v0, 0x0

    .line 849
    .local v0, "index":I
    const/4 v2, 0x0

    .local v2, "resource":I
    move v1, v0

    .line 850
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-lez v5, :cond_0

    .line 851
    and-long v6, p1, v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aput v2, v3, v1

    .line 852
    :goto_1
    const/4 v5, 0x1

    shr-long/2addr p1, v5

    .line 853
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 855
    :cond_0
    return-object v3

    :cond_1
    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_1
.end method

.method private getMainCapabilitySlotId()I
    .locals 4

    .prologue
    .line 1749
    const-string v1, "persist.radio.simswitch"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 1750
    .local v0, "slotId":I
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMainCapabilitySlotId()... slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    return v0
.end method

.method private getNetworkType(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v2, -0x1

    .line 789
    const/4 v1, 0x0

    .line 790
    .local v1, "networkType":I
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 792
    .local v0, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    if-eq p1, v2, :cond_0

    .line 793
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v1

    .line 797
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 817
    :goto_1
    return v2

    .line 795
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    goto :goto_0

    .line 803
    :pswitch_0
    const/4 v2, 0x0

    goto :goto_1

    .line 813
    :pswitch_1
    const/4 v2, 0x1

    goto :goto_1

    .line 815
    :pswitch_2
    const/4 v2, 0x2

    goto :goto_1

    .line 797
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getPolicyProfile()I
    .locals 5

    .prologue
    .line 1736
    const/4 v1, -0x1

    .line 1737
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1738
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1739
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1741
    :cond_0
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    return v1
.end method

.method private handleDcStateAttaching(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    .locals 10
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1613
    const-string v5, "RnsServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleDcStateAttaching "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v4

    .line 1615
    .local v4, "phoneId":I
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "volte_vt_enabled"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1618
    .local v0, "imsSetting":I
    const-string v5, "RnsServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Main Capability: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getMainCapabilitySlotId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    iput v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPhoneId:I

    .line 1621
    if-ne v0, v9, :cond_0

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getMainCapabilitySlotId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1622
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I

    .line 1623
    const-string v5, "RnsServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDefaultSubId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;

    iget v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I

    invoke-direct {v3, p0, v8, v5}, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;-><init>(Lcom/mediatek/rns/RnsServiceImpl;II)V

    .line 1625
    .local v3, "mPhoneStateListener":Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v3, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1626
    new-instance v2, Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;

    iget v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I

    invoke-direct {v2, p0, v8, v5}, Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;-><init>(Lcom/mediatek/rns/RnsServiceImpl;II)V

    .line 1627
    .local v2, "mPhoneSignalListner":Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    const/16 v6, 0x100

    invoke-virtual {v5, v2, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1628
    new-instance v1, Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;

    iget v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I

    invoke-direct {v1, p0, v8, v5}, Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;-><init>(Lcom/mediatek/rns/RnsServiceImpl;II)V

    .line 1629
    .local v1, "mPhoneCallListner":Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    const/16 v6, 0x20

    invoke-virtual {v5, v1, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1631
    .end local v1    # "mPhoneCallListner":Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;
    .end local v2    # "mPhoneSignalListner":Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;
    .end local v3    # "mPhoneStateListener":Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;
    :cond_0
    return-void
.end method

.method private handleDefaultPdnRequest()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1427
    const-string v2, "RnsServiceImpl"

    const-string v3, "handleDefaultPdnRequest"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v2, :cond_5

    .line 1434
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getPolicyProfile()I

    move-result v1

    .line 1435
    .local v1, "profile":I
    if-eq v4, v1, :cond_2

    const/4 v2, 0x2

    if-ne v2, v1, :cond_4

    .line 1438
    :cond_2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1439
    :try_start_1
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsDefaultRequestEnabled:Z

    if-nez v2, :cond_3

    .line 1440
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    sget-object v3, Lcom/mediatek/rns/RnsServiceImpl;->DEFAULT_REQUEST:Landroid/net/NetworkRequest;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1441
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsDefaultRequestEnabled:Z

    .line 1442
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register LTE requst:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_3
    monitor-exit p0

    .line 1462
    .end local v1    # "profile":I
    :cond_4
    :goto_0
    return-void

    .line 1444
    .restart local v1    # "profile":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1445
    :catch_0
    move-exception v0

    .line 1446
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "RnsServiceImpl"

    const-string v3, "fail to register"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1451
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "profile":I
    :cond_5
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1452
    :try_start_4
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsDefaultRequestEnabled:Z

    if-eqz v2, :cond_6

    .line 1453
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1454
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsDefaultRequestEnabled:Z

    .line 1455
    const-string v2, "RnsServiceImpl"

    const-string v3, "Unregister LTE requst"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :cond_6
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1458
    :catch_1
    move-exception v0

    .line 1459
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "RnsServiceImpl"

    const-string v3, "fail to unregister"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleEventApplyWifiCallSettings()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1391
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "when_to_make_wifi_calls"

    const/4 v5, -0x1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    .line 1394
    const-string v1, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEventApplyWifiCallSettings, mIsWfcEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1396
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1397
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "user_selected_wfc_preference"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->setMode(I)V

    .line 1400
    const-string v1, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Preference = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_0
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1404
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1405
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "rns_wifi_rove_in_rssi"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->setRssiRoveIn(I)V

    .line 1409
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "rns_wifi_rove_out_rssi"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->setRssiRoveOut(I)V

    .line 1412
    const-string v1, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " RoveIn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RoveOut = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :cond_1
    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    .line 1416
    iput v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1418
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v1, :cond_4

    .line 1424
    :goto_1
    return-void

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    :cond_3
    move v1, v3

    .line 1391
    goto/16 :goto_0

    .line 1421
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    :cond_4
    iput-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsSettingChanged:Z

    .line 1422
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    .line 1423
    iput-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsSettingChanged:Z

    goto :goto_1
.end method

.method private handleEventRatConnectivityChange()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 1465
    const/4 v1, -0x1

    .line 1466
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1468
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1469
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1471
    :cond_0
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-eq v2, v4, :cond_1

    .line 1472
    iput v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1474
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v2, :cond_3

    .line 1494
    :cond_2
    :goto_0
    return-void

    .line 1477
    :cond_3
    const-string v2, "RnsServiceImpl"

    const-string v3, "handle Event RAT Connectivity change "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 1480
    const-string v2, "RnsServiceImpl"

    const-string v3, "mLtePhoneState went to power off "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    iput v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    .line 1483
    :cond_4
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    if-ne v2, v7, :cond_5

    .line 1485
    const-string v2, "RnsServiceImpl"

    const-string v3, "mLtePhoneState went to power on "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    iput v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    .line 1488
    :cond_5
    if-eq v1, v4, :cond_6

    .line 1489
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    .line 1491
    :cond_6
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    if-ne v2, v6, :cond_2

    .line 1492
    iput v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    goto :goto_0
.end method

.method private handleEventWifiRssiUpdate(I)V
    .locals 8
    .param p1, "newRssi"    # I

    .prologue
    const/4 v6, 0x0

    .line 1355
    const-string v1, "persist.net.test.rssi"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1356
    .local v0, "testRssi":I
    if-eqz v0, :cond_0

    .line 1357
    move p1, v0

    .line 1362
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1363
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "First Request after bootup, RAT Selected = LTE mIsFirstRequst = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLteRegTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 1366
    iput-boolean v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    .line 1367
    const-string v1, "RnsServiceImpl"

    const-string v2, "Max wait time Up, allow handover to wifi"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_1
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    .line 1376
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEventWifiRssiUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v1, :cond_4

    .line 1388
    :cond_2
    :goto_0
    return-void

    .line 1369
    :cond_3
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Block the handover to Wifi:: Waiting time :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLteRegTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " less than MAX REG WAIT time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1380
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1381
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    .line 1384
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->needToSendAlertWarning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1385
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send Rove Out Alert warning for rssi "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->sendRoveOutAlert()V

    goto :goto_0
.end method

.method private handleWifiDisableAction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1575
    const-string v1, "RnsServiceImpl"

    const-string v2, "handle Wifi Disable Action:"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getPolicyProfile()I

    move-result v0

    .line 1578
    .local v0, "profile":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1579
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    const/16 v2, -0x74

    if-le v1, v2, :cond_0

    .line 1580
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1581
    iput-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    .line 1582
    const-string v1, "RnsServiceImpl"

    const-string v2, "Epdg is disconnected & disable wifi"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiDisableFlag:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiDisabledByEpdg(I)Z

    .line 1584
    invoke-direct {p0, v3}, Lcom/mediatek/rns/RnsServiceImpl;->tryConnectToRadio(I)V

    .line 1589
    :cond_0
    return-void
.end method

.method private handleWifiDisabledExpired()V
    .locals 3

    .prologue
    .line 1592
    const-string v0, "RnsServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle Wifi Disable Action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    if-eqz v0, :cond_0

    .line 1594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    .line 1595
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiDisableFlag:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiDisabledByEpdg(I)Z

    .line 1597
    :cond_0
    return-void
.end method

.method private isCellularNetworkAvailable()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 826
    const/4 v3, 0x0

    .line 827
    .local v3, "network":Z
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 828
    .local v1, "infos":[Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 830
    .local v2, "mode":I
    if-ne v2, v5, :cond_1

    .line 842
    :cond_0
    :goto_0
    return v4

    .line 833
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v6, 0x2

    if-ge v0, v6, :cond_3

    .line 834
    aget-object v6, v1, v0

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, v1, v0

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-eq v6, v5, :cond_2

    .line 835
    const/4 v3, 0x1

    .line 833
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 838
    :cond_3
    const-string v6, "RnsServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isCellularNetworkAvailable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    if-eqz v3, :cond_0

    move v4, v5

    .line 840
    goto :goto_0
.end method

.method private isHandoverInProgress()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1199
    monitor-enter p0

    .line 1200
    :try_start_0
    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1201
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isImsOverLteEnabled()Z
    .locals 3

    .prologue
    .line 1660
    const-string v0, "RnsServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check is Ims over Lte Enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    return v0
.end method

.method private isLteNetworkReady()Z
    .locals 8

    .prologue
    const/16 v7, 0xd

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 728
    const/4 v1, 0x1

    .line 729
    .local v1, "phoneCount":I
    const/4 v0, 0x0

    .line 730
    .local v0, "isLteReady":Z
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 731
    if-le v1, v4, :cond_4

    .line 732
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    .line 733
    .local v3, "subId":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    .line 734
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getMainCapabilitySlotId()I

    move-result v2

    .line 735
    .local v2, "phoneId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 737
    .end local v2    # "phoneId":I
    :cond_0
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isCellularNetworkAvailable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 740
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v3}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v6

    if-ne v6, v7, :cond_3

    move v0, v4

    .line 741
    :goto_0
    const-string v4, "RnsServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Data Reg State "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_1
    const-string v4, "RnsServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLteNetworkReady "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Network Type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v3}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    .end local v3    # "subId":I
    :goto_1
    if-nez v0, :cond_2

    .line 757
    const/16 v4, -0x74

    iput v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    .line 759
    :cond_2
    return v0

    .restart local v3    # "subId":I
    :cond_3
    move v0, v5

    .line 740
    goto :goto_0

    .line 747
    .end local v3    # "subId":I
    :cond_4
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v6

    if-nez v6, :cond_5

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isCellularNetworkAvailable()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 750
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v6

    if-ne v6, v7, :cond_6

    move v0, v4

    .line 751
    :goto_2
    const-string v4, "RnsServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Data Reg State "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_5
    const-string v4, "RnsServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLteNetworkReady "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Network Type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    move v0, v5

    .line 750
    goto :goto_2
.end method

.method private isMatchRoveIn()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 887
    const/4 v1, -0x1

    .line 888
    .local v1, "profile":I
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 890
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 891
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 896
    :cond_0
    if-eqz v1, :cond_1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 897
    :cond_1
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn = false, cellular only/none"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :goto_0
    return v2

    .line 902
    :cond_2
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 903
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 905
    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 906
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn signal strength criteria met"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_3
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-eqz v3, :cond_5

    .line 919
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn = false, check pdn connection"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 908
    :cond_4
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn = false, rssi issue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 923
    :cond_5
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    .line 924
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn = false, cellular preferred"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 928
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v3, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    cmp-long v3, v4, v6

    if-lez v3, :cond_7

    .line 929
    const/4 v2, 0x1

    goto :goto_0

    .line 932
    :cond_7
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn = false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isMatchRoveOut()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 937
    const/4 v1, -0x1

    .line 938
    .local v1, "profile":I
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 940
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 941
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 946
    :cond_0
    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 947
    :cond_1
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveOut = false, profile issue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :goto_0
    return v2

    .line 952
    :cond_2
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 953
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    .line 955
    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 956
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveOut signal strength criteria met"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_3
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v3, :cond_5

    .line 965
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveOut = false, check pdn connection"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 958
    :cond_4
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveOut = false, rssi issue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 970
    :cond_5
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    cmp-long v3, v4, v6

    if-lez v3, :cond_6

    .line 972
    const/4 v2, 0x1

    goto :goto_0

    .line 975
    :cond_6
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveOut = false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNetworkReady()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 763
    const/4 v1, 0x1

    .line 764
    .local v1, "phoneCount":I
    const/4 v3, -0x1

    .line 765
    .local v3, "subId":I
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isCellularNetworkAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 768
    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 769
    if-le v1, v4, :cond_0

    .line 770
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    .line 771
    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 772
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getMainCapabilitySlotId()I

    move-result v2

    .line 773
    .local v2, "phoneId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 776
    .end local v2    # "phoneId":I
    :cond_0
    invoke-direct {p0, v3}, Lcom/mediatek/rns/RnsServiceImpl;->getNetworkType(I)I

    move-result v0

    .line 777
    .local v0, "netType":I
    if-eqz v0, :cond_1

    if-ne v0, v4, :cond_2

    .line 778
    :cond_1
    const-string v5, "RnsServiceImpl"

    const-string v6, "isNetworkReady true"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    .end local v0    # "netType":I
    :goto_0
    return v4

    .line 782
    :cond_2
    const-string v4, "RnsServiceImpl"

    const-string v5, "isNetworkReady false"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 1

    .prologue
    .line 722
    monitor-enter p0

    .line 723
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private makeImsRadio()I
    .locals 10

    .prologue
    const/16 v9, -0x74

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 558
    iput v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    .line 559
    const/4 v1, 0x0

    .line 560
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 561
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 562
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 563
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v2, :cond_0

    .line 564
    const/4 v1, 0x0

    .line 566
    :cond_0
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    if-ne v2, v6, :cond_1

    if-eq v1, v6, :cond_1

    .line 567
    iput-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    .line 569
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 658
    :cond_2
    :goto_0
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeImsRadio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    invoke-direct {p0, v2}, Lcom/mediatek/rns/RnsServiceImpl;->transToReadableType(I)I

    move-result v2

    return v2

    .line 571
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v2, :cond_3

    .line 572
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 573
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 574
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 576
    :cond_4
    invoke-direct {p0, v8}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 581
    :pswitch_1
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    if-ne v2, v6, :cond_5

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 582
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    .line 584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLteRegTime:J

    goto :goto_0

    .line 586
    :cond_5
    iput-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    .line 587
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v2

    if-le v3, v2, :cond_7

    .line 591
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 592
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    .line 593
    const-string v2, "RnsServiceImpl"

    const-string v3, "Call is active, no attach to Wifi"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 595
    :cond_6
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 597
    :cond_7
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    if-le v2, v9, :cond_8

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 599
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 600
    :cond_8
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v2, :cond_a

    .line 603
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z

    if-eqz v2, :cond_9

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 604
    const-string v2, "RnsServiceImpl"

    const-string v3, "Call is active, no attach to Wifi"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 607
    :cond_9
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    .line 608
    const-string v2, "RnsServiceImpl"

    const-string v3, "Establishing connection overWifi even the RSSI strength is less than Rove in value"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 611
    :cond_a
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 612
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 613
    :cond_b
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 614
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 616
    :cond_c
    invoke-direct {p0, v8}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 621
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 622
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 623
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 625
    :cond_d
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 627
    :cond_e
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 628
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 630
    :cond_f
    invoke-direct {p0, v8}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 634
    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_11

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    if-le v2, v9, :cond_11

    .line 635
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 636
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 638
    :cond_10
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 640
    :cond_11
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v2, :cond_12

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-nez v2, :cond_12

    .line 641
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 642
    :cond_12
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 643
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 644
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 646
    :cond_13
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 648
    :cond_14
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 649
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 651
    :cond_15
    invoke-direct {p0, v8}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private makeMmsRadio()I
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 663
    iput v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    .line 664
    const/4 v1, 0x0

    .line 665
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 666
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 667
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 668
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v2, :cond_0

    .line 669
    const/4 v1, 0x0

    .line 672
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 718
    :cond_1
    :goto_0
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeMmsRadio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    invoke-direct {p0, v2}, Lcom/mediatek/rns/RnsServiceImpl;->transToReadableType(I)I

    move-result v2

    return v2

    .line 674
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 675
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 677
    :cond_2
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 681
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v2

    if-le v3, v2, :cond_3

    .line 683
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 684
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    const/16 v3, -0x74

    if-le v2, v3, :cond_4

    .line 685
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 686
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 689
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    .line 690
    const-string v2, "RnsServiceImpl"

    const-string v3, "Establishing connection overWifi even the RSSI strength is less than Rove in value"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 692
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 693
    :cond_6
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 695
    :cond_7
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 699
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 700
    :cond_8
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 702
    :cond_9
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 706
    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 707
    :cond_a
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 708
    :cond_b
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 709
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 711
    :cond_c
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 672
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private needToSendAlertWarning()Z
    .locals 10

    .prologue
    .line 1212
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v8, "UserPreference"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/rns/RnsPolicy;

    .line 1213
    .local v6, "userPolicy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v6}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1214
    .local v1, "mPreference":I
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v8, "WifiRoveThreshold"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/rns/RnsPolicy;

    .line 1215
    .local v2, "rovePolicy":Lcom/mediatek/rns/RnsPolicy;
    const/4 v0, 0x5

    .line 1216
    .local v0, "mDiff":I
    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v3

    .line 1217
    .local v3, "roveoutvalue":I
    const/4 v4, 0x0

    .line 1218
    .local v4, "sendAlertWarning":Z
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v4

    .line 1246
    .end local v4    # "sendAlertWarning":Z
    .local v5, "sendAlertWarning":I
    :goto_0
    return v5

    .line 1221
    .end local v5    # "sendAlertWarning":I
    .restart local v4    # "sendAlertWarning":Z
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 1242
    :cond_1
    :goto_1
    const-string v7, "RnsServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendAlertWarning = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " iswificonnected : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " IsWfcEnabled : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " roveoutvalue : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "LastRssi : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "isEpdgConnected : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isLteNetworkReady: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 1246
    .restart local v5    # "sendAlertWarning":I
    goto :goto_0

    .line 1223
    .end local v5    # "sendAlertWarning":I
    :pswitch_0
    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z

    if-nez v7, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    add-int v8, v3, v0

    if-gt v7, v8, :cond_1

    .line 1225
    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    .line 1230
    :pswitch_1
    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z

    if-nez v7, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    add-int v8, v3, v0

    if-gt v7, v8, :cond_1

    .line 1232
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1233
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1234
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1235
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onReceiveDcSwitchStateChange(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    .locals 3
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    .line 1599
    const-string v0, "RnsServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage param.getState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param.getReason(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getState()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1611
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 1600
    :sswitch_0
    const-string v2, "predetachcheck"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "attaching"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1604
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getReason()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lost Connection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1605
    invoke-direct {p0, p1}, Lcom/mediatek/rns/RnsServiceImpl;->handleDcStateAttaching(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    goto :goto_1

    .line 1600
    :sswitch_data_0
    .sparse-switch
        -0x1c8cb883 -> :sswitch_1
        0x523fead2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendRoveOutAlert()V
    .locals 2

    .prologue
    .line 1207
    const-string v0, "RnsServiceImpl"

    const-string v1, "send RoveOut Alert"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->sendRoveOutAlert()V

    .line 1210
    return-void
.end method

.method private startRoveIn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1149
    const-string v0, "RnsServiceImpl"

    const-string v1, "startRoveIn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-eqz v0, :cond_1

    .line 1153
    const-string v0, "RnsServiceImpl"

    const-string v1, "No rove-in"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v0, v2, :cond_0

    .line 1155
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    .line 1161
    monitor-enter p0

    .line 1162
    :try_start_0
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v0, v2, :cond_2

    .line 1163
    const-string v0, "RnsServiceImpl"

    const-string v1, "RoveIn is in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    monitor-exit p0

    goto :goto_0

    .line 1172
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1166
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z

    if-nez v0, :cond_4

    .line 1167
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/rns/RnsServiceImpl;->tryConnectToRadio(I)V

    .line 1169
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z

    if-eqz v0, :cond_5

    .line 1170
    const-string v0, "RnsServiceImpl"

    const-string v1, "Call is active, no handover to Wifi"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private startRoveOut()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 1177
    const-string v0, "RnsServiceImpl"

    const-string v1, "startRoveOut"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v0, :cond_1

    .line 1181
    const-string v0, "RnsServiceImpl"

    const-string v1, "No rove-out"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v0, v3, :cond_0

    .line 1183
    iput v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1188
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    .line 1189
    monitor-enter p0

    .line 1190
    :try_start_0
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v0, v3, :cond_2

    .line 1191
    const-string v0, "RnsServiceImpl"

    const-string v1, "RoveOut is in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    monitor-exit p0

    goto :goto_0

    .line 1195
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1194
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/mediatek/rns/RnsServiceImpl;->tryConnectToRadio(I)V

    .line 1195
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private transToReadableType(I)I
    .locals 3
    .param p1, "val"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 860
    if-ne p1, v0, :cond_0

    .line 861
    const-string v0, "RnsServiceImpl"

    const-string v1, "make Radio = ALLOWED_RADIO_WIFI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/4 v0, 0x0

    .line 875
    :goto_0
    return v0

    .line 863
    :cond_0
    if-ne p1, v1, :cond_1

    .line 864
    const-string v1, "RnsServiceImpl"

    const-string v2, "make Radio = ALLOWED_RADIO_MOBILE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 866
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 867
    const-string v0, "RnsServiceImpl"

    const-string v2, "make Radio = ALLOWED_RADIO_DENY"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 868
    goto :goto_0

    .line 870
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 871
    const-string v0, "RnsServiceImpl"

    const-string v1, "make Radio = ALLOWED_RADIO_MAX"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/4 v0, 0x3

    goto :goto_0

    .line 874
    :cond_3
    const-string v0, "RnsServiceImpl"

    const-string v1, "make Radio = ALLOWED_RADIO_NONE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private tryConnectToRadio(I)V
    .locals 4
    .param p1, "radio"    # I

    .prologue
    const/4 v3, 0x1

    .line 468
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-nez v0, :cond_2

    .line 469
    :cond_0
    const-string v0, "RnsServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryConnectToRadio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->retryConnectToRadio(II)V

    .line 471
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I

    .line 482
    :cond_1
    :goto_0
    return-void

    .line 474
    :cond_2
    const-string v0, "RnsServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryConnectToRadio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    .line 477
    if-nez p1, :cond_3

    .line 478
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    goto :goto_0

    .line 479
    :cond_3
    if-ne p1, v3, :cond_1

    .line 480
    iput v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1666
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1668
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const/4 v0, 0x0

    .line 1669
    .local v0, "i":I
    const-string v4, "Policies:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1670
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1671
    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1672
    .local v2, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  policy["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1673
    add-int/lit8 v0, v0, 0x1

    .line 1674
    goto :goto_0

    .line 1675
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    const-string v4, "(none(-1)|wifi_only(0)|wifi_preferred(1)|cellular_only(2)|cellular_preferred(3))"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1678
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1679
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1680
    const-string v4, "Status:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1681
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1682
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWifiConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1683
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWfcEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1684
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isHandoverInProgress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1685
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLteNetworkReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1686
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLteImsConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1687
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEpdgImsConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1688
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isImsOverLteEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1689
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNetworkReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1690
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCellularNetworkAvailable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isCellularNetworkAvailable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1691
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1692
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1693
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Radio Selection for IMS type connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->makeImsRadio()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1694
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Radio Selection for MMS type connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->makeMmsRadio()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1695
    const-string v4, "none(-1)|wifi(0)|moible(1)|all(2)"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1696
    return-void
.end method

.method public getAllowedRadioList(I)I
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 487
    packed-switch p1, :pswitch_data_0

    .line 491
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->makeMmsRadio()I

    move-result v0

    :goto_0
    return v0

    .line 489
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->makeImsRadio()I

    move-result v0

    goto :goto_0

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public getRnsState()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    return v0
.end method

.method public getTryAnotherRadioType(I)I
    .locals 12
    .param p1, "failedNetType"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 497
    const/4 v2, -0x1

    .line 498
    .local v2, "profile":I
    const/4 v0, -0x1

    .line 499
    .local v0, "netType":I
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/rns/RnsPolicy;

    .line 500
    .local v1, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 501
    invoke-virtual {v1}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v2

    .line 504
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 505
    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v3, v10, :cond_4

    if-ne p1, v10, :cond_4

    .line 507
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RoveIn failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msec."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_1
    :goto_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 518
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 547
    :cond_3
    :goto_1
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTryAnotherRadioType:New network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Old network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return v0

    .line 509
    :cond_4
    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v3, v11, :cond_1

    if-nez p1, :cond_1

    .line 511
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RoveOut failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msec."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 520
    :pswitch_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 521
    const-string v3, "RnsServiceImpl"

    const-string v4, "PREFERENCE_WIFI_ONLY - no need try another"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 522
    :cond_5
    if-ne v2, v10, :cond_3

    .line 523
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLteNetworkReady "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsWfcEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 527
    const/4 v0, 0x0

    .line 528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    goto/16 :goto_1

    .line 533
    :pswitch_1
    if-nez v2, :cond_6

    .line 534
    const-string v3, "RnsServiceImpl"

    const-string v4, "PREFERENCE_CELLULAR_ONLY - no need try another"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 535
    :cond_6
    if-ne v2, v11, :cond_3

    .line 536
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWifiConnected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsWfcEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v3

    if-nez v3, :cond_3

    .line 539
    const/4 v0, 0x1

    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    goto/16 :goto_1

    .line 518
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleEventImsOverLteSettings()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1543
    const-string v2, "RnsServiceImpl"

    const-string v3, "handleEventImsOverLteSettings "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    const/4 v1, -0x1

    .line 1545
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1547
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1548
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1550
    :cond_0
    monitor-enter p0

    .line 1551
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volte_vt_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 1553
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    .line 1557
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1558
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsImsOverLteEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v2, :cond_3

    .line 1560
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v2, :cond_1

    .line 1561
    iput v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1562
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    .line 1569
    :cond_1
    :goto_1
    return-void

    .line 1555
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    goto :goto_0

    .line 1557
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1566
    :cond_3
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 1567
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    goto :goto_1
.end method

.method public handleEventWifiDisconnect()V
    .locals 4

    .prologue
    .line 1497
    const-string v2, "RnsServiceImpl"

    const-string v3, "handle Event Wifi Disconnect "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const/4 v1, -0x1

    .line 1499
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1501
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1502
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1504
    :cond_0
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 1505
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1507
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v2, :cond_3

    .line 1513
    :cond_2
    :goto_0
    return-void

    .line 1510
    :cond_3
    if-nez v1, :cond_4

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v2, :cond_2

    .line 1511
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    goto :goto_0
.end method

.method public handleEventWifiStateChangedAction()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1518
    const-string v2, "RnsServiceImpl"

    const-string v3, "handleEventWifiStateChangedAction "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    const/4 v1, -0x1

    .line 1520
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1522
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1523
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1525
    :cond_0
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 1526
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1528
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v2, :cond_3

    .line 1538
    :cond_2
    :goto_0
    return-void

    .line 1531
    :cond_3
    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-ne v2, v4, :cond_4

    .line 1532
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    .line 1534
    :cond_4
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-ne v2, v4, :cond_2

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z

    if-nez v2, :cond_2

    .line 1535
    const-string v2, "RnsServiceImpl"

    const-string v3, "send Rove Out Alert warning "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->sendRoveOutAlert()V

    goto :goto_0
.end method

.method public isNeedWifiConnected(I)Z
    .locals 4
    .param p1, "flag"    # I

    .prologue
    const/4 v3, 0x0

    .line 1717
    const-string v0, "RnsServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedWifiConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iput-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    .line 1731
    return v3
.end method

.method public start()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 167
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 168
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/mediatek/rns/RnsServiceImpl;->REQUEST:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    .line 170
    return-void
.end method
