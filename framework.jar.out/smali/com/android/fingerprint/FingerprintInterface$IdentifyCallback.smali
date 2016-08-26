.class public interface abstract Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;
.super Ljava/lang/Object;
.source "FingerprintInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fingerprint/FingerprintInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IdentifyCallback"
.end annotation


# virtual methods
.method public abstract onIdentified(I)V
.end method

.method public abstract onNoMatch()V
.end method
