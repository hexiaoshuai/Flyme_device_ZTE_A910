.class public Lcom/zte/fingerprint/main/FingerCountChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FingerCountChangeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 20
    const-string v0, "FingerCountChangeReceiver"

    .line 22
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->getManager(Ljava/lang/String;Landroid/content/Context;)Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    move-result-object v2

    .line 23
    .local v2, "mFingerprintManager":Lcom/zte/fingerprint/main/ZTEFingerprintManager;
    if-eqz v2, :cond_0

    .line 24
    const-string v4, "FingerPrint"

    const-string v5, "getIds"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->getIds()[I

    move-result-object v1

    .line 26
    .local v1, "mFingerIds":[I
    invoke-static {v0}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->releaseManager(Ljava/lang/String;)V

    .line 27
    const-string v4, "pref:finger_count"

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "key:finger_count"

    if-nez v1, :cond_1

    :goto_0
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 28
    new-instance p2, Landroid/content/Intent;

    .end local p2    # "intent":Landroid/content/Intent;
    const-string v3, "com.zte.fingerprints.SETTING_CHANGED"

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .restart local p2    # "intent":Landroid/content/Intent;
    const-string v3, "SETTING_CHANGED_ITEM"

    .line 30
    const-string v4, "lock_for_secret_zone"

    .line 29
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 33
    .end local v1    # "mFingerIds":[I
    :cond_0
    return-void

    .line 27
    .restart local v1    # "mFingerIds":[I
    :cond_1
    array-length v3, v1

    goto :goto_0
.end method
