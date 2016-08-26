.class public Lcom/android/fingerprint/GoodixFingerPrintManager;
.super Ljava/lang/Object;
.source "GoodixFingerPrintManager.java"

# interfaces
.implements Lcom/android/fingerprint/FingerprintInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fingerprint/GoodixFingerPrintManager$EventType;
    }
.end annotation


# static fields
.field private static final FINGER_PRINT_UNLOCK_VALUE:Ljava/lang/String; = "keyguard"

.field private static final MSG_DOWN:I = 0x64

.field private static final MSG_ENROLL_FAILED:I = 0x98

.field private static final MSG_ENROLL_FINISHED:I = 0x97

.field private static final MSG_ENROLL_PROGRESS:I = 0x96

.field private static final MSG_IMAGE:I = 0x65

.field private static final MSG_IMAGE_ERROR:I = 0x67

.field private static final MSG_VERIFY_CANCEL:I = 0xcb

.field private static final MSG_VERIFY_FAILED:I = 0xc9

.field private static final MSG_VERIFY_SUCCESS:I = 0xc8

.field private static final MSG_VERIFY_TIMEOUT:I = 0xca

.field private static final MSG_WAIT_DOWN:I = 0x66

.field private static final STATE_ENROLL:I = 0x1

.field private static final STATE_VERIFY:I = 0x2

.field public static final TAG:Ljava/lang/String; = "GoodixFingerPrintManager"

.field private static mUserData:I


# instance fields
.field private mAlipayTimer:Ljava/util/Timer;

.field private mCaptureCallback:Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;

.field private mEnrollCallback:Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;

.field private mFpId:I

.field mHandler:Landroid/os/Handler;

.field private mIdentifyCallback:Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;

.field private mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

.field private mIsSaveEnroll:Z

.field private mIsSetServiceReceiver:Z

.field private mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

.field private mServiceReceiver:Lcom/android/fingerprint/IGoodixFingerPrintServiceReceiver;

