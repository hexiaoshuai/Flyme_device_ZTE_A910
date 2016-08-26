.class public Lcom/zte/fingerprint/utils/NameUtils;
.super Ljava/lang/Object;
.source "NameUtils.java"


# instance fields
.field private final PREF_NAME:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "finger_id_name"

    iput-object v0, p0, Lcom/zte/fingerprint/utils/NameUtils;->PREF_NAME:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/zte/fingerprint/utils/NameUtils;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/fingerprint/utils/NameUtils;->mContext:Landroid/content/Context;

    const-string v1, "finger_id_name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getName(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/NameUtils;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/NameUtils;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 35
    return-void
.end method

.method public setName(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/NameUtils;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    return-void
.end method
