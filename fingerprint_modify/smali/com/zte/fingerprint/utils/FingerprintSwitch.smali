.class public Lcom/zte/fingerprint/utils/FingerprintSwitch;
.super Lcom/zte/mifavor/widget/SwitchZTE;
.source "FingerprintSwitch.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/SwitchZTE;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintSwitch;->setResources()V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/SwitchZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintSwitch;->setResources()V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/SwitchZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintSwitch;->setResources()V

    .line 21
    return-void
.end method

.method private setResources()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/utils/FingerprintSwitch;->setShowText(Z)V

    .line 25
    return-void
.end method
