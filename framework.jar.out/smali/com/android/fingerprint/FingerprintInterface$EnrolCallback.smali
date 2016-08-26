.class public interface abstract Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;
.super Ljava/lang/Object;
.source "FingerprintInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fingerprint/FingerprintInterface;
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

.method public abstract onProgress(II)V
.end method
