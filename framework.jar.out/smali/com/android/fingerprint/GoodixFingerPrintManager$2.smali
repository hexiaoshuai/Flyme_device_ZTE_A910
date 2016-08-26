.class Lcom/android/fingerprint/GoodixFingerPrintManager$2;
.super Lcom/android/fingerprint/IGoodixFingerPrintServiceReceiver$Stub;
.source "GoodixFingerPrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fingerprint/GoodixFingerPrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;


# direct methods
.method constructor <init>(Lcom/android/fingerprint/GoodixFingerPrintManager;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    invoke-direct {p0}, Lcom/android/fingerprint/IGoodixFingerPrintServiceReceiver$Stub;-><init>()V

    return-void
.end method

.method private processCommonEvent(III)V
    .locals 3
    .param p1, "msgType"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 265
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 266
    const-string v0, "GoodixFingerPrintManager"

    const-string/jumbo v1, "processCommonEvent mHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mState:I
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$600(Lcom/android/fingerprint/GoodixFingerPrintManager;)I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mState:I
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$600(Lcom/android/fingerprint/GoodixFingerPrintManager;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 271
    const-string v0, "GoodixFingerPrintManager"

    const-string/jumbo v1, "it is not in enroll & verify state, do not report these events"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 288
    const-string v0, "GoodixFingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processCommonEvent has not processed this event which type is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/fingerprint/GoodixFingerPrintManager$EventType;->getMsgInfo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :pswitch_0
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 281
    :pswitch_1
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mState:I
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$600(Lcom/android/fingerprint/GoodixFingerPrintManager;)I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mState:I
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$600(Lcom/android/fingerprint/GoodixFingerPrintManager;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processEnrollEvent(III)V
    .locals 3
    .param p1, "msgType"    # I
    .param p2, "percent"    # I
    .param p3, "index"    # I

    .prologue
    .line 295
    const-string v0, "GoodixFingerPrintManager"

    const-string/jumbo v1, "processEnrollEvent-----tianyu----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 297
    const-string v0, "GoodixFingerPrintManager"

    const-string/jumbo v1, "processEnrollEvent mHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_0
    :pswitch_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x96

    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # invokes: Lcom/android/fingerprint/GoodixFingerPrintManager;->convertEvent(I)I
    invoke-static {v2, p1}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$700(Lcom/android/fingerprint/GoodixFingerPrintManager;I)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 305
    const/16 v0, 0x64

    if-lt p2, v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mIsSaveEnroll:Z
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$800(Lcom/android/fingerprint/GoodixFingerPrintManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    const-string v0, "GoodixFingerPrintManager"

    const-string/jumbo v1, "it has been saved"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # setter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mFpId:I
    invoke-static {v0, p3}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$902(Lcom/android/fingerprint/GoodixFingerPrintManager;I)I

    .line 318
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    const/4 v1, 0x1

    # setter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mIsSaveEnroll:Z
    invoke-static {v0, v1}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$802(Lcom/android/fingerprint/GoodixFingerPrintManager;Z)Z

    .line 319
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mFpId:I
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$900(Lcom/android/fingerprint/GoodixFingerPrintManager;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x97

    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mFpId:I
    invoke-static {v2}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$900(Lcom/android/fingerprint/GoodixFingerPrintManager;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 327
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 348
    :pswitch_1
    const-string v0, "GoodixFingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processEnrollEvent has not processed this event which type is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/fingerprint/GoodixFingerPrintManager$EventType;->getMsgInfo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    :pswitch_2
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # invokes: Lcom/android/fingerprint/GoodixFingerPrintManager;->convertEvent(I)I
    invoke-static {v2, p1}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$700(Lcom/android/fingerprint/GoodixFingerPrintManager;I)I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processVerifyEvent(III)V
    .locals 4
    .param p1, "msgType"    # I
    .param p2, "index"    # I
    .param p3, "percent"    # I

    .prologue
    const/4 v3, 0x0

    .line 356
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 357
    const-string v0, "GoodixFingerPrintManager"

    const-string/jumbo v1, "processVerifyEvent mHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_0
    return-void

    .line 361
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 378
    const-string v0, "GoodixFingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processVerifyEvent has not processed this event which type is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/fingerprint/GoodixFingerPrintManager$EventType;->getMsgInfo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 363
    :pswitch_0
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 368
    :pswitch_1
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 373
    :pswitch_2
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # invokes: Lcom/android/fingerprint/GoodixFingerPrintManager;->convertEvent(I)I
    invoke-static {v2, p1}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$700(Lcom/android/fingerprint/GoodixFingerPrintManager;I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCommon(III)V
    .locals 3
    .param p1, "msgType"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 385
    const-string v0, "GoodixFingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mServiceReceiver.onCommon("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->processCommonEvent(III)V

    .line 387
    return-void
.end method

.method public onDelete(II)V
    .locals 2
    .param p1, "msgType"    # I
    .param p2, "index"    # I

    .prologue
    .line 390
    const-string v0, "GoodixFingerPrintManager"

    const-string/jumbo v1, "onDelete is not used, but it is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void
.end method

.method public onEnroll(III)V
    .locals 3
    .param p1, "msgType"    # I
    .param p2, "percent"    # I
    .param p3, "index"    # I

    .prologue
    .line 394
    const-string v0, "GoodixFingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mServiceReceiver.onEnroll("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->processEnrollEvent(III)V

    .line 396
    return-void
.end method

.method public onVerify(III)V
    .locals 3
    .param p1, "msgType"    # I
    .param p2, "percent"    # I
    .param p3, "index"    # I

    .prologue
    .line 399
    const-string v0, "GoodixFingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mServiceReceiver.onVerify("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-direct {p0, p1, p3, p2}, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->processVerifyEvent(III)V

    .line 401
    return-void
.end method
