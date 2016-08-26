.class public interface abstract Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;
.super Ljava/lang/Object;
.source "ZTEFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/ZTEFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EnrolCallback"
.end annotation


# virtual methods
.method public abstract onEnrolled(I)V
.end method

.method public abstract onEnrollmentFailed()V
.end method

.method public abstract onProgress(I)V
.end method

.method public abstract onProgress(Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedData;)V
.end method
