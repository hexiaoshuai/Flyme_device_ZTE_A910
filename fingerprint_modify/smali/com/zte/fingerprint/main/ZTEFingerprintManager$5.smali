.class Lcom/zte/fingerprint/main/ZTEFingerprintManager$5;
.super Ljava/lang/Object;
.source "ZTEFingerprintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/main/ZTEFingerprintManager;->cancelFingerprint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$5;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 838
    const-string v0, "FingerPrint"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in post cancelFingerprint threadname = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$5;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mService:Lcom/android/fingerprint/FingerprintDelegate;
    invoke-static {v0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$6(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/android/fingerprint/FingerprintDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fingerprint/FingerprintDelegate;->cancelIdentify()V

    .line 840
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$5;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$7(Lcom/zte/fingerprint/main/ZTEFingerprintManager;Z)V

    .line 841
    return-void
.end method
