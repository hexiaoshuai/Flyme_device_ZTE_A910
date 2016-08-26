.class public final Lcom/android/internal/telephony/MMTelSSTransport;
.super Landroid/os/Handler;
.source "MMTelSSTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0x1388

.field static final DISABLE_MODE_ADD_RULE_DEACTIVATED_TAG:I = 0x2

.field static final DISABLE_MODE_CHANGE_CB_ALLOW:I = 0x3

.field static final DISABLE_MODE_DELETE_RULE:I = 0x1

.field static final EVENT_RADIO_AVAILABLE:I = 0x4

.field static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x3

.field static final EVENT_RADIO_ON:I = 0x5

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field private static final INSTANCE:Lcom/android/internal/telephony/MMTelSSTransport;

.field private static final LOG_TAG:Ljava/lang/String; = "MMTelSS"

.field static final MMTELSS_MAX_COMMAND_BYTES:I = 0x2000

.field static final MMTELSS_REQ_GET_CB:I = 0x7

.field static final MMTELSS_REQ_GET_CF:I = 0x9

.field static final MMTELSS_REQ_GET_CF_TIME_SLOT:I = 0x10

.field static final MMTELSS_REQ_GET_CLIP:I = 0x3

.field static final MMTELSS_REQ_GET_CLIR:I = 0x2

.field static final MMTELSS_REQ_GET_COLP:I = 0x4

.field static final MMTELSS_REQ_GET_COLR:I = 0x5

.field static final MMTELSS_REQ_GET_CW:I = 0xb

.field static final MMTELSS_REQ_SET_CB:I = 0x6

.field static final MMTELSS_REQ_SET_CF:I = 0x8

.field static final MMTELSS_REQ_SET_CF_TIME_SLOT:I = 0xf

.field static final MMTELSS_REQ_SET_CLIP:I = 0xc

.field static final MMTELSS_REQ_SET_CLIR:I = 0x1

.field static final MMTELSS_REQ_SET_COLP:I = 0xd

.field static final MMTELSS_REQ_SET_COLR:I = 0xe

.field static final MMTELSS_REQ_SET_CW:I = 0xa

.field private static final MODE_SS_CS:Ljava/lang/String; = "Prefer CS"

.field private static final MODE_SS_XCAP:Ljava/lang/String; = "Prefer XCAP"

.field private static final PROP_SS_CFNUM:Ljava/lang/String; = "persist.radio.xcap.cfn"

.field private static final PROP_SS_DISABLE_METHOD:Ljava/lang/String; = "persist.radio.ss.xrdm"

.field private static final PROP_SS_MODE:Ljava/lang/String; = "persist.radio.ss.mode"

.field static final RADIO_TEMPSTATE_AVAILABLE:I = 0x0

.field static final RADIO_TEMPSTATE_UNAVAILABLE:I = 0x1

.field private static final TEST_DOC:Ljava/lang/String; = "simservs"

.field private static final TEST_USER:Ljava/lang/String; = "sip:user@anritsu-cscf.com"

.field private static final XCAP_ROOT:Ljava/lang/String; = "http://192.168.1.2:8080/"

.field private static final mSimservs:Lcom/mediatek/simservs/client/SimServs;


# instance fields
.field mContext:Landroid/content/Context;

.field mDisableRuleMode:I

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mMCC:Ljava/lang/String;

.field mMNC:Ljava/lang/String;

.field private mNetwork:Landroid/net/Network;

.field mPassword:Ljava/lang/String;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field mRequestMessagesPending:I

.field mRequestMessagesWaiting:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MMTelSSRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSender:Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

.field mSenderThread:Landroid/os/HandlerThread;

.field private mUpdateSingleRule:Z

.field mUserName:Ljava/lang/String;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockTimeout:I

.field mXIntendedId:Ljava/lang/String;

.field private mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

.field mXcapRoot:Ljava/lang/String;

.field mXui:Ljava/lang/String;

.field private pm:Landroid/os/PowerManager;

