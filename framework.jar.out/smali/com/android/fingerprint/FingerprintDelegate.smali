.class public Lcom/android/fingerprint/FingerprintDelegate;
.super Ljava/lang/Object;
.source "FingerprintDelegate.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "goodix_fingerprint_service"

.field private static final TAG:Ljava/lang/String; = "FingerprintDelegate"

.field private static mFingerprintDelegate:Lcom/android/fingerprint/FingerprintDelegate;


# instance fields
.field private mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintDelegate:Lcom/android/fingerprint/FingerprintDelegate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-direct {p0}, Lcom/android/fingerprint/FingerprintDelegate;->initFingerprintInterface()Lcom/android/fingerprint/FingerprintInterface;

    .line 32
    return-void
.end method

.method static synthetic access$002(Lcom/android/fingerprint/FingerprintDelegate;Lcom/android/fingerprint/FingerprintInterface;)Lcom/android/fingerprint/FingerprintInterface;
    .locals 0
    .param p0, "x0"    # Lcom/android/fingerprint/FingerprintDelegate;
    .param p1, "x1"    # Lcom/android/fingerprint/FingerprintInterface;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    return-object p1
.end method

.method public static declared-synchronized getFingerprintDelegate()Lcom/android/fingerprint/FingerprintDelegate;
    .locals 3

    .prologue
    .line 89
    const-class v1, Lcom/android/fingerprint/FingerprintDelegate;

    monitor-enter v1

    :try_start_0
    const-string v0, "FingerprintDelegate"

    const-string v2, "FingerprintDelegate getFingerprintDelegate in"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintDelegate:Lcom/android/fingerprint/FingerprintDelegate;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/android/fingerprint/FingerprintDelegate;

    invoke-direct {v0}, Lcom/android/fingerprint/FingerprintDelegate;-><init>()V

    sput-object v0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintDelegate:Lcom/android/fingerprint/FingerprintDelegate;

    .line 94
    :cond_0
    sget-object v0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintDelegate:Lcom/android/fingerprint/FingerprintDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initFingerprintInterface()Lcom/android/fingerprint/FingerprintInterface;
    .locals 10

    .prologue
    .line 34
    const-string v6, "FingerprintDelegate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initFingerprintInterface mFingerprintInterface = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v6, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    if-nez v6, :cond_0

    .line 36
    const/4 v4, 0x0

    .line 37
    .local v4, "service":Landroid/os/IBinder;
    const/4 v5, 0x0

    .line 39
    .local v5, "serviceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v6, "android.os.ServiceManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 44
    :goto_0
    const/4 v3, 0x0

    .line 46
    .local v3, "getServiceMethod":Ljava/lang/reflect/Method;
    :try_start_1
    const-string v6, "getService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 52
    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_2
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "goodix_fingerprint_service"

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    .line 61
    :goto_2
    if-eqz v4, :cond_1

    .line 62
    const-string v6, "FingerprintDelegate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "goodix finger print service is exist, service:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {v4}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/fingerprint/IGoodixFingerPrintService;

    move-result-object v2

    .line 65
    .local v2, "fingerPrintService":Lcom/android/fingerprint/IGoodixFingerPrintService;
    const-string v6, "FingerprintDelegate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fingerPrintService = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :try_start_3
    new-instance v6, Lcom/android/fingerprint/FingerprintDelegate$1;

    invoke-direct {v6, p0}, Lcom/android/fingerprint/FingerprintDelegate$1;-><init>(Lcom/android/fingerprint/FingerprintDelegate;)V

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 78
    :goto_3
    new-instance v6, Lcom/android/fingerprint/GoodixFingerPrintManager;

    invoke-direct {v6, v2}, Lcom/android/fingerprint/GoodixFingerPrintManager;-><init>(Lcom/android/fingerprint/IGoodixFingerPrintService;)V

    iput-object v6, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    .line 84
    .end local v2    # "fingerPrintService":Lcom/android/fingerprint/IGoodixFingerPrintService;
    .end local v3    # "getServiceMethod":Ljava/lang/reflect/Method;
    .end local v4    # "service":Landroid/os/IBinder;
    .end local v5    # "serviceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_4
    iget-object v6, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    return-object v6

    .line 40
    .restart local v4    # "service":Landroid/os/IBinder;
    .restart local v5    # "serviceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "getServiceMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 53
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 55
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 57
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 75
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v2    # "fingerPrintService":Lcom/android/fingerprint/IGoodixFingerPrintService;
    :catch_5
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "FingerprintDelegate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "linkToDeath Exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 81
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fingerPrintService":Lcom/android/fingerprint/IGoodixFingerPrintService;
    :cond_1
    const-string v6, "FingerprintDelegate"

    const-string v7, "goodix finger print service is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method


