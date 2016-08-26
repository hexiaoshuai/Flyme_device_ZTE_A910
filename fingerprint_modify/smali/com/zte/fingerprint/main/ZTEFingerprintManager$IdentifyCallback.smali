.class public interface abstract Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;
.super Ljava/lang/Object;
.source "ZTEFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/ZTEFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IdentifyCallback"
.end annotation


# virtual methods
.method public abstract onIdentified(IZ)V
.end method

.method public abstract onNoMatch()V
.end method

.method public abstract onResult(III)V
.end method

.method public abstract onStatus(II)V
.end method