.field private radioTemporarilyUnavailable:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 271
    new-instance v0, Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct {v0}, Lcom/android/internal/telephony/MMTelSSTransport;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MMTelSSTransport;->INSTANCE:Lcom/android/internal/telephony/MMTelSSTransport;

    .line 351
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 401
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 272
    iput-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->pm:Landroid/os/PowerManager;

    .line 275
    iput-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 276
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mMCC:Ljava/lang/String;

    .line 277
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mMNC:Ljava/lang/String;

    .line 278
    const-string v1, "user@chinaTel.com"

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 279
    const-string v1, "http://192.168.1.2:8080/"

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 280
    const-string v1, "user@chinaTel.com"

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 281
    const-string v1, "sip:user@anritsu-cscf.com"

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    .line 284
    const-string v1, "password"

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    .line 285
    iput-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    .line 286
    iput-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    .line 287
    iput-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;

    .line 327
    iput v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    .line 342
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    .line 346
    iput v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->radioTemporarilyUnavailable:I

    .line 349
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    .line 364
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z

    .line 367
    new-instance v1, Lcom/android/internal/telephony/MMTelSSTransport$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/MMTelSSTransport$1;-><init>(Lcom/android/internal/telephony/MMTelSSTransport;)V

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 408
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MMTelSSTransmitter"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSenderThread:Landroid/os/HandlerThread;

    .line 409
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 410
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 411
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;-><init>(Lcom/android/internal/telephony/MMTelSSTransport;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSender:Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

    .line 412
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/MMTelSSTransport;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MMTelSSTransport;
    .param p1, "x1"    # I

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MMTelSSTransport;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MMTelSSTransport;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    return-object v0
.end method

.method static synthetic access$300()Lcom/mediatek/simservs/client/SimServs;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MMTelSSTransport;

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/MMTelSSTransport;I)Lcom/android/internal/telephony/MMTelSSRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MMTelSSTransport;
    .param p1, "x1"    # I

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MMTelSSTransport;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/MMTelSSTransport;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MMTelSSTransport;

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/android/internal/telephony/MMTelSSTransport;->releaseWakeLockIfDone()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 6

    .prologue
    .line 5223
    const-string v1, "MMTelSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=>wakeLock() mRequestMessagesPending = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRequestsList.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5226
    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 5227
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5228
    iget v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    .line 5230
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSender:Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->removeMessages(I)V

    .line 5231
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSender:Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5232
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSender:Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

    iget v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLockTimeout:I

    int-to-long v4, v3

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5233
    monitor-exit v2

    .line 5234
    return-void

    .line 5233
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/MMTelSSRequest;
    .locals 5
    .param p1, "serial"    # I

    .prologue
    .line 5254
    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 5255
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 5256
    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/MMTelSSRequest;

    .line 5258
    .local v1, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget v3, v1, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    if-ne v3, p1, :cond_1

    .line 5259
    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5260
    iget v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesWaiting:I

    if-lez v3, :cond_0

    .line 5261
    iget v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesWaiting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesWaiting:I

    .line 5262
    :cond_0
    monitor-exit v4

    .line 5267
    .end local v1    # "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    :goto_1
    return-object v1

    .line 5255
    .restart local v1    # "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5265
    .end local v1    # "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    :cond_2
    monitor-exit v4

    .line 5267
    const/4 v1, 0x0

    goto :goto_1

    .line 5265
    .end local v2    # "s":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getInstance()Lcom/android/internal/telephony/MMTelSSTransport;
    .locals 1

    .prologue
    .line 415
    sget-object v0, Lcom/android/internal/telephony/MMTelSSTransport;->INSTANCE:Lcom/android/internal/telephony/MMTelSSTransport;

    return-object v0
.end method

.method public static getSimServs()Lcom/mediatek/simservs/client/SimServs;
    .locals 1

    .prologue
    .line 419
    sget-object v0, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    return-object v0
.end method

.method private handleRadioAvailable()V
    .locals 2

    .prologue
    .line 495
    const-string v0, "MMTelSS"

    const-string v1, "handleRadioAvailable()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->radioTemporarilyUnavailable:I

    .line 497
    return-void
.end method

.method private handleRadioOffOrNotAvailable()V
    .locals 2

    .prologue
    .line 490
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->radioTemporarilyUnavailable:I

    .line 491
    const-string v0, "MMTelSS"

    const-string v1, "handleRadioOffOrNotAvailable()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void
.end method

