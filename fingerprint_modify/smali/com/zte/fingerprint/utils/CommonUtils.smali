.class public Lcom/zte/fingerprint/utils/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "androidDisplay":Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 45
    return-object v0
.end method

.method public static getPrivacyStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-string v1, "content://com.zte.heartyservice.privacy.provider/auth_exist_lookup"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 32
    .local v0, "realUri":Landroid/net/Uri;
    const-string v1, "0"

    return-object v1
.end method

.method public static isPrivacyComponent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageStr"    # Ljava/lang/String;
    .param p1, "clsStr"    # Ljava/lang/String;

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public static removeBoundAppData(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const-string v0, "preference_finger_double_function"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    return-void
.end method

.method public static removeBoundAppData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fingerId"    # Ljava/lang/String;

    .prologue
    .line 21
    const-string v0, "preference_finger_select_function"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 22
    return-void
.end method
