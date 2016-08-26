.class public Lcom/mediatek/datashaping/DataShapingServiceImpl;
.super Lcom/mediatek/datashaping/IDataShapingManager$Stub;
.source "DataShapingServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;,
        Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;
    }
.end annotation


# static fields
.field public static final ALARM_MANAGER_OPEN_GATE_INTERVAL:J = 0x493e0L

.field private static final CLOSE_TIME_EXPIRED_ACTION:Ljava/lang/String; = "com.mediatek.datashaping.CLOSE_TIME_EXPIRED"

.field public static final DATA_SHAPING_STATE_CLOSE:I = 0x3

.field public static final DATA_SHAPING_STATE_OPEN:I = 0x2

.field public static final DATA_SHAPING_STATE_OPEN_LOCKED:I = 0x1

.field public static final GATE_CLOSE_EXPIRED_TIME:J = 0x493e0L

.field public static final GATE_CLOSE_SAFE_TIMER:I = 0x927c0

.field private static final MSG_ALARM_MANAGER_TRIGGER:I = 0xe

.field private static final MSG_BT_AP_STATE_CHANGED:I = 0x13

.field private static final MSG_CHECK_USER_PREFERENCE:I = 0x1

.field private static final MSG_CONNECTIVITY_CHANGED:I = 0x14

.field private static final MSG_GATE_CLOSE_TIMER_EXPIRED:I = 0x11

.field private static final MSG_HEADSETHOOK_CHANGED:I = 0x12

.field private static final MSG_INIT:I = 0x2

.field private static final MSG_LTE_AS_STATE_CHANGED:I = 0xf

.field private static final MSG_NETWORK_TYPE_CHANGED:I = 0xb

.field private static final MSG_SCREEN_STATE_CHANGED:I = 0xa

.field private static final MSG_SHARED_DEFAULT_APN_STATE_CHANGED:I = 0x10

.field private static final MSG_STOP:I = 0x3

.field private static final MSG_USB_STATE_CHANGED:I = 0xd

.field private static final MSG_WIFI_AP_STATE_CHANGED:I = 0xc

.field private static final WAKE_LOCK_TIMEOUT:I = 0x7530


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/mediatek/datashaping/DataShapingState;

.field private mDataShapingEnabled:Z

.field private mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

.field private mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

.field private mGateCloseState:Lcom/mediatek/datashaping/DataShapingState;

.field private mGateOpenLockedState:Lcom/mediatek/datashaping/DataShapingState;

.field private mGateOpenState:Lcom/mediatek/datashaping/DataShapingState;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInputFilter:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;

.field private mInputManagerService:Lcom/android/server/input/InputManagerService;

.field private mLastAlarmTriggerSuccessTime:J

.field private final mLock:Ljava/lang/Object;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mRegisterInput:Z

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mWakelock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManagerService:Landroid/view/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;-><init>()V

    .line 71
    const-string v0, "DataShapingService"

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->TAG:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mRegisterInput:Z

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mLock:Ljava/lang/Object;

    .line 445
    new-instance v0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;-><init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 99
    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    .line 102
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingUtils;->getInstance(Landroid/content/Context;)Lcom/mediatek/datashaping/DataShapingUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/datashaping/DataShapingServiceImpl;Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;
    .param p1, "x1"    # Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingUtils;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/datashaping/DataShapingServiceImpl;Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;
    .param p1, "x1"    # Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mInputFilter:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/datashaping/DataShapingServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingEnabled:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/mediatek/datashaping/DataShapingServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingEnabled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/datashaping/DataShapingServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/datashaping/DataShapingServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->getWakeLock()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/datashaping/DataShapingServiceImpl;Lcom/mediatek/datashaping/DataShapingState;)Lcom/mediatek/datashaping/DataShapingState;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;
    .param p1, "x1"    # Lcom/mediatek/datashaping/DataShapingState;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/datashaping/DataShapingServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mRegisterInput:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mGateOpenState:Lcom/mediatek/datashaping/DataShapingState;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/view/WindowManagerInternal;)Landroid/view/WindowManagerInternal;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;
    .param p1, "x1"    # Landroid/view/WindowManagerInternal;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWindowManagerService:Landroid/view/WindowManagerInternal;

    return-object p1