.method private releaseWakeLockIfDone()V
    .locals 3

    .prologue
    .line 5238
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeLock()=> mRequestMessagesPending = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRequestsList.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5241
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 5242
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 5247
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSender:Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->removeMessages(I)V

    .line 5248
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5250
    :cond_0
    monitor-exit v1

    .line 5251
    return-void

    .line 5250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 5272
    packed-switch p0, :pswitch_data_0

    .line 5288
    :pswitch_0
    const-string v0, "UNKNOWN MMTELSS REQ"

    :goto_0
    return-object v0

    .line 5273
    :pswitch_1
    const-string v0, "SET_CLIR"

    goto :goto_0

    .line 5274
    :pswitch_2
    const-string v0, "GET_CLIR"

    goto :goto_0

    .line 5275
    :pswitch_3
    const-string v0, "GET_CLIP"

    goto :goto_0

    .line 5276
    :pswitch_4
    const-string v0, "GET_COLP"

    goto :goto_0

    .line 5277
    :pswitch_5
    const-string v0, "GET_COLR"

    goto :goto_0

    .line 5278
    :pswitch_6
    const-string v0, "SET_CW"

    goto :goto_0

    .line 5279
    :pswitch_7
    const-string v0, "GET_CW"

    goto :goto_0

    .line 5280
    :pswitch_8
    const-string v0, "SET_CB"

    goto :goto_0

    .line 5281
    :pswitch_9
    const-string v0, "GET_CB"

    goto :goto_0

    .line 5282
    :pswitch_a
    const-string v0, "SET_CF"

    goto :goto_0

    .line 5283
    :pswitch_b
    const-string v0, "GET_CF"

    goto :goto_0

    .line 5285
    :pswitch_c
    const-string v0, "SET_CF_TIME_SLOT"

    goto :goto_0

    .line 5286
    :pswitch_d
    const-string v0, "GET_CF_TIME_SLOT"

    goto :goto_0

    .line 5272
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private requestXcapNetwork(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 500
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestXcapNetwork(): phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mXcapMobileDataNetworkManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;

    .line 503
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->acquireNetwork(I)Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;

    .line 505
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;

    invoke-static {p1}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->useAcquiredNetwork(Landroid/net/Network;Ljava/lang/String;I)V

    .line 510
    :cond_0
    return-void
.end method

.method private send(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 3
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 5347
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSender:Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5348
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Lcom/android/internal/telephony/MMTelSSTransport;->acquireWakeLock()V

    .line 5349
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5351
    return-void
.end method


# virtual methods
.method public dumpCBRule(Lcom/mediatek/simservs/client/policy/Rule;)V
    .locals 8
    .param p1, "rule"    # Lcom/mediatek/simservs/client/policy/Rule;

    .prologue
    .line 5321
    const/4 v1, 0x0

    .line 5322
    .local v1, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    const/4 v0, 0x0

    .line 5324
    .local v0, "action":Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz p1, :cond_0

    .line 5325
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v1

    .line 5326
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v0

    .line 5327
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 5342
    :cond_0
    :goto_0
    return-void

    .line 5332
    :cond_1
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dump CB Rule: international="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",roaming="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5333
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v3

    .line 5334
    .local v3, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, ""

    .line 5335
    .local v4, "mediaTypeList":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 5336
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 5337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5336
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5339
    :cond_2
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dump CB Rule:mediaTypeList="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dumpCFRule(Lcom/mediatek/simservs/client/policy/Rule;)V
    .locals 9
    .param p1, "rule"    # Lcom/mediatek/simservs/client/policy/Rule;

    .prologue
    .line 5296
    const/4 v1, 0x0

    .line 5297
    .local v1, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    const/4 v0, 0x0

    .line 5298
    .local v0, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v2, 0x0

    .line 5300
    .local v2, "forward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    if-eqz p1, :cond_0

    .line 5301
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v1

    .line 5302
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v0

    .line 5303
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 5318
    :cond_0
    :goto_0
    return-void

    .line 5308
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v2

    .line 5309
    const-string v6, "MMTelSS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dump CF Rule:busy="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",noAns="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",noReachable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",noRegistered="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",forward_to_Target="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",isNotifyCaller="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5310
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v4

    .line 5311
    .local v4, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, ""

    .line 5312
    .local v5, "mediaTypeList":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 5313
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 5314
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5313
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5316
    :cond_2
    const-string v6, "MMTelSS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dump CF Rule:mediaTypeList="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 4792
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getDefaultImsPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->getCLIR(Landroid/os/Message;I)V

    .line 4793
    return-void
.end method

.method public getCLIR(Landroid/os/Message;I)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "phoneId"    # I

    .prologue
    .line 4802
    const/4 v1, 0x2

    invoke-static {v1, p1}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 4803
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4804
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 4805
    return-void
.end method

.method public getCOLP(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 4864
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getDefaultImsPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->getCOLP(Landroid/os/Message;I)V

    .line 4865
    return-void
.end method

.method public getCOLP(Landroid/os/Message;I)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "phoneId"    # I

    .prologue
    .line 4874
    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 4876
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4877
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 4878
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 4902
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getDefaultImsPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->getCOLR(Landroid/os/Message;I)V

    .line 4903
    return-void
.end method

.method public getCOLR(Landroid/os/Message;I)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "phoneId"    # I

    .prologue
    .line 4912
    const/4 v1, 0x5

    invoke-static {v1, p1}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 4914
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4915
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 4916
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 477
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 487
    :goto_0
    return-void

    .line 479
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MMTelSSTransport;->handleRadioOffOrNotAvailable()V

    goto :goto_0

    .line 482
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/MMTelSSTransport;->handleRadioAvailable()V

    goto :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 4828
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getDefaultImsPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCLIP(Landroid/os/Message;I)V

    .line 4829
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;I)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "phoneId"    # I

    .prologue
    .line 4838
    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 4839
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4840
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 4841
    return-void
.end method

.method public queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V
    .locals 1
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 5199
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getDefaultImsPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallForwardInTimeSlotStatus(IILandroid/os/Message;I)V

    .line 5201
    return-void
.end method

.method public queryCallForwardInTimeSlotStatus(IILandroid/os/Message;I)V
    .locals 2
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;
    .param p4, "phoneId"    # I

    .prologue
    .line 5213
    const/16 v1, 0x10

    invoke-static {v1, p3}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 5214
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5215
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5216
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5217
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 5218
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 5119
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getDefaultImsPhoneId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;I)V

    .line 5121
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;I)V
    .locals 4
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;
    .param p5, "phoneId"    # I

    .prologue
    .line 5135
    const/4 v0, 0x0

    .line 5139
    .local v0, "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    const/16 v2, 0x9

    invoke-static {v2, p4}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v1

    .line 5141
    .local v1, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v2, v1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5142
    iget-object v2, v1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5143
    iget-object v2, v1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5145
    if-eqz p3, :cond_0

    .line 5146
    iget-object v2, v1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5150
    :goto_0
    iget-object v2, v1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5153
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 5155
    return-void

    .line 5148
    :cond_0
    iget-object v2, v1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 1
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4942
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getDefaultImsPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallWaiting(ILandroid/os/Message;I)V

    .line 4943
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;I)V
    .locals 2
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .prologue
    .line 4953
    const/16 v1, 0xb

    invoke-static {v1, p2}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 4954
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4955
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4956
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 4957
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 5041
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getDefaultImsPhoneId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MMTelSSTransport;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;I)V

    .line 5043
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;I)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;
    .param p5, "phoneId"    # I

    .prologue
    .line 5058
    const/4 v1, 0x7

    invoke-static {v1, p4}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 5059
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5060
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5061
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5062
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 5063
    return-void
