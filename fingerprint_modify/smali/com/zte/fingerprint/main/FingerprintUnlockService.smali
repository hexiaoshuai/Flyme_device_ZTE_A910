.class public Lcom/zte/fingerprint/main/FingerprintUnlockService;
.super Landroid/app/Service;
.source "FingerprintUnlockService.java"

# interfaces
.implements Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;
.implements Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    }
.end annotation


# static fields
.field private static final PRI_APP_HEARTY_SERVICE_INDEX:I

.field private static final privilegeApp:[Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private UpLock:Ljava/lang/Object;

.field private callbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;",
            ">;"
        }
    .end annotation
.end field

.field private down:Z

.field private final log:Z

.field private mHandler:Landroid/os/Handler;

.field private mService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub;

.field private pm:Landroid/os/PowerManager;

.field private privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private screenOffCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

.field private vb:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 25
    const-string v2, "com.zte.heartyservice"

    aput-object v2, v0, v1

    .line 24
    sput-object v0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeApp:[Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->log:Z

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->mHandler:Landroid/os/Handler;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;

    .line 31
    sget-object v0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeApp:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    .line 32
    const-string v0, "FingerprintUnlockService"

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->down:Z

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->UpLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->mService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub;

    .line 19
    return-void
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeApp:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zte/fingerprint/main/FingerprintUnlockService;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->vb:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$11(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Z
    .locals 1

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->isFingerprintUnlockEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$12(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Z
    .locals 1

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->isFingerprintEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$13(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->screenOffCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    return-object v0
.end method

.method static synthetic access$14(Lcom/zte/fingerprint/main/FingerprintUnlockService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->startDoubleApp(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$15(Lcom/zte/fingerprint/main/FingerprintUnlockService;I)V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->startBoundApp(I)V

    return-void
.end method

.method static synthetic access$16(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->UpLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$17(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    .locals 1

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->getActiveCallback()Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18(Lcom/zte/fingerprint/main/FingerprintUnlockService;Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->down:Z

    return-void
.end method

.method static synthetic access$19(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->down:Z

    return v0
.end method

.method static synthetic access$2(Lcom/zte/fingerprint/main/FingerprintUnlockService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->logI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/zte/fingerprint/main/FingerprintUnlockService;)[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    return-object v0
.end method

.method static synthetic access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/zte/fingerprint/main/FingerprintUnlockService;I)Z
    .locals 1

    .prologue
    .line 556
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->isSystemUI(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/zte/fingerprint/main/FingerprintUnlockService;)V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->logCallBacks()V

    return-void
.end method

.method static synthetic access$8(Lcom/zte/fingerprint/main/FingerprintUnlockService;)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->checkStop()V

    return-void
.end method

.method static synthetic access$9(Lcom/zte/fingerprint/main/FingerprintUnlockService;J)V
    .locals 1

    .prologue
    .line 582
    invoke-direct {p0, p1, p2}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->wakeupLock(J)V

    return-void
.end method

.method private checkStop()V
    .locals 2

    .prologue
    .line 260
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->getPrivilegeCallbackCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 261
    const-string v1, "stop identify"

    invoke-direct {p0, v1}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->logI(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->getManager(Ljava/lang/String;Landroid/content/Context;)Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    move-result-object v0

    .line 263
    .local v0, "mgr":Lcom/zte/fingerprint/main/ZTEFingerprintManager;
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->abort()V

    .line 267
    .end local v0    # "mgr":Lcom/zte/fingerprint/main/ZTEFingerprintManager;
    :cond_0
    return-void
.end method

.method private getActiveCallback()Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    .locals 7

    .prologue
    .line 565
    const/4 v1, 0x0

    .line 566
    .local v1, "callback":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    monitor-enter v4

    .line 567
    :try_start_0
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    array-length v6, v5

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v6, :cond_1

    .line 566
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 575
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 576
    :try_start_1
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-object v1, v0

    .line 575
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 579
    :cond_0
    return-object v1

    .line 567
    :cond_1
    :try_start_2
    aget-object v2, v5, v3

    .line 568
    .local v2, "p":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    if-eqz v2, :cond_2

    .line 569
    move-object v1, v2

    .line 570
    goto :goto_1

    .line 567
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 566
    .end local v2    # "p":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 575
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private getPackageName(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrivilegeCallbackCount()I
    .locals 5

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "count":I
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 256
    return v0

    .line 251
    :cond_0
    aget-object v1, v3, v2

    .line 252
    .local v1, "p":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    if-eqz v1, :cond_1

    .line 253
    add-int/lit8 v0, v0, 0x1

    .line 251
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isFingerprintEnabled()Z
    .locals 3

    .prologue
    .line 416
    const-string v0, "true"

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.zte.fingerprints/enabled"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isFingerprintUnlockEnabled()Z
    .locals 3

    .prologue
    .line 553
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lock_for_screen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isSystemUI(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logCallBacks()V
    .locals 6

    .prologue
    .line 233
    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    monitor-enter v2

    .line 234
    :try_start_0
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v4, :cond_1

    .line 233
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 241
    :try_start_1
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 240
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 247
    return-void

    .line 234
    :cond_1
    :try_start_2
    aget-object v0, v3, v1

    .line 235
    .local v0, "p":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {v0}, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->logI(Ljava/lang/String;)V

    .line 234
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "p":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 241
    :cond_3
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    .line 242
    .restart local v0    # "p":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->logI(Ljava/lang/String;)V

    goto :goto_1

    .line 240
    .end local v0    # "p":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private logI(Ljava/lang/String;)V
    .locals 1
    .param p1, "what"    # Ljava/lang/String;

    .prologue
    .line 590
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_0
    return-void
.end method

.method private startBoundApp(I)V
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 420
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "idStr":Ljava/lang/String;
    const-string v5, "preference_finger_select_function"

    invoke-virtual {p0, v5, v8}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v5, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "fingerPrintDes":Ljava/lang/String;
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "result":[Ljava/lang/String;
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FingerPrint startBoundApp result[0]: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    if-eqz v3, :cond_0

    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 426
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 427
    .local v2, "intent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const/4 v6, 0x1

    aget-object v6, v3, v6

    const/4 v7, 0x2

    aget-object v7, v3, v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 428
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 429
    const/4 v5, 0x1

    aget-object v5, v3, v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v5, v6}, Lcom/zte/fingerprint/utils/CommonUtils;->isPrivacyComponent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 430
    const-string v5, "0"

    invoke-static {p0}, Lcom/zte/fingerprint/utils/CommonUtils;->getPrivacyStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 447
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 434
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v5, "com.zte.heartyservice.intent.action.ACTION_1_KEY_2_PRIVACY_SPACE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string v5, "from_finger_print"

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    :goto_1
    invoke-virtual {p0, v2}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 444
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 445
    .local v4, "t":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FingerPrint onIdentified Throwable:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const/high16 v5, 0x200000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private startDoubleApp(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 359
    const-string v5, "preference_finger_double_function"

    .line 360
    const/4 v6, 0x0

    .line 359
    invoke-virtual {p0, v5, v6}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 361
    .local v3, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "preference_finger_double_packagename"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, "packageName":Ljava/lang/String;
    const-string v5, "preference_finger_double_classname"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "className":Ljava/lang/String;
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "startDoubleApp packageName="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " className="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 365
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .local v1, "componentName":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 367
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 368
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0, v2}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->startActivity(Landroid/content/Intent;)V

    .line 373
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;

    const-string v6, "can not startDoubleApp"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private wakeupLock(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 583
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->pm:Landroid/os/PowerManager;

    const v2, 0x1000000a

    const-string v3, "TAG"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 584
    .local v0, "mWakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 585
    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 587
    :cond_0
    return-void
.end method


# virtual methods
.method public checkDoubleClick(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 376
    :try_start_0
    const-string v5, "content://com.zte.fingerprints/doubleclick"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 377
    .local v0, "checkedUrl":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 378
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, "isOpen":Ljava/lang/String;
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "==================>doubleclick="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-eqz v3, :cond_0

    const-string v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 381
    const/4 v4, 0x1

    .line 387
    .end local v0    # "checkedUrl":Landroid/net/Uri;
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "isOpen":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 385
    :catch_0
    move-exception v2

    .line 386
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "==================>doubleclick= fase"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->mService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub;

    return-object v0
.end method

.method public onCaptureCompleted()V
    .locals 0

    .prologue
    .line 687
    return-void
.end method

.method public onCaptureFailed(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 693
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 271
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 272
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;

    const-string v2, "onCreate!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->getManager(Ljava/lang/String;Landroid/content/Context;)Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    .line 274
    new-instance v1, Lcom/zte/fingerprint/main/FingerprintUnlockService$2;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/main/FingerprintUnlockService$2;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;)V

    iput-object v1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->screenOffCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 306
    new-instance v1, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;)V

    iput-object v1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->receiver:Landroid/content/BroadcastReceiver;

    .line 348
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v1, "android.intent.action.NAVI_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 353
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->vb:Landroid/os/Vibrator;

    .line 354
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->pm:Landroid/os/PowerManager;

    .line 356
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 396
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->releaseManager(Ljava/lang/String;)V

    .line 397
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 398
    return-void
.end method

.method public onIdentified(IZ)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "updated"    # Z

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->getActiveCallback()Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v0

    .line 452
    .local v0, "callback":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v3, "onIdentified pkg="

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    iget v3, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->uid:I

    invoke-direct {p0, v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->logI(Ljava/lang/String;)V

    .line 454
    move v2, p1

    .line 455
    .local v2, "fingerId":I
    if-eqz v0, :cond_1

    .line 456
    iget v3, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->uid:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v3, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->uid:I

    invoke-direct {p0, v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->isSystemUI(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 457
    :cond_0
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/zte/fingerprint/main/FingerprintUnlockService$4;

    invoke-direct {v4, p0, v2}, Lcom/zte/fingerprint/main/FingerprintUnlockService$4;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;I)V

    .line 464
    const-wide/16 v6, 0x64

    .line 457
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 467
    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    if-eqz v3, :cond_2

    .line 469
    :try_start_0
    iget-object v3, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    invoke-interface {v3, p1}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;->unlock(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :cond_2
    :goto_1
    return-void

    .line 452
    .end local v2    # "fingerId":I
    :cond_3
    const-string v3, "no callback"

    goto :goto_0

    .line 470
    .restart local v2    # "fingerId":I
    :catch_0
    move-exception v1

    .line 471
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onInput()V
    .locals 2

    .prologue
    .line 656
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/fingerprint/main/FingerprintUnlockService$6;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/main/FingerprintUnlockService$6;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 680
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 682
    return-void
.end method

.method public onNoMatch()V
    .locals 4

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->getActiveCallback()Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v0

    .line 481
    .local v0, "callback":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "onNoMatch pkg="

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->uid:I

    invoke-direct {p0, v2}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->logI(Ljava/lang/String;)V

    .line 482
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    if-eqz v2, :cond_0

    .line 484
    :try_start_0
    iget-object v2, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    invoke-interface {v2}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;->reportFailedAttempt()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :cond_0
    :goto_1
    return-void

    .line 481
    :cond_1
    const-string v2, "no callback"

    goto :goto_0

    .line 485
    :catch_0
    move-exception v1

    .line 486
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onResult(III)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i2"    # I
    .param p3, "i3"    # I

    .prologue
    .line 550
    return-void
.end method

.method public onStatus(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i2"    # I

    .prologue
    .line 494
    return-void
.end method

.method public onWaitingForInput()V
    .locals 2

    .prologue
    .line 631
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/fingerprint/main/FingerprintUnlockService$5;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/main/FingerprintUnlockService$5;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 650
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 652
    return-void
.end method

.method public openFingerprint()V
    .locals 4

    .prologue
    .line 401
    const-string v1, "start identify"

    invoke-direct {p0, v1}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->logI(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->getManager(Ljava/lang/String;Landroid/content/Context;)Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    move-result-object v0

    .line 403
    .local v0, "mgr":Lcom/zte/fingerprint/main/ZTEFingerprintManager;
    if-eqz v0, :cond_0

    .line 404
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, v1, v2

    invoke-virtual {v0, p0, v1, p0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->startIdentify(Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;[ILcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;)V

    .line 406
    :cond_0
    return-void
.end method