# virtual methods
.method public cancelEnrol()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "FingerprintDelegate"

    const-string v1, "FingerprintDelegate cancelEnrol in"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0}, Lcom/android/fingerprint/FingerprintDelegate;->initFingerprintInterface()Lcom/android/fingerprint/FingerprintInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 110
    const-string v0, "FingerprintDelegate"

    const-string/jumbo v1, "mFingerprintInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    invoke-interface {v0}, Lcom/android/fingerprint/FingerprintInterface;->cancelEnrol()V

    goto :goto_0
.end method

.method public cancelIdentify()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "FingerprintDelegate"

    const-string v1, "FingerprintDelegate cancelIdentify in"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcom/android/fingerprint/FingerprintDelegate;->initFingerprintInterface()Lcom/android/fingerprint/FingerprintInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    const-string v0, "FingerprintDelegate"

    const-string/jumbo v1, "mFingerprintInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    invoke-interface {v0}, Lcom/android/fingerprint/FingerprintInterface;->cancelIdentify()V

    goto :goto_0
.end method

.method public deleteFingerData(I)I
    .locals 2
    .param p1, "fingerId"    # I

    .prologue
    .line 161
    const-string v0, "FingerprintDelegate"

    const-string v1, "FingerprintDelegate deleteFingerData in"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0}, Lcom/android/fingerprint/FingerprintDelegate;->initFingerprintInterface()Lcom/android/fingerprint/FingerprintInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    const-string v0, "FingerprintDelegate"

    const-string/jumbo v1, "mFingerprintInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, -0x1

    .line 167
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    invoke-interface {v0, p1}, Lcom/android/fingerprint/FingerprintInterface;->deleteFingerData(I)I

    move-result v0

    goto :goto_0
.end method

.method public getIdName(I)Ljava/lang/String;
    .locals 3
    .param p1, "fingerId"    # I

    .prologue
    .line 214
    const-string v1, "FingerprintDelegate"

    const-string v2, "FingerprintDelegate getIdName in"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :try_start_0
    invoke-direct {p0}, Lcom/android/fingerprint/FingerprintDelegate;->initFingerprintInterface()Lcom/android/fingerprint/FingerprintInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    invoke-interface {v1, p1}, Lcom/android/fingerprint/FingerprintInterface;->getNameById(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 222
    :goto_0
    return-object v1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIds()[I
    .locals 2

    .prologue
    .line 118
    const-string v0, "FingerprintDelegate"

    const-string v1, "FingerprintDelegate getIds in"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0}, Lcom/android/fingerprint/FingerprintDelegate;->initFingerprintInterface()Lcom/android/fingerprint/FingerprintInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 120
    const-string v0, "FingerprintDelegate"

    const-string/jumbo v1, "mFingerprintInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    invoke-interface {v0}, Lcom/android/fingerprint/FingerprintInterface;->getIds()[I

    move-result-object v0

    goto :goto_0
.end method

.method public runCheckerboardTest()I
    .locals 2

    .prologue
    .line 191
    const-string v0, "FingerprintDelegate"

    const-string v1, "FingerprintDelegate runCheckerboardTest in"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0}, Lcom/android/fingerprint/FingerprintDelegate;->initFingerprintInterface()Lcom/android/fingerprint/FingerprintInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 193
    const-string v0, "FingerprintDelegate"

    const-string/jumbo v1, "mFingerprintInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, -0x1

    .line 197
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    invoke-interface {v0}, Lcom/android/fingerprint/FingerprintInterface;->runCheckerboardTest()I

    move-result v0

    goto :goto_0
.end method