.end method

.method public registerPhone(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    .line 423
    instance-of v1, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v1, :cond_1

    .line 424
    iput-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 425
    const-string v1, "MMTelSS"

    const-string v2, "SIPPhone is not allowed to register for MMTelSS"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    if-eq p3, v1, :cond_2

    .line 431
    const-string v1, "MMTelSS"

    const-string v2, "Only support single SIM for MMTelSS currently"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_2
    iput-object p1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 435
    const-string v1, "MMTelSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerPhone with instance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",phone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iput-object p2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    .line 437
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_3

    .line 438
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->pm:Landroid/os/PowerManager;

    .line 439
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->pm:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "MMTelSS"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 440
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 441
    const-string v1, "ro.ril.wake_lock_timeout"

    const/16 v2, 0x1388

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLockTimeout:I

    .line 445
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 448
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v1, :cond_4

    .line 449
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 450
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 454
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    if-nez v1, :cond_0

    .line 455
    new-instance v1, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    goto/16 :goto_0
.end method

.method public registerUtService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    .line 461
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->pm:Landroid/os/PowerManager;

    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->pm:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "MMTelSS"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 465
    const-string v0, "ro.ril.wake_lock_timeout"

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLockTimeout:I

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    if-nez v0, :cond_1

    .line 471
    new-instance v0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    .line 473
    :cond_1
    return-void
.end method

.method public setCLIP(ILandroid/os/Message;)V
    .locals 1
    .param p1, "clipEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 4809
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getDefaultImsPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->setCLIP(ILandroid/os/Message;I)V

    .line 4810
    return-void
.end method

.method public setCLIP(ILandroid/os/Message;I)V
    .locals 2
    .param p1, "clipEnable"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .prologue
    .line 4820
    const/16 v1, 0xc

    invoke-static {v1, p2}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 4821
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4822
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4823
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 4824
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 1
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 4771
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getDefaultImsPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->setCLIR(ILandroid/os/Message;I)V

    .line 4772
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;I)V
    .locals 2
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .prologue
    .line 4783
    const/4 v1, 0x1

    invoke-static {v1, p2}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 4785
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4786
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4787
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 4788
    return-void