.field private mState:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mUserData:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fingerprint/IGoodixFingerPrintService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/fingerprint/IGoodixFingerPrintService;

    .prologue
    const/4 v1, 0x0

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mIsSetServiceReceiver:Z

    .line 48
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mToken:Landroid/os/IBinder;

    .line 57
    iput v1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mState:I

    .line 58
    iput-boolean v1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mIsSaveEnroll:Z

    .line 59
    iput v1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mFpId:I

    .line 88
    new-instance v0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/fingerprint/GoodixFingerPrintManager$1;-><init>(Lcom/android/fingerprint/GoodixFingerPrintManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    .line 261
    new-instance v0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;

    invoke-direct {v0, p0}, Lcom/android/fingerprint/GoodixFingerPrintManager$2;-><init>(Lcom/android/fingerprint/GoodixFingerPrintManager;)V

    iput-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mServiceReceiver:Lcom/android/fingerprint/IGoodixFingerPrintServiceReceiver;

    .line 405
    iput-object p1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

    .line 406
    return-void
.end method

.method static synthetic access$000(Lcom/android/fingerprint/GoodixFingerPrintManager;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/android/fingerprint/GoodixFingerPrintManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mAlipayTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/fingerprint/GoodixFingerPrintManager;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/android/fingerprint/GoodixFingerPrintManager;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mAlipayTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/fingerprint/GoodixFingerPrintManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mCaptureCallback:Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/fingerprint/GoodixFingerPrintManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mUserData:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/fingerprint/GoodixFingerPrintManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mEnrollCallback:Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/fingerprint/GoodixFingerPrintManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyCallback:Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/fingerprint/GoodixFingerPrintManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/fingerprint/GoodixFingerPrintManager;

    .prologue
    .line 21
    iget v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mState:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/fingerprint/GoodixFingerPrintManager;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/fingerprint/GoodixFingerPrintManager;
    .param p1, "x1"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/fingerprint/GoodixFingerPrintManager;->convertEvent(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/fingerprint/GoodixFingerPrintManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/fingerprint/GoodixFingerPrintManager;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mIsSaveEnroll:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/fingerprint/GoodixFingerPrintManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/fingerprint/GoodixFingerPrintManager;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mIsSaveEnroll:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/fingerprint/GoodixFingerPrintManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/fingerprint/GoodixFingerPrintManager;

    .prologue
    .line 21
    iget v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mFpId:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/fingerprint/GoodixFingerPrintManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/fingerprint/GoodixFingerPrintManager;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mFpId:I

    return p1
.end method

.method private convertEvent(I)I
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 624
    sparse-switch p1, :sswitch_data_0

    .line 661
    const/16 v0, 0x69

    .line 664
    .local v0, "result":I
    :goto_0
    return v0

    .line 627
    .end local v0    # "result":I
    :sswitch_0
    const/16 v0, 0x64

    .line 628
    .restart local v0    # "result":I
    goto :goto_0

    .line 632
    .end local v0    # "result":I
    :sswitch_1
    const/16 v0, 0x6a

    .line 633
    .restart local v0    # "result":I
    goto :goto_0

    .line 636
    .end local v0    # "result":I
    :sswitch_2
    const/16 v0, 0x68

    .line 637
    .restart local v0    # "result":I
    goto :goto_0

    .line 640
    .end local v0    # "result":I
    :sswitch_3
    const/16 v0, 0x65

    .line 641
    .restart local v0    # "result":I
    goto :goto_0

    .line 645
    .end local v0    # "result":I
    :sswitch_4
    const/16 v0, 0x67

    .line 646
    .restart local v0    # "result":I
    goto :goto_0

    .line 648
    .end local v0    # "result":I
    :sswitch_5
    const/16 v0, 0x6b

    .line 649
    .restart local v0    # "result":I
    goto :goto_0

    .line 651
    .end local v0    # "result":I
    :sswitch_6
    const/16 v0, 0x6c

    .line 652
    .restart local v0    # "result":I
    goto :goto_0

    .line 657
    .end local v0    # "result":I
    :sswitch_7
    const/16 v0, 0x69

    .line 658
    .restart local v0    # "result":I
    goto :goto_0

    .line 624
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_3
        0x14 -> :sswitch_2
        0x15 -> :sswitch_4
        0x16 -> :sswitch_1
        0x17 -> :sswitch_7
        0x19 -> :sswitch_7
        0x1a -> :sswitch_5
        0x1b -> :sswitch_6
        0x102 -> :sswitch_7
        0x104 -> :sswitch_4
        0x105 -> :sswitch_1
    .end sparse-switch
.end method

.method private removeCommonMessage()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 67
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 70
    :cond_0
    return-void
.end method

.method private removeEnrollMessage()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 76
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    :cond_0
    return-void
.end method

.method private removeVerifyMessage()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    :cond_0
    return-void
.end method

.method private saveEnroll()I
    .locals 3

    .prologue
    .line 613
    const-string v1, "GoodixFingerPrintManager"

    const-string/jumbo v2, "saveEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :try_start_0
    iget-object v1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/android/fingerprint/IGoodixFingerPrintService;->saveFingerPrint(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 619
    :goto_0
    return v1

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 619
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private startAliayTimer(JI)V
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "userData"    # I

    .prologue
    .line 532
    const-string v0, "GoodixFingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "============>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mAlipayTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mAlipayTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mAlipayTimer:Ljava/util/Timer;

    .line 538
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mAlipayTimer:Ljava/util/Timer;

    .line 539
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mAlipayTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/fingerprint/GoodixFingerPrintManager$3;

    invoke-direct {v1, p0, p3}, Lcom/android/fingerprint/GoodixFingerPrintManager$3;-><init>(Lcom/android/fingerprint/GoodixFingerPrintManager;I)V

    move-wide v2, p1

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 554
    return-void
.end method


# virtual methods
.method public cancelEnrol()V
    .locals 3

    .prologue
    .line 432
    const-string v1, "GoodixFingerPrintManager"

    const-string v2, "cancleEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mIsSaveEnroll:Z

    .line 435
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mEnrollCallback:Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;

    .line 436
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mState:I

    .line 437
    iget-object v1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/android/fingerprint/IGoodixFingerPrintService;->cancelEnroll(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelIdentify()V
    .locals 5

    .prologue
    .line 557
    const-string v2, "GoodixFingerPrintManager"

    const-string v3, "cancleIdentify"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyCallback:Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;

    .line 560
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mState:I

    .line 561
    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

    iget-object v3, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Lcom/android/fingerprint/IGoodixFingerPrintService;->cancelVerify(Landroid/os/IBinder;)I

    move-result v1

    .line 562
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xcb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    .end local v1    # "ret":I
    :goto_0
    return-void

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteFingerData(I)I
    .locals 4
    .param p1, "fingerId"    # I

    .prologue
    .line 569
    const-string v2, "GoodixFingerPrintManager"

    const-string v3, "deleteFingerData"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v1, -0x1

    .line 572
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

    iget-object v3, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, p1}, Lcom/android/fingerprint/IGoodixFingerPrintService;->deleteFingerPrint(Landroid/os/IBinder;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 577
    :goto_0
    return v1

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIds()[I
    .locals 3

    .prologue
    .line 444
    const-string v1, "GoodixFingerPrintManager"

    const-string v2, "getIds"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/android/fingerprint/IGoodixFingerPrintService;->getFingPrintIdList(Landroid/os/IBinder;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 450
    :goto_0
    return-object v1

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 450
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNameById(I)Ljava/lang/String;
    .locals 2
    .param p1, "fingerId"    # I

    .prologue
    .line 829
    :try_start_0
    iget-object v1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

    invoke-interface {v1, p1}, Lcom/android/fingerprint/IGoodixFingerPrintService;->getNameById(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 833
    :goto_0
    return-object v1

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 833
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public runCheckerboardTest()I
    .locals 4

    .prologue
    .line 602
    const-string v1, "GoodixFingerPrintManager"

    const-string/jumbo v2, "runCheckerboardTest"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :try_start_0
    iget-object v1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mToken:Landroid/os/IBinder;

    const/16 v3, 0xb

    invoke-interface {v1, v2, v3}, Lcom/android/fingerprint/IGoodixFingerPrintService;->engTest(Landroid/os/IBinder;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 609
    :goto_0
    return v1

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 609
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public runSelfTest()I
    .locals 4

    .prologue
    .line 591
    const-string v1, "GoodixFingerPrintManager"

    const-string/jumbo v2, "runSelfTest"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :try_start_0
    iget-object v1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mToken:Landroid/os/IBinder;

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3}, Lcom/android/fingerprint/IGoodixFingerPrintService;->engTest(Landroid/os/IBinder;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 598
    :goto_0
    return v1

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 598
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setCaptureCallback(Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;)V
    .locals 4
    .param p1, "captureCallback"    # Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;

    .prologue
    .line 581
    const-string v1, "GoodixFingerPrintManager"

    const-string/jumbo v2, "setCaptureCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iput-object p1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mCaptureCallback:Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;

    .line 584
    :try_start_0
    iget-object v1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mServiceReceiver:Lcom/android/fingerprint/IGoodixFingerPrintServiceReceiver;

    invoke-interface {v1, v2, v3}, Lcom/android/fingerprint/IGoodixFingerPrintService;->registerReceiver(Landroid/os/IBinder;Lcom/android/fingerprint/IGoodixFingerPrintServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_0
    return-void

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setIdName(ILjava/lang/String;)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 840
    :try_start_0
    iget-object v1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

    invoke-interface {v1, p1, p2}, Lcom/android/fingerprint/IGoodixFingerPrintService;->setIdName(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startEnrol(Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;I)I
    .locals 6
    .param p1, "enrolCallback"    # Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;
    .param p2, "fingerId"    # I

    .prologue
    .line 409
    const-string v3, "GoodixFingerPrintManager"

    const-string/jumbo v4, "startEnroll"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v1, -0x1

    .line 411
    .local v1, "ret":I
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mIsSaveEnroll:Z

    .line 412
    if-nez p1, :cond_0

    .line 413
    const-string v3, "GoodixFingerPrintManager"

    const-string/jumbo v4, "startEnroll, but enrollCallback is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 428
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 417
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    iput-object p1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mEnrollCallback:Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;

    .line 419
    :try_start_0
    iget-object v3, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

    iget-object v4, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mServiceReceiver:Lcom/android/fingerprint/IGoodixFingerPrintServiceReceiver;

    invoke-interface {v3, v4, v5}, Lcom/android/fingerprint/IGoodixFingerPrintService;->registerReceiver(Landroid/os/IBinder;Lcom/android/fingerprint/IGoodixFingerPrintServiceReceiver;)V

    .line 420
    iget-object v3, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

    iget-object v4, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, v4}, Lcom/android/fingerprint/IGoodixFingerPrintService;->startEnroll(Landroid/os/IBinder;)I

    move-result v1

    .line 421
    if-nez v1, :cond_1

    .line 422
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mState:I

    .line 423
    iget-object v3, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move v2, v1

    .line 428
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 425
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public startIdentify(Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;[I)I
    .locals 6
    .param p1, "identifyCallback"    # Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;
    .param p2, "ids"    # [I

    .prologue
    .line 454
    const-string v3, "GoodixFingerPrintManager"

    const-string/jumbo v4, "startIdentify"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v1, -0x1

    .line 456
    .local v1, "ret":I
    if-nez p1, :cond_0

    .line 457
    const-string v3, "GoodixFingerPrintManager"

    const-string/jumbo v4, "startIdentify, but identifyCallback is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 473
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 461
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    iput-object p1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyCallback:Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;

    .line 463
    :try_start_0
    iget-object v3, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

    iget-object v4, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mServiceReceiver:Lcom/android/fingerprint/IGoodixFingerPrintServiceReceiver;

    invoke-interface {v3, v4, v5}, Lcom/android/fingerprint/IGoodixFingerPrintService;->registerReceiver(Landroid/os/IBinder;Lcom/android/fingerprint/IGoodixFingerPrintServiceReceiver;)V

    .line 464
    iget-object v3, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

    iget-object v4, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, v4, p2}, Lcom/android/fingerprint/IGoodixFingerPrintService;->startVerify(Landroid/os/IBinder;[I)I

    move-result v1

    .line 465
    if-nez v1, :cond_1

    .line 466
    iget-object v3, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 467
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move v2, v1

    .line 473
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 469
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public startIdentify2(Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;I[II)I
    .locals 5
    .param p1, "identifyListener"    # Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    .param p2, "timeout"    # I
    .param p3, "ids"    # [I
    .param p4, "userData"    # I

    .prologue
    .line 477
    const-string v2, "GoodixFingerPrintManager"

    const-string/jumbo v3, "startIdentify2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v2, "GoodixFingerPrintManager"

    const-string/jumbo v3, "startIdentify--add--Looper"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v1, -0x1

    .line 480
    .local v1, "ret":I
    if-nez p1, :cond_0

    .line 481
    const-string v2, "GoodixFingerPrintManager"

    const-string/jumbo v3, "startIdentify, but identifyCallback is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 484
    :cond_0
    const-string v2, "GoodixFingerPrintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startIdentify--add--userData= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string v2, "GoodixFingerPrintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startIdentify--add--timeout= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    sput p4, Lcom/android/fingerprint/GoodixFingerPrintManager;->mUserData:I

    .line 488
    iput-object p1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    .line 490
    :try_start_0
    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

    iget-object v3, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mServiceReceiver:Lcom/android/fingerprint/IGoodixFingerPrintServiceReceiver;

    invoke-interface {v2, v3, v4}, Lcom/android/fingerprint/IGoodixFingerPrintService;->registerReceiver(Landroid/os/IBinder;Lcom/android/fingerprint/IGoodixFingerPrintServiceReceiver;)V

    .line 491
    int-to-long v2, p2

    invoke-direct {p0, v2, v3, p4}, Lcom/android/fingerprint/GoodixFingerPrintManager;->startAliayTimer(JI)V

    .line 492
    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

    iget-object v3, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, p3}, Lcom/android/fingerprint/IGoodixFingerPrintService;->startVerify(Landroid/os/IBinder;[I)I

    move-result v1

    .line 493
    if-nez v1, :cond_1

    .line 494
    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 495
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :cond_1
    :goto_0
    return v1

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mAlipayTimer:Ljava/util/Timer;

    if-eqz v2, :cond_2

    .line 499
    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mAlipayTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 500
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mAlipayTimer:Ljava/util/Timer;

    .line 502
    :cond_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startVerifyWithTimeout(Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;[II)I
    .locals 6
    .param p1, "identifyCallback"    # Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;
    .param p2, "ids"    # [I
    .param p3, "timeout"    # I

    .prologue
    .line 508
    const-string v3, "GoodixFingerPrintManager"

    const-string/jumbo v4, "startIdentify"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v1, -0x1

    .line 510
    .local v1, "ret":I
    if-nez p1, :cond_0

    .line 511
    const-string v3, "GoodixFingerPrintManager"

    const-string/jumbo v4, "startIdentify, but identifyCallback is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 526
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 515
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    iput-object p1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyCallback:Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;

    .line 517
    :try_start_0
    iget-object v3, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

    iget-object v4, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mServiceReceiver:Lcom/android/fingerprint/IGoodixFingerPrintServiceReceiver;

    invoke-interface {v3, v4, v5}, Lcom/android/fingerprint/IGoodixFingerPrintService;->registerReceiver(Landroid/os/IBinder;Lcom/android/fingerprint/IGoodixFingerPrintServiceReceiver;)V

    .line 518
    iget-object v3, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

    iget-object v4, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, v4, p2, p3}, Lcom/android/fingerprint/IGoodixFingerPrintService;->startVerifyWithTimeout(Landroid/os/IBinder;[II)I

    move-result v1

    .line 519
    if-nez v1, :cond_1

    .line 521
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move v2, v1

    .line 526
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 523
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public updateTA(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .prologue
    .line 818
    :try_start_0
    iget-object v1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

    invoke-interface {v1, p1, p2}, Lcom/android/fingerprint/IGoodixFingerPrintService;->updateTA(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 822
    :goto_0
    return v1

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 822
    const/4 v1, 0x0

    goto :goto_0
.end method
