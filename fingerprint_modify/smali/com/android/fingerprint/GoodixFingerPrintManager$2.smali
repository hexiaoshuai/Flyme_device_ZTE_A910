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
    .line 1
    iput-object p1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    .line 264
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

    .line 268
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 269
    const-string v0, "GoodixFingerPrintManager"

    const-string v1, "processCommonEvent mHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mState:I
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$7(Lcom/android/fingerprint/GoodixFingerPrintManager;)I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mState:I
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$7(Lcom/android/fingerprint/GoodixFingerPrintManager;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 274
    const-string v0, "GoodixFingerPrintManager"

    const-string v1, "it is not in enroll & verify state, do not report these events"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 291
    const-string v0, "GoodixFingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processCommonEvent has not processed this event which type is"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-static {p1}, Lcom/android/fingerprint/GoodixFingerPrintManager$EventType;->getMsgInfo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    :pswitch_0
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 284
    :pswitch_1
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mState:I
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$7(Lcom/android/fingerprint/GoodixFingerPrintManager;)I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mState:I
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$7(Lcom/android/fingerprint/GoodixFingerPrintManager;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 285
    :cond_3
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x10000001
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
    .line 299
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 300
    const-string v0, "GoodixFingerPrintManager"

    const-string v1, "processEnrollEvent mHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_0
    :pswitch_0
    return-void

    .line 305
    :cond_0
    const v0, 0x1000001a

    if-eq p1, v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x96

    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # invokes: Lcom/android/fingerprint/GoodixFingerPrintManager;->convertEvent(I)I
    invoke-static {v2, p1}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$8(Lcom/android/fingerprint/GoodixFingerPrintManager;I)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 310
    :cond_1
    const/16 v0, 0x64

    if-lt p2, v0, :cond_4

    const v0, 0x10000018

    if-ne p1, v0, :cond_4

    .line 317
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mIsSaveEnroll:Z
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$9(Lcom/android/fingerprint/GoodixFingerPrintManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    const-string v0, "GoodixFingerPrintManager"

    const-string v1, "it has been saved"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    invoke-static {v0, p3}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$10(Lcom/android/fingerprint/GoodixFingerPrintManager;I)V

    .line 323
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$11(Lcom/android/fingerprint/GoodixFingerPrintManager;Z)V

    .line 324
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mFpId:I
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$12(Lcom/android/fingerprint/GoodixFingerPrintManager;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x97

    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mFpId:I
    invoke-static {v2}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$12(Lcom/android/fingerprint/GoodixFingerPrintManager;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 327
    :cond_3
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 332
    :cond_4
    packed-switch p1, :pswitch_data_0

    .line 355
    :pswitch_1
    const-string v0, "GoodixFingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processEnrollEvent has not processed this event which type is"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-static {p1}, Lcom/android/fingerprint/GoodixFingerPrintManager$EventType;->getMsgInfo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 339
    :pswitch_2
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    .line 340
    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # invokes: Lcom/android/fingerprint/GoodixFingerPrintManager;->convertEvent(I)I
    invoke-static {v2, p1}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$8(Lcom/android/fingerprint/GoodixFingerPrintManager;I)I

    move-result v2

    .line 339
    invoke-virtual {v0, v1, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 350
    :pswitch_3
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # invokes: Lcom/android/fingerprint/GoodixFingerPrintManager;->convertEvent(I)I
    invoke-static {v2, p1}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$8(Lcom/android/fingerprint/GoodixFingerPrintManager;I)I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x10000011
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private processVerifyEvent(III)V
    .locals 4
    .param p1, "msgType"    # I
    .param p2, "index"    # I
    .param p3, "percent"    # I

    .prologue
    const/4 v3, 0x0

    .line 363
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 364
    const-string v0, "GoodixFingerPrintManager"

    const-string v1, "processVerifyEvent mHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_0
    return-void

    .line 368
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 388
    const-string v0, "GoodixFingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processVerifyEvent has not processed this event which type is"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-static {p1}, Lcom/android/fingerprint/GoodixFingerPrintManager$EventType;->getMsgInfo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 370
    :pswitch_0
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 373
    :pswitch_1
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 377
    :pswitch_2
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 383
    :pswitch_3
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    iget-object v0, v0, Lcom/android/fingerprint/GoodixFingerPrintManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    iget-object v2, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # invokes: Lcom/android/fingerprint/GoodixFingerPrintManager;->convertEvent(I)I
    invoke-static {v2, p1}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$8(Lcom/android/fingerprint/GoodixFingerPrintManager;I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x10000101
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCommon(III)V
    .locals 3
    .param p1, "msgType"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 395
    const-string v0, "GoodixFingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mServiceReceiver.onCommon("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 396
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->processCommonEvent(III)V

    .line 397
    return-void
.end method

.method public onDelete(II)V
    .locals 2
    .param p1, "msgType"    # I
    .param p2, "index"    # I

    .prologue
    .line 400
    const-string v0, "GoodixFingerPrintManager"

    const-string v1, "onDelete is not used, but it is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void
.end method

.method public onEnroll(III)V
    .locals 3
    .param p1, "msgType"    # I
    .param p2, "percent"    # I
    .param p3, "index"    # I

    .prologue
    .line 404
    const-string v0, "GoodixFingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mServiceReceiver.onEnroll("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 405
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->processEnrollEvent(III)V

    .line 406
    return-void
.end method

.method public onVerify(III)V
    .locals 3
    .param p1, "msgType"    # I
    .param p2, "percent"    # I
    .param p3, "index"    # I

    .prologue
    .line 409
    const-string v0, "GoodixFingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mServiceReceiver.onVerify("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 410
    invoke-direct {p0, p1, p3, p2}, Lcom/android/fingerprint/GoodixFingerPrintManager$2;->processVerifyEvent(III)V

    .line 411
    return-void
.end method