.end method

.method public setCOLP(ILandroid/os/Message;)V
    .locals 1
    .param p1, "colpEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 4845
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getDefaultImsPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->setCOLP(ILandroid/os/Message;I)V

    .line 4846
    return-void
.end method

.method public setCOLP(ILandroid/os/Message;I)V
    .locals 2
    .param p1, "colpEnable"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .prologue
    .line 4856
    const/16 v1, 0xd

    invoke-static {v1, p2}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 4857
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4858
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4859
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 4860
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 1
    .param p1, "colrMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 4883
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getDefaultImsPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->setCOLR(ILandroid/os/Message;I)V

    .line 4884
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;I)V
    .locals 2
    .param p1, "colrMode"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .prologue
    .line 4894
    const/16 v1, 0xe

    invoke-static {v1, p2}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 4895
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4896
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4897
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 4898
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 8
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 5068
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getDefaultImsPhoneId()I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;I)V

    .line 5070
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;I)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;
    .param p7, "phoneId"    # I

    .prologue
    .line 5098
    if-eqz p4, :cond_0

    const-string v1, "sip:"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sips:"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tel:"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 5103
    :cond_0
    const/16 v1, 0x8

    invoke-static {v1, p6}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 5106
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5107
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5108
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5109
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5110
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5111
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 5112
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 5113
    return-void
.end method

.method public setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V
    .locals 9
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "timeSlot"    # [J
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 5161
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getDefaultImsPhoneId()I

    move-result v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;I)V

    .line 5163
    return-void
.end method

