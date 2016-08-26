.class public Lcom/alipay/android/fingerprint/AlipayFingerprint;
.super Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;
.source "AlipayFingerprint.java"


# static fields
.field private static inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

.field private static mgr:Lcom/android/fingerprint/FingerprintDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/android/fingerprint/FingerprintDelegate;

    .line 15
    sput-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;-><init>()V

    .line 19
    return-void
.end method

.method public static open()Lcom/alipay/android/fingerprint/AlipayFingerprint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;
        }
    .end annotation

    .prologue
    .line 24
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-direct {v1}, Lcom/alipay/android/fingerprint/AlipayFingerprint;-><init>()V

    sput-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    .line 28
    :cond_0
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/android/fingerprint/FingerprintDelegate;

    if-nez v1, :cond_1

    .line 32
    :try_start_0
    invoke-static {}, Lcom/android/fingerprint/FingerprintDelegate;->getFingerprintDelegate()Lcom/android/fingerprint/FingerprintDelegate;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/android/fingerprint/FingerprintDelegate;

    .line 34
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/android/fingerprint/FingerprintDelegate;

    if-nez v1, :cond_1

    .line 35
    new-instance v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;

    invoke-direct {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    new-instance v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;

    invoke-direct {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;-><init>()V

    throw v1

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    return-object v1
.end method


# virtual methods
.method public cancel()I
    .locals 2

    .prologue
    .line 70
    :try_start_0
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/android/fingerprint/FingerprintDelegate;

    if-eqz v1, :cond_0

    .line 72
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/android/fingerprint/FingerprintDelegate;

    invoke-virtual {v1}, Lcom/android/fingerprint/FingerprintDelegate;->cancelIdentify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getFpIDs()[I
    .locals 3

    .prologue
    .line 90
    :try_start_0
    sget-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/android/fingerprint/FingerprintDelegate;

    invoke-virtual {v2}, Lcom/android/fingerprint/FingerprintDelegate;->getIds()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 98
    :goto_0
    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFpName(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 107
    :try_start_0
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/android/fingerprint/FingerprintDelegate;

    invoke-virtual {v1, p1}, Lcom/android/fingerprint/FingerprintDelegate;->getIdName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 114
    :goto_0
    return-object v1

    .line 110
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public release()I
    .locals 2

    .prologue
    .line 51
    :try_start_0
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/android/fingerprint/FingerprintDelegate;

    if-eqz v1, :cond_0

    .line 54
    const/4 v1, 0x0

    sput-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/android/fingerprint/FingerprintDelegate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startFpIdentify(Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;I[II)I
    .locals 4
    .param p1, "identifyListener"    # Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    .param p2, "timeout"    # I
    .param p3, "ids"    # [I
    .param p4, "userData"    # I

    .prologue
    const/4 v1, -0x1

    .line 125
    array-length v2, p3

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 126
    const/16 v2, 0x70

    invoke-interface {p1, v2, v1, p4}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    .line 138
    :goto_0
    return v1

    .line 132
    :cond_0
    :try_start_0
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/android/fingerprint/FingerprintDelegate;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/fingerprint/FingerprintDelegate;->startIdentify(Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;I[II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public startFpManager(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$FingerPrintSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 148
    const-string v1, ":settings:show_fragment"

    const-string v2, "com.android.settings.FingerPrintSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 150
    sget v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->CMD_RESULT_OK:I

    return v1
.end method