.end method

.method static synthetic access$802(Lcom/mediatek/datashaping/DataShapingServiceImpl;Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;
    .param p1, "x1"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getWakeLock()V
    .locals 4

    .prologue
    .line 425
    const-string v1, "DataShapingService"

    const-string v2, "[getWakeLock]"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-direct {p0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->releaseWakeLock()V

    .line 427
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWakelock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 430
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 433
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWakelock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 434
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 437
    const-string v0, "DataShapingService"

    const-string v1, "[releaseWakeLock]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    const-string v0, "DataShapingService"

    const-string v1, "really release WakeLock"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 443
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->setCurrentState(I)V

    .line 477
    invoke-direct {p0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->releaseWakeLock()V

    .line 478
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->cancelCloseExpiredAlarm()V

    .line 479
    return-void
.end method


# virtual methods
.method public cancelCloseExpiredAlarm()V
    .locals 3

    .prologue
    .line 322
    const-string v1, "DataShapingService"

    const-string v2, "[cancelCloseExpiredAlarm]"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 326
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 328
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    :cond_0
    return-void
.end method

.method public disableDataShaping()V
    .locals 2

    .prologue
    .line 287
    const-string v0, "DataShapingService"

    const-string v1, "disableDataShaping"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method public enableDataShaping()V
    .locals 2

    .prologue
    .line 282
    const-string v0, "DataShapingService"

    const-string v1, "enableDataShaping"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method

.method public openLteDataUpLinkGate(Z)Z
    .locals 6
    .param p1, "isForce"    # Z

    .prologue
    const/4 v1, 0x0

    .line 297
    iget-boolean v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingEnabled:Z

    if-nez v2, :cond_1

    .line 298
    const-string v2, "DataShapingService"

    const-string v3, "[openLteDataUpLinkGate] mDataShapingEnabled is false!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    :goto_0
    return v1

    .line 301
    :cond_1
    const-string v2, "persist.datashaping.alarmgroup"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "supportAlarmGroup":Ljava/lang/String;
    const-string v2, "DataShapingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persist.datashaping.alarmgroup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mLastAlarmTriggerSuccessTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    .line 306
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    if-eqz v1, :cond_3

    .line 307
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->sendEmptyMessage(I)Z

    .line 309
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mLastAlarmTriggerSuccessTime:J

    .line 310
    const-string v1, "DataShapingService"

    const-string v2, "Alarm manager openLteDataUpLinkGate: true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v1, 0x1

    goto :goto_0

    .line 313
    :cond_4
    const-string v2, "DataShapingService"

    const-string v3, "Alarm manager openLteDataUpLinkGate: false"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method registerListener()Z
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWindowManagerService:Landroid/view/WindowManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    if-nez v0, :cond_1

    .line 168
    :cond_0
    const-string v0, "DataShapingService"

    const-string v1, "registerListener get WindowManager fail !"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_0
    const-string v0, "DataShapingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener registerInput Before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mRegisterInput:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mRegisterInput:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->alreadyHasInputFilter()Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    const-string v0, "DataShapingService"

    const-string v2, "registerListener!!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWindowManagerService:Landroid/view/WindowManagerInternal;

    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mInputFilter:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;

    invoke-virtual {v0, v2}, Landroid/view/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mRegisterInput:Z

    .line 186
    :goto_1
    const-string v0, "DataShapingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener registerInput After: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mRegisterInput:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    iget-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mRegisterInput:Z

    goto :goto_0

    .line 180
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mRegisterInput:Z

    if-eqz v0, :cond_3

    .line 181
    const-string v0, "DataShapingService"

    const-string v2, "I have registered it"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 183
    :cond_3
    :try_start_2
    const-string v0, "DataShapingService"

    const-string v2, "Someone registered it !!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 106
    const-string v1, "DataShapingService"

    const-string v2, "registerReceiver start"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;-><init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;)V

    iput-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    .local v0, "eventsFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "android.intent.action.PS_NETWORK_TYPE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "android.intent.action.LTE_ACCESS_STRATUM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v1, "android.intent.action.SHARED_DEFAULT_APN_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v1, "com.mediatek.datashaping.CLOSE_TIME_EXPIRED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    const-string v1, "DataShapingService"

    const-string v2, "registerReceiver end"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method

.method public setCurrentState(I)V
    .locals 2
    .param p1, "stateType"    # I

    .prologue
    .line 260
    packed-switch p1, :pswitch_data_0

    .line 278
    :goto_0
    return-void

    .line 262
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mGateOpenLockedState:Lcom/mediatek/datashaping/DataShapingState;

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;

    .line 263
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->unregisterListener()V

    .line 264
    const-string v0, "DataShapingService"

    const-string v1, "[setCurrentState]: set to STATE_OPEN_LOCKED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mGateOpenState:Lcom/mediatek/datashaping/DataShapingState;

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;

    .line 268
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->unregisterListener()V

    .line 269
    const-string v0, "DataShapingService"

    const-string v1, "[setCurrentState]: set to STATE_OPEN"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mGateCloseState:Lcom/mediatek/datashaping/DataShapingState;

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;

    .line 273
    const-string v0, "DataShapingService"

    const-string v1, "[setCurrentState]: set to STATE_CLOSE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 247
    new-instance v0, Lcom/mediatek/datashaping/GateOpenState;

    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/datashaping/GateOpenState;-><init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mGateOpenState:Lcom/mediatek/datashaping/DataShapingState;

    .line 248
    new-instance v0, Lcom/mediatek/datashaping/GateOpenLockedState;

    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/datashaping/GateOpenLockedState;-><init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mGateOpenLockedState:Lcom/mediatek/datashaping/DataShapingState;

    .line 249
    new-instance v0, Lcom/mediatek/datashaping/GateCloseState;

    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/datashaping/GateCloseState;-><init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mGateCloseState:Lcom/mediatek/datashaping/DataShapingState;

    .line 250
    invoke-virtual {p0, v3}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->setCurrentState(I)V

    .line 252
    const-string v0, "DataShapingService"

    const-string v1, "start check user preference"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "background_power_saving_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 256
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 257
    return-void
.end method

.method public startCloseExpiredAlarm()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 331
    const-string v2, "DataShapingService"

    const-string v3, "[startCloseExpiredAlarm] cancel previous alarm"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->cancelCloseExpiredAlarm()V

    .line 333
    const-string v2, "DataShapingService"

    const-string v3, "[startCloseExpiredAlarm] start new alarm"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 336
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    .line 337
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.datashaping.CLOSE_TIME_EXPIRED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mPendingIntent:Landroid/app/PendingIntent;

    .line 340
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 343
    return-void
.end method

.method unregisterListener()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWindowManagerService:Landroid/view/WindowManagerInternal;

    if-nez v0, :cond_0

    .line 193
    const-string v0, "DataShapingService"

    const-string v1, "unregisterListener get WindowManager fail !"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mRegisterInput:Z

    if-eqz v0, :cond_1

    .line 198
    const-string v0, "DataShapingService"

    const-string v2, "unregisterListener registerInput is TRUE , Set myself to null!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWindowManagerService:Landroid/view/WindowManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mRegisterInput:Z

    .line 204
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 202
    :cond_1
    :try_start_1
    const-string v0, "DataShapingService"

    const-string v2, "unregisterListener registerInput is False , Not to set to null!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
