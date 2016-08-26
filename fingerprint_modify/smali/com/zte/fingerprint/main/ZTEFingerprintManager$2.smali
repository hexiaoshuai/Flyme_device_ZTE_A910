.class Lcom/zte/fingerprint/main/ZTEFingerprintManager$2;
.super Ljava/lang/Object;
.source "ZTEFingerprintManager.java"

# interfaces
.implements Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;


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
    iput-object p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$2;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIdentified(I)V
    .locals 3
    .param p1, "fingerId"    # I

    .prologue
    .line 801
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$2;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;
    invoke-static {v0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$1(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 802
    return-void
.end method

.method public onNoMatch()V
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$2;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;
    invoke-static {v0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$1(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 806
    return-void
.end method
