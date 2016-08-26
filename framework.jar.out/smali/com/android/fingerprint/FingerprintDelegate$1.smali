.class Lcom/android/fingerprint/FingerprintDelegate$1;
.super Ljava/lang/Object;
.source "FingerprintDelegate.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fingerprint/FingerprintDelegate;->initFingerprintInterface()Lcom/android/fingerprint/FingerprintInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fingerprint/FingerprintDelegate;


# direct methods
.method constructor <init>(Lcom/android/fingerprint/FingerprintDelegate;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/fingerprint/FingerprintDelegate$1;->this$0:Lcom/android/fingerprint/FingerprintDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 70
    const-string v0, "FingerprintDelegate"

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/android/fingerprint/FingerprintDelegate$1;->this$0:Lcom/android/fingerprint/FingerprintDelegate;

    const/4 v1, 0x0

    # setter for: Lcom/android/fingerprint/FingerprintDelegate;->mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;
    invoke-static {v0, v1}, Lcom/android/fingerprint/FingerprintDelegate;->access$002(Lcom/android/fingerprint/FingerprintDelegate;Lcom/android/fingerprint/FingerprintInterface;)Lcom/android/fingerprint/FingerprintInterface;

    .line 72
    return-void
.end method
