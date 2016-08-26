.class public Lcom/zte/fingerprint/main/SelectAppsActivity$InterestingConfigChanges;
.super Ljava/lang/Object;
.source "SelectAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/SelectAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterestingConfigChanges"
.end annotation


# instance fields
.field final mLastConfiguration:Landroid/content/res/Configuration;

.field mLastDensity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 168
    return-void
.end method


# virtual methods
.method applyNewConfig(Landroid/content/res/Resources;)Z
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 173
    iget-object v4, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 174
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 173
    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 175
    .local v0, "configChanges":I
    iget v4, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$InterestingConfigChanges;->mLastDensity:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v4, v5, :cond_2

    move v1, v3

    .line 176
    .local v1, "densityChanged":Z
    :goto_0
    if-nez v1, :cond_0

    .line 177
    and-int/lit16 v4, v0, 0x304

    if-eqz v4, :cond_1

    .line 179
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$InterestingConfigChanges;->mLastDensity:I

    move v2, v3

    .line 182
    :cond_1
    return v2

    .end local v1    # "densityChanged":Z
    :cond_2
    move v1, v2

    .line 175
    goto :goto_0
.end method
