.class Lcom/zte/fingerprint/main/ZTEFingerprintManager$4;
.super Ljava/lang/Object;
.source "ZTEFingerprintManager.java"

# interfaces
.implements Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;


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
    iput-object p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$4;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrolled(I)V
    .locals 3
    .param p1, "fingerId"    # I

    .prologue
    .line 930
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$4;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;
    invoke-static {v0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$1(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 931
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 932
    return-void
.end method

.method public onEnrollmentFailed()V
    .locals 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$4;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;
    invoke-static {v0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$1(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 936
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 937
    return-void
.end method

.method public onProgress(II)V
    .locals 3
    .param p1, "msg"    # I
    .param p2, "progress"    # I

    .prologue
    .line 922
    const-string v0, "FingerPrint"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " progress="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$4;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;
    invoke-static {v0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$1(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;

    move-result-object v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 924
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 926
    return-void
.end method
