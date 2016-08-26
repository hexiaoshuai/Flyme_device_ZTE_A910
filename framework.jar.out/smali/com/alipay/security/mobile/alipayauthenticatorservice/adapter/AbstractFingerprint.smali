.class public abstract Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;
.super Ljava/lang/Object;
.source "AbstractFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;,
        Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    }
.end annotation


# static fields
.field public static CMD_RESULT_FAIL:I = 0x0

.field public static CMD_RESULT_OK:I = 0x0

.field public static final RESULT_CANCELED:I = 0x66

.field public static final RESULT_FAILURE:I = 0x65

.field public static final RESULT_NOT_ENABLED:I = 0x73

.field public static final RESULT_NOT_REGISTERED_FINGERPRINT:I = 0x70

.field public static final RESULT_NOT_SUPPORT:I = 0x6f

.field public static final RESULT_NO_MATCH:I = 0x67

.field public static final RESULT_SENSOR_ERROR:I = 0x74

.field public static final RESULT_SUCCESS:I = 0x64

.field public static final RESULT_TIMEOUT:I = 0x71

.field public static STATUS_INPUTTING:I

.field public static STATUS_INPUT_COMPLETED:I

.field public static STATUS_WAITING_FOR_INPUT:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->CMD_RESULT_OK:I

    .line 28
    const/4 v0, -0x1

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->CMD_RESULT_FAIL:I

    .line 33
    const/4 v0, 0x1

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->STATUS_WAITING_FOR_INPUT:I

    .line 34
    const/4 v0, 0x2

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->STATUS_INPUTTING:I

    .line 35
    const/4 v0, 0x3

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->STATUS_INPUT_COMPLETED:I

    .line 51
    const-class v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method public static getInterfaceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-string v0, "1.1"

    return-object v0
.end method

.method public static loadFingerprint()Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 112
    :try_start_0
    sget-object v5, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interface version is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->getInterfaceVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v5, "com.alipay.android.fingerprint.AlipayFingerprint"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 115
    .local v0, "FingerPrintClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "open"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 116
    .local v3, "open":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;

    .line 117
    .local v2, "fp":Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;
    if-nez v2, :cond_0

    .line 118
    sget-object v5, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "load fingerprint fail through open"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 143
    .end local v2    # "fp":Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;
    .end local v3    # "open":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v2

    .line 122
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v5, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoadFingerprint fail, not found class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 125
    goto :goto_0

    .line 126
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v5, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoadFingerprint fail, not found method "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 129
    goto :goto_0

    .line 130
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoadFingerprint fail, illegal argument "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 133
    goto :goto_0

    .line 134
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v5, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoadFingerprint fail, illegal access"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    move-object v2, v4

    .line 143
    goto :goto_0

    .line 137
    :catch_4
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v5, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoadFingerprint fail, invocation target"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static open()Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;

    invoke-direct {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;-><init>()V

    throw v0
.end method


# virtual methods
.method public abstract cancel()I
.end method

.method public abstract getFpIDs()[I
.end method

.method public abstract getFpName(I)Ljava/lang/String;
.end method

.method public invokeTACmd(Landroid/content/Context;[B)[B
    .locals 10
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "param"    # [B

    .prologue
    .line 223
    const/4 v4, 0x0

    .line 225
    .local v4, "result":[B
    :try_start_0
    sget-object v6, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "startCmd start"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v6, "android.os.ServiceManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 227
    .local v5, "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "getService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 228
    .local v2, "getService":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "goodix_fingerprint_service"

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 229
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/fingerprint/IGoodixFingerPrintService;

    move-result-object v3

    .line 230
    .local v3, "mCommunication":Lcom/android/fingerprint/IGoodixFingerPrintService;
    invoke-interface {v3, p2}, Lcom/android/fingerprint/IGoodixFingerPrintService;->startCmd([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 234
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "getService":Ljava/lang/reflect/Method;
    .end local v3    # "mCommunication":Lcom/android/fingerprint/IGoodixFingerPrintService;
    .end local v5    # "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v4

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startCmd java error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract release()I
.end method

.method public abstract startFpIdentify(Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;I[II)I
.end method

.method public abstract startFpManager(Landroid/content/Context;)I
.end method

.method public updateTA(Ljava/lang/String;)Z
    .locals 3
    .param p1, "taPath"    # Ljava/lang/String;

    .prologue
    .line 247
    :try_start_0
    invoke-static {}, Lcom/android/fingerprint/FingerprintDelegate;->getFingerprintDelegate()Lcom/android/fingerprint/FingerprintDelegate;

    move-result-object v1

    .line 248
    .local v1, "zteFingerprintManager":Lcom/android/fingerprint/FingerprintDelegate;
    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Lcom/android/fingerprint/FingerprintDelegate;->updateTA(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    const/4 v2, 0x1

    .end local v1    # "zteFingerprintManager":Lcom/android/fingerprint/FingerprintDelegate;
    :goto_0
    return v2

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method
