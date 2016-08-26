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
    .locals 10

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v4, 0x0

    .line 32
    .local v4, "service":Landroid/os/IBinder;
    const/4 v5, 0x0

    .line 34
    .local v5, "serviceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v6, "android.os.ServiceManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 39
    :goto_0
    const/4 v3, 0x0

    .line 41
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

    .line 47
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

    .line 56
    :goto_2
    if-eqz v4, :cond_0

    .line 57
    const-string v6, "FingerprintDelegate"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "goodix finger print service is exist, service:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {v4}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/fingerprint/IGoodixFingerPrintService;

    move-result-object v2

    .line 60
    .local v2, "fingerPrintService":Lcom/android/fingerprint/IGoodixFingerPrintService;
    new-instance v6, Lcom/android/fingerprint/GoodixFingerPrintManager;

    .line 61
    invoke-direct {v6, v2}, Lcom/android/fingerprint/GoodixFingerPrintManager;-><init>(Lcom/android/fingerprint/IGoodixFingerPrintService;)V

    .line 60
    iput-object v6, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    .line 65
    .end local v2    # "fingerPrintService":Lcom/android/fingerprint/IGoodixFingerPrintService;
    :goto_3
    return-void

    .line 35
    .end local v3    # "getServiceMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 42
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "getServiceMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 48
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 50
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 52
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 63
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    const-string v6, "FingerprintDelegate"

    const-string v7, "goodix finger print service is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static declared-synchronized getFingerprintDelegate()Lcom/android/fingerprint/FingerprintDelegate;
    .locals 3

    .prologue
    .line 68
    const-class v1, Lcom/android/fingerprint/FingerprintDelegate;

    monitor-enter v1

    :try_start_0
    const-string v0, "FingerprintDelegate"

    const-string v2, "FingerprintDelegate getFingerprintDelegate in"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-object v0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintDelegate:Lcom/android/fingerprint/FingerprintDelegate;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/fingerprint/FingerprintDelegate;

    invoke-direct {v0}, Lcom/android/fingerprint/FingerprintDelegate;-><init>()V

    sput-object v0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintDelegate:Lcom/android/fingerprint/FingerprintDelegate;

    .line 73
    :cond_0
    sget-object v0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintDelegate:Lcom/android/fingerprint/FingerprintDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public cancelEnrol()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "FingerprintDelegate"

    const-string v1, "FingerprintDelegate cancelEnrol in"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    if-nez v0, :cond_0

    .line 89
    const-string v0, "FingerprintDelegate"

    const-string v1, "mFingerprintInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    invoke-interface {v0}, Lcom/android/fingerprint/FingerprintInterface;->cancelEnrol()V

    goto :goto_0
.end method

.method public cancelIdentify()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "FingerprintDelegate"

    const-string v1, "FingerprintDelegate cancelIdentify in"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    if-nez v0, :cond_0

    .line 131
    const-string v0, "FingerprintDelegate"

    const-string v1, "mFingerprintInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    invoke-interface {v0}, Lcom/android/fingerprint/FingerprintInterface;->cancelIdentify()V

    goto :goto_0
.end method

.method public deleteFingerData(I)I
    .locals 2
    .param p1, "fingerId"    # I

    .prologue
    .line 139
    const-string v0, "FingerprintDelegate"

    const-string v1, "FingerprintDelegate deleteFingerData in"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    if-nez v0, :cond_0

    .line 141
    const-string v0, "FingerprintDelegate"

    const-string v1, "mFingerprintInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, -0x1

    .line 145
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
    .line 190
    const-string v1, "FingerprintDelegate"

    const-string v2, "FingerprintDelegate getIdName in"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    invoke-interface {v1, p1}, Lcom/android/fingerprint/FingerprintInterface;->getNameById(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 196
    :goto_0
    return-object v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIds()[I
    .locals 2

    .prologue
    .line 97
    const-string v0, "FingerprintDelegate"

    const-string v1, "FingerprintDelegate getIds in"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    if-nez v0, :cond_0

    .line 99
    const-string v0, "FingerprintDelegate"

    const-string v1, "mFingerprintInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x0

    .line 103
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
    .line 169
    const-string v0, "FingerprintDelegate"

    const-string v1, "FingerprintDelegate runCheckerboardTest in"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    if-nez v0, :cond_0

    .line 171
    const-string v0, "FingerprintDelegate"

    const-string v1, "mFingerprintInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, -0x1

    .line 175
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
    .line 159
    const-string v0, "FingerprintDelegate"

    const-string v1, "FingerprintDelegate runSelfTest in"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    if-nez v0, :cond_0

    .line 161
    const-string v0, "FingerprintDelegate"

    const-string v1, "mFingerprintInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, -0x1

    .line 165
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
    .line 149
    const-string v0, "FingerprintDelegate"

    const-string v1, "FingerprintDelegate setCaptureCallback in"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    if-nez v0, :cond_0

    .line 151
    const-string v0, "FingerprintDelegate"

    const-string v1, "mFingerprintInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void

    .line 155
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
    .line 201
    const-string v1, "FingerprintDelegate"

    const-string v2, "FingerprintDelegate setIdName in"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/fingerprint/FingerprintInterface;->setIdName(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startEnrol(Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;I)I
    .locals 2
    .param p1, "enrolCallback"    # Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;
    .param p2, "fingerId"    # I

    .prologue
    .line 77
    const-string v0, "FingerprintDelegate"

    const-string v1, "FingerprintDelegate startEnrol in"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    if-nez v0, :cond_0

    .line 79
    const-string v0, "FingerprintDelegate"

    const-string v1, "mFingerprintInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, -0x1

    .line 83
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
    .line 107
    const-string v0, "FingerprintDelegate"

    const-string v1, "FingerprintDelegate startIdentify in"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    if-nez v0, :cond_0

    .line 109
    const-string v0, "FingerprintDelegate"

    const-string v1, "mFingerprintInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, -0x1

    .line 113
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
    .line 117
    const-string v1, "FingerprintDelegate"

    const-string v2, "FingerprintDelegate startIdentify 2 in"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-nez p1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 121
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/fingerprint/FingerprintInterface;->startIdentify2(Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;I[II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateTA(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string v1, "FingerprintDelegate"

    const-string v2, "FingerprintDelegate updateTA in"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/fingerprint/FingerprintInterface;->updateTA(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 186
    :goto_0
    return v1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    const/4 v1, 0x0

    goto :goto_0
.end method
