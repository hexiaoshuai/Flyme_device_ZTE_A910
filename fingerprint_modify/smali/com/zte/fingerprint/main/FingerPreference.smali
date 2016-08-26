.class public Lcom/zte/fingerprint/main/FingerPreference;
.super Lcom/zte/mifavor/preference/Preference;
.source "FingerPreference.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mIsHighlight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/zte/fingerprint/main/FingerPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/fingerprint/main/FingerPreference;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/zte/mifavor/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/fingerprint/main/FingerPreference;->mIsHighlight:Z

    .line 43
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 48
    iget-boolean v0, p0, Lcom/zte/fingerprint/main/FingerPreference;->mIsHighlight:Z

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "#2c000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected setHighlight(Z)V
    .locals 0
    .param p1, "isHighlight"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/zte/fingerprint/main/FingerPreference;->mIsHighlight:Z

    .line 57
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerPreference;->notifyChanged()V

    .line 58
    return-void
.end method
