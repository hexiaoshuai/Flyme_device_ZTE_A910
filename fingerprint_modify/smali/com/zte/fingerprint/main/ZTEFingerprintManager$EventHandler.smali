.class Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;
.super Landroid/os/Handler;
.source "ZTEFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/ZTEFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;


# direct methods
.method public constructor <init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    .line 375
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 376
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 380
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 538
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 382
    :pswitch_1
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mCaptureCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$2(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 383
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mCaptureCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$2(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;->onWaitingForInput()V

    goto :goto_0

    .line 386
    :pswitch_2
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mCaptureCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$2(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mCaptureCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$2(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;->onInput()V

    goto :goto_0

    .line 390
    :pswitch_3
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mCaptureCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$2(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 391
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mCaptureCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$2(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;->onCaptureCompleted()V

    goto :goto_0

    .line 394
    :pswitch_4
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mCaptureCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$2(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 395
    const-string v2, "FingerPrint"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onCaptureFailed msg.arg1="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_1
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mCaptureCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$2(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;->onCaptureFailed(I)V

    goto :goto_0

    .line 399
    :pswitch_5
    iget-object v4, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mIdentifyCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;
    invoke-static {v4}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$3(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 400
    iget-object v4, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mIdentifyCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;
    invoke-static {v4}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$3(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v2, :cond_2

    :goto_1
    invoke-interface {v4, v5, v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;->onIdentified(IZ)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 403
    :pswitch_6
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrolCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$4(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 404
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrolCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$4(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;->onEnrolled(I)V

    goto/16 :goto_0

    .line 416
    :pswitch_7
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrolCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$4(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 417
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 418
    .local v1, "tmpBundle":Landroid/os/Bundle;
    const-string v2, "lastTouch"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 419
    .local v0, "tmpArray":[I
    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$5()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "lastTouch"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 424
    .end local v0    # "tmpArray":[I
    .end local v1    # "tmpBundle":Landroid/os/Bundle;
    :pswitch_8
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrolCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$4(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 425
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 426
    .restart local v1    # "tmpBundle":Landroid/os/Bundle;
    const-string v2, "nextTouch"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 427
    .restart local v0    # "tmpArray":[I
    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$5()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "nextTouch"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 432
    .end local v0    # "tmpArray":[I
    .end local v1    # "tmpBundle":Landroid/os/Bundle;
    :pswitch_9
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrolCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$4(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 433
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 434
    .restart local v1    # "tmpBundle":Landroid/os/Bundle;
    const-string v2, "maskList"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 435
    .restart local v0    # "tmpArray":[I
    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$5()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "maskList"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 436
    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$5()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "maskNumber"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 441
    .end local v0    # "tmpArray":[I
    .end local v1    # "tmpBundle":Landroid/os/Bundle;
    :pswitch_a
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrolCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$4(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 442
    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$5()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "acceptance"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 443
    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$5()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "reject_reason"

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 447
    :pswitch_b
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrolCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$4(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 448
    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$5()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "stitched"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 452
    :pswitch_c
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrolCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$4(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 453
    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$5()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "immobile"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 457
    :pswitch_d
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrolCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$4(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 458
    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$5()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "next_direction"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 462
    :pswitch_e
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrolCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$4(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 463
    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$5()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "progress"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 464
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrolCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$4(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;->onProgress(I)V

    goto/16 :goto_0

    .line 468
    :pswitch_f
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mIdentifyCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$3(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mIdentifyCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$3(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;->onNoMatch()V

    goto/16 :goto_0

    .line 472
    :pswitch_10
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrolCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$4(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;

    move-result-object v2

    if-nez v2, :cond_0

    .line 524
    :pswitch_11
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mIdentifyCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$3(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 526
    const-string v2, "ZTEFingerprintManager"

    const-string v4, "MSG_VERIFY_FINGER_DOWN"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mIdentifyCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$3(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;

    move-result-object v2

    const/16 v4, 0x20

    invoke-interface {v2, v4, v3, v3}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;->onResult(III)V

    goto/16 :goto_0

    .line 531
    :pswitch_12
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mIdentifyCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$3(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 533
    const-string v2, "ZTEFingerprintManager"

    const-string v4, "MSG_VERIFY_FINGER_UP"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mIdentifyCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$3(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;

    move-result-object v2

    const/16 v4, 0x21

    invoke-interface {v2, v4, v3, v3}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;->onResult(III)V

    goto/16 :goto_0

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_b
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method
