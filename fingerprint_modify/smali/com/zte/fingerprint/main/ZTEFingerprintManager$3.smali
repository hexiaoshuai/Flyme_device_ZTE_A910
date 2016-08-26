.class Lcom/zte/fingerprint/main/ZTEFingerprintManager$3;
.super Ljava/lang/Object;
.source "ZTEFingerprintManager.java"

# interfaces
.implements Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/ZTEFingerprintManager;
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
    iput-object p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$3;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted()V
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$3;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;
    invoke-static {v0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$1(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 823
    return-void
.end method

.method public onCaptureFailed(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 827
    const-string v0, "FingerPrint"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCaptureFailed = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$3;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;
    invoke-static {v0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$1(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;

    move-result-object v0

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 829
    return-void
.end method

.method public onInput()V
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$3;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;
    invoke-static {v0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$1(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 818
    return-void
.end method

.method public onWaitingForInput()V
    .locals 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$3;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;
    invoke-static {v0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$1(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 813
    return-void
.end method
