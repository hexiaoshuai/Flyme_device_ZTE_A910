.class Lcom/android/fingerprint/GoodixFingerPrintManager$3;
.super Ljava/util/TimerTask;
.source "GoodixFingerPrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fingerprint/GoodixFingerPrintManager;->startAliayTimer(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

.field private final synthetic val$userData:I


# direct methods
.method constructor <init>(Lcom/android/fingerprint/GoodixFingerPrintManager;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$3;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iput p2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$3;->val$userData:I

    .line 527
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 532
    const-string v0, "GoodixFingerPrintManager"

    const-string v1, "=======alipay timeout=====>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$3;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$3;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v1, v1, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    const/4 v3, -0x1

    iget v4, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$3;->val$userData:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 534
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$3;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mAlipayTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$0(Lcom/android/fingerprint/GoodixFingerPrintManager;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$3;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mAlipayTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$0(Lcom/android/fingerprint/GoodixFingerPrintManager;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 536
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$3;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$1(Lcom/android/fingerprint/GoodixFingerPrintManager;Ljava/util/Timer;)V

    .line 539
    :cond_0
    return-void
.end method