.method public setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;I)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "timeSlot"    # [J
    .param p7, "response"    # Landroid/os/Message;
    .param p8, "phoneId"    # I

    .prologue
    .line 5180
    if-eqz p4, :cond_0

    const-string v1, "sip:"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sips:"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tel:"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 5185
    :cond_0
    const/16 v1, 0xf

    invoke-static {v1, p7}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 5186
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5187
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5188
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5189
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5190
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5191
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 5192
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 5193
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 5194
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 4921
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getDefaultImsPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallWaiting(ZILandroid/os/Message;I)V

    .line 4922
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;I)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;
    .param p4, "phoneId"    # I

    .prologue
    const/4 v1, 0x1

    .line 4933
    const/16 v2, 0xa

    invoke-static {v2, p3}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 4934
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4935
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4936
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4937
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 4938
    return-void

    .line 4934
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 4963
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getDefaultImsPhoneId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;I)V

    .line 4965
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;I)V
    .locals 12
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;
    .param p6, "phoneId"    # I

    .prologue
    .line 4985
    invoke-static/range {p6 .. p6}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v5

    .line 4987
    .local v5, "subId":I
    new-instance v1, Lcom/mediatek/simservs/client/policy/Rule;

    new-instance v6, Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-direct {v6}, Lcom/mediatek/xcap/client/uri/XcapUri;-><init>()V

    const-string v7, "http://"

    const-string v8, "intendedId"

    new-instance v9, Lcom/mediatek/gba/GbaCredentials;

    iget-object v10, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static/range {p6 .. p6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11, v5}, Lcom/mediatek/gba/GbaCredentials;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 4989
    .local v1, "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    .line 4990
    .local v3, "cbcond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v2

    .line 5000
    .local v2, "cbaction":Lcom/mediatek/simservs/client/policy/Actions;
    const-string v6, "OI"

    if-ne p1, v6, :cond_2

    .line 5003
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 5013
    :cond_0
    :goto_0
    const/4 v6, 0x1

    move/from16 v0, p4

    if-ne v0, v6, :cond_4

    .line 5014
    const-string v6, "audio"

    invoke-virtual {v3, v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 5019
    :cond_1
    :goto_1
    const/4 v6, 0x1

    if-ne p2, v6, :cond_5

    .line 5021
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 5027
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->dumpCBRule(Lcom/mediatek/simservs/client/policy/Rule;)V

    .line 5029
    const/4 v6, 0x6

    move-object/from16 v0, p5

    invoke-static {v6, v0}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v4

    .line 5030
    .local v4, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v6, v4, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v6, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5031
    iget-object v7, v4, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v6, 0x1

    if-ne p2, v6, :cond_6

    const/4 v6, 0x1

    :goto_3
    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 5032
    iget-object v6, v4, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5033
    iget-object v6, v4, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5034
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 5035
    return-void

    .line 5004
    .end local v4    # "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    :cond_2
    const-string v6, "OX"

    if-ne p1, v6, :cond_3

    .line 5007
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    goto :goto_0

    .line 5008
    :cond_3
    const-string v6, "IR"

    if-ne p1, v6, :cond_0

    .line 5010
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    goto :goto_0

    .line 5015
    :cond_4
    const/16 v6, 0x200

    move/from16 v0, p4

    if-ne v0, v6, :cond_1

    .line 5016
    const-string v6, "video"

    invoke-virtual {v3, v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_1

    .line 5024
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_2

    .line 5031
    .restart local v4    # "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    :cond_6
    const/4 v6, 0x0

    goto :goto_3
.end method

.method public setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "xui"    # Ljava/lang/String;
    .param p2, "xcapRoot"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "userName"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "phoneId"    # I

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 525
    iput-object p2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 526
    iput-object p3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 527
    iput-object p4, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    .line 528
    iput-object p5, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    .line 530
    sget-object v3, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v3, p1}, Lcom/mediatek/simservs/client/SimServs;->setXui(Ljava/lang/String;)V

    .line 531
    sget-object v3, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-static {p2, p6}, Lcom/android/internal/telephony/MMTelSSUtils;->addXcapRootPort(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/SimServs;->setXcapRoot(Ljava/lang/String;)V

    .line 532
    sget-object v3, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v3, p3}, Lcom/mediatek/simservs/client/SimServs;->setIntendedId(Ljava/lang/String;)V

    .line 533
    invoke-static {p6}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 536
    .local v1, "subId":I
    const-string v3, "ril.ss.tcname"

    const-string v4, "Empty"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 537
    .local v2, "tc_name":Ljava/lang/String;
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSimservsInitParameters():tc_name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", passed userName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    if-eqz v2, :cond_0

    const-string v3, "Single_TC_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 540
    move-object p4, v2

    .line 541
    iput-object p4, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    .line 546
    :cond_0
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.mtk.simserv.username:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "persist.mtk.simserv.username"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "persist.mtk.simserv.password:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "persist.mtk.simserv.password"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v3, "persist.mtk.simserv.username"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "persist.mtk.simserv.username"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 555
    sget-object v3, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    const-string v4, "persist.mtk.simserv.username"

    invoke-static {v4, p4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "persist.mtk.simserv.password"

    invoke-static {v5, p5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/simservs/client/SimServs;->setHttpCredential(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :goto_0
    return-void

    .line 559
    :cond_1
    new-instance v0, Lcom/mediatek/gba/GbaCredentials;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p2, v1}, Lcom/mediatek/gba/GbaCredentials;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 560
    .local v0, "credential":Lcom/mediatek/gba/GbaCredentials;
    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_2

    .line 561
    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v3}, Lcom/mediatek/gba/GbaCredentials;->setNetwork(Landroid/net/Network;)V

    .line 564
    :cond_2
    invoke-static {p6}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp18IccCard(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 565
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/mediatek/gba/GbaCredentials;->setFallBackAddressType(I)V

    .line 568
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v3, v0}, Lcom/mediatek/simservs/client/SimServs;->setGbaCredential(Lorg/apache/http/auth/Credentials;)V

    .line 569
    sget-object v3, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/SimServs;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method
