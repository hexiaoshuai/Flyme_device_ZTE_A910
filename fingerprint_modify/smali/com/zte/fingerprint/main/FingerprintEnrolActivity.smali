.class public Lcom/zte/fingerprint/main/FingerprintEnrolActivity;
.super Lcom/zte/fingerprint/main/AbstractActivity;
.source "FingerprintEnrolActivity.java"


# instance fields
.field private mFInFingerprintEnroll:Lcom/zte/fingerprint/enroll/FingerprintEnroll;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/zte/fingerprint/main/AbstractActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/zte/fingerprint/main/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    new-instance v0, Lcom/zte/fingerprint/enroll/GoodixEnroll;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;->mFInFingerprintEnroll:Lcom/zte/fingerprint/enroll/FingerprintEnroll;

    .line 14
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;->mFInFingerprintEnroll:Lcom/zte/fingerprint/enroll/FingerprintEnroll;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;->mFInFingerprintEnroll:Lcom/zte/fingerprint/enroll/FingerprintEnroll;

    invoke-virtual {v0, p1}, Lcom/zte/fingerprint/enroll/FingerprintEnroll;->onCreate(Landroid/os/Bundle;)V

    .line 19
    :goto_0
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;->mFInFingerprintEnroll:Lcom/zte/fingerprint/enroll/FingerprintEnroll;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;->mFInFingerprintEnroll:Lcom/zte/fingerprint/enroll/FingerprintEnroll;

    invoke-virtual {v0}, Lcom/zte/fingerprint/enroll/FingerprintEnroll;->onDestroy()V

    .line 34
    :cond_0
    invoke-super {p0}, Lcom/zte/fingerprint/main/AbstractActivity;->onDestroy()V

    .line 35
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;->mFInFingerprintEnroll:Lcom/zte/fingerprint/enroll/FingerprintEnroll;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;->mFInFingerprintEnroll:Lcom/zte/fingerprint/enroll/FingerprintEnroll;

    invoke-virtual {v0}, Lcom/zte/fingerprint/enroll/FingerprintEnroll;->onPause()V

    .line 26
    :cond_0
    invoke-super {p0}, Lcom/zte/fingerprint/main/AbstractActivity;->onPause()V

    .line 27
    return-void
.end method