.method public runSelfTest()I
    .locals 2

    .prologue
    .line 181
    const-string v0, "FingerprintDelegate"

    const-string v1, "FingerprintDelegate runSelfTest in"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/android/fingerprint/FingerprintDelegate;->initFingerprintInterface()Lcom/android/fingerprint/FingerprintInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    const-string v0, "FingerprintDelegate"

    const-string/jumbo v1, "mFingerprintInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, -0x1

    .line 187
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    invoke-interface {v0}, Lcom/android/fingerprint/FingerprintInterface;->runSelfTest()I

    move-result v0

    goto :goto_0
.end method

.method public setCaptureCallback(Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;)V
    .locals 2
    .param p1, "captureCallback"    # Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;

    .prologue
    .line 171
    const-string v0, "FingerprintDelegate"

    const-string v1, "FingerprintDelegate setCaptureCallback in"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0}, Lcom/android/fingerprint/FingerprintDelegate;->initFingerprintInterface()Lcom/android/fingerprint/FingerprintInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 173
    const-string v0, "FingerprintDelegate"

    const-string/jumbo v1, "mFingerprintInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    invoke-interface {v0, p1}, Lcom/android/fingerprint/FingerprintInterface;->setCaptureCallback(Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;)V

    goto :goto_0
.end method

.method public setIdName(ILjava/lang/String;)Z
    .locals 3
    .param p1, "fingerId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 227
    const-string v1, "FingerprintDelegate"

    const-string v2, "FingerprintDelegate setIdName in"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :try_start_0
    invoke-direct {p0}, Lcom/android/fingerprint/FingerprintDelegate;->initFingerprintInterface()Lcom/android/fingerprint/FingerprintInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/fingerprint/FingerprintInterface;->setIdName(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startEnrol(Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;I)I
    .locals 2
    .param p1, "enrolCallback"    # Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;
    .param p2, "fingerId"    # I

    .prologue
    .line 98
    const-string v0, "FingerprintDelegate"

    const-string v1, "FingerprintDelegate startEnrol in"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0}, Lcom/android/fingerprint/FingerprintDelegate;->initFingerprintInterface()Lcom/android/fingerprint/FingerprintInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 100
    const-string v0, "FingerprintDelegate"

    const-string/jumbo v1, "mFingerprintInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, -0x1

    .line 104
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/fingerprint/FingerprintInterface;->startEnrol(Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;I)I

    move-result v0

    goto :goto_0
.end method

.method public startIdentify(Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;[I)I
    .locals 2
    .param p1, "identifyCallback"    # Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;
    .param p2, "ids"    # [I

    .prologue
    .line 128
    const-string v0, "FingerprintDelegate"

    const-string v1, "FingerprintDelegate startIdentify in"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0}, Lcom/android/fingerprint/FingerprintDelegate;->initFingerprintInterface()Lcom/android/fingerprint/FingerprintInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    const-string v0, "FingerprintDelegate"

    const-string/jumbo v1, "mFingerprintInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, -0x1

    .line 134
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/fingerprint/FingerprintInterface;->startIdentify(Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;[I)I

    move-result v0

    goto :goto_0
.end method

.method public startIdentify(Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;I[II)V
    .locals 3
    .param p1, "identifyListener"    # Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    .param p2, "timeout"    # I
    .param p3, "ids"    # [I
    .param p4, "userData"    # I

    .prologue
    .line 138
    const-string v1, "FingerprintDelegate"

    const-string v2, "FingerprintDelegate startIdentify 2 in"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    if-nez p1, :cond_0

    .line 140
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 142
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/fingerprint/FingerprintDelegate;->initFingerprintInterface()Lcom/android/fingerprint/FingerprintInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/fingerprint/FingerprintInterface;->startIdentify2(Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;I[II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_1
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateTA(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string v1, "FingerprintDelegate"

    const-string v2, "FingerprintDelegate updateTA in"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :try_start_0
    invoke-direct {p0}, Lcom/android/fingerprint/FingerprintDelegate;->initFingerprintInterface()Lcom/android/fingerprint/FingerprintInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/fingerprint/FingerprintInterface;->updateTA(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 210
    :goto_0
    return v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
