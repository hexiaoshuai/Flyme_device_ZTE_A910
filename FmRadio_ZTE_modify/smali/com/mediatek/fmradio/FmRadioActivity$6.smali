.class Lcom/mediatek/fmradio/FmRadioActivity$6;
.super Landroid/os/Handler;
.source "FmRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/fmradio/FmRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/FmRadioActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    .line 368
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 371
    const-string v20, "FmRx/Activity"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "mHandler.handleMessage: what = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 372
    const-string v22, ",hashcode:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/mediatek/fmradio/FmRadioActivity;->access$0(Lcom/mediatek/fmradio/FmRadioActivity;)Landroid/os/Handler;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->hashCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 371
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    sparse-switch v20, :sswitch_data_0

    .line 560
    const-string v20, "FmRx/Activity"

    const-string v21, "invalid message"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :goto_0
    const-string v20, "FmRx/Activity"

    const-string v21, "handleMessage"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_0
    :goto_1
    return-void

    .line 376
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshTimeText()V
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FmRadioActivity;->access$14(Lcom/mediatek/fmradio/FmRadioActivity;)V

    goto :goto_0

    .line 380
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshCountDownTimeText()V
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FmRadioActivity;->access$15(Lcom/mediatek/fmradio/FmRadioActivity;)V

    goto :goto_0

    .line 384
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 386
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v20, "key_is_power_up"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 387
    .local v11, "isPowerup":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v11}, Lcom/mediatek/fmradio/FmRadioActivity;->access$16(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    .line 388
    const-string v20, "FmRx/Activity"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "updateFMState: FMRadio is powerup = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->stopAnimation()V
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FmRadioActivity;->access$17(Lcom/mediatek/fmradio/FmRadioActivity;)V

    .line 390
    if-eqz v11, :cond_3

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$6(Lcom/mediatek/fmradio/FmRadioActivity;)Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/mediatek/fmradio/FmRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v21

    .line 391
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$18(Lcom/mediatek/fmradio/FmRadioActivity;I)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static/range {v21 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$8(Lcom/mediatek/fmradio/FmRadioActivity;)I

    move-result v21

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshStationUI(I)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$19(Lcom/mediatek/fmradio/FmRadioActivity;I)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static/range {v21 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$8(Lcom/mediatek/fmradio/FmRadioActivity;)I

    move-result v21

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshRulerUI(I)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$20(Lcom/mediatek/fmradio/FmRadioActivity;I)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static/range {v21 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$8(Lcom/mediatek/fmradio/FmRadioActivity;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z
    invoke-static/range {v22 .. v22}, Lcom/mediatek/fmradio/FmRadioActivity;->access$12(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    move-result v22

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V
    invoke-static/range {v20 .. v22}, Lcom/mediatek/fmradio/FmRadioActivity;->access$13(Lcom/mediatek/fmradio/FmRadioActivity;IZ)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    .line 398
    const-string v21, "FMRecord"

    const/16 v22, 0x0

    .line 397
    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/fmradio/FmRadioActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 400
    .local v17, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v20, "isFirstTime"

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 401
    .local v7, "isFirstTime":Z
    if-eqz v7, :cond_2

    .line 402
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 403
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v20, "isFirstTime"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 404
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$21(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshImageButton(Z)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$22(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$23(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mIsActivityForeground:Z
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FmRadioActivity;->access$24(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->showSearchDialog()V
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FmRadioActivity;->access$25(Lcom/mediatek/fmradio/FmRadioActivity;)V

    .line 413
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FmRadioActivity;->access$3(Lcom/mediatek/fmradio/FmRadioActivity;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/fmradio/FmRadioService;->startScanAsync()V

    goto/16 :goto_0

    .line 415
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshImageButton(Z)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$22(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$23(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    goto/16 :goto_0

    .line 419
    .end local v7    # "isFirstTime":Z
    .end local v17    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v21, v0

    const v22, 0x7f090086

    invoke-virtual/range {v21 .. v22}, Lcom/mediatek/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$2(Lcom/mediatek/fmradio/FmRadioActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 424
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v11    # "isPowerup":Z
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 426
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const-string v20, "key_is_switch_anntenna"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 427
    .local v14, "isSwitch":Z
    const-string v20, "FmRx/Activity"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "[FmRadioActivity.mHandler] swtich antenna: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 427
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    if-nez v14, :cond_5

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mIsActivityForeground:Z
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FmRadioActivity;->access$24(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->dismissNoAntennaDialog()Z
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FmRadioActivity;->access$26(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/fmradio/FmRadioActivity;->showNoAntennaDialog()V

    .line 438
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->stopAnimation()V
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FmRadioActivity;->access$17(Lcom/mediatek/fmradio/FmRadioActivity;)V

    goto/16 :goto_0

    .line 434
    :cond_4
    const-string v20, "FmRx/Activity"

    .line 435
    const-string v21, "need show no antenna dialog after onResume:"

    .line 434
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$27(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    goto :goto_2

    .line 440
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$27(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->dismissNoAntennaDialog()Z
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FmRadioActivity;->access$26(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    goto/16 :goto_0

    .line 446
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v14    # "isSwitch":Z
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 448
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const-string v20, "key_is_power_down"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 449
    .local v10, "isPowerdown":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v21, v0

    if-eqz v10, :cond_6

    const/16 v20, 0x0

    :goto_3
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$16(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshImageButton(Z)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$22(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$23(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    goto/16 :goto_0

    .line 449
    :cond_6
    const/16 v20, 0x1

    goto :goto_3

    .line 455
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v10    # "isPowerdown":Z
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 457
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const-string v20, "key_is_tune"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 459
    .local v18, "tuneFinish":Z
    const-string v20, "key_is_power_up"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 462
    .local v9, "isPowerUp":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mIsPlaying:Z
    invoke-static/range {v21 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$4(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mIsPlaying:Z
    invoke-static/range {v21 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$4(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    move-result v9

    .end local v9    # "isPowerUp":Z
    :cond_7
    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lcom/mediatek/fmradio/FmRadioActivity;->access$16(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->stopAnimation()V
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FmRadioActivity;->access$17(Lcom/mediatek/fmradio/FmRadioActivity;)V

    .line 466
    const-string v20, "key_tune_to_station"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    .line 467
    .local v6, "frequency":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    invoke-static {v6}, Lcom/mediatek/fmradio/FmRadioUtils;->computeStation(F)I

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$18(Lcom/mediatek/fmradio/FmRadioActivity;I)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static/range {v21 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$8(Lcom/mediatek/fmradio/FmRadioActivity;)I

    move-result v21

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshStationUI(I)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$19(Lcom/mediatek/fmradio/FmRadioActivity;I)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static/range {v21 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$8(Lcom/mediatek/fmradio/FmRadioActivity;)I

    move-result v21

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshRulerUI(I)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$20(Lcom/mediatek/fmradio/FmRadioActivity;I)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static/range {v21 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$8(Lcom/mediatek/fmradio/FmRadioActivity;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z
    invoke-static/range {v22 .. v22}, Lcom/mediatek/fmradio/FmRadioActivity;->access$12(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    move-result v22

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V
    invoke-static/range {v20 .. v22}, Lcom/mediatek/fmradio/FmRadioActivity;->access$13(Lcom/mediatek/fmradio/FmRadioActivity;IZ)V

    .line 474
    if-nez v18, :cond_8

    .line 475
    const-string v20, "FmRx/Activity"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "mHandler.tune: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mIsPlaying:Z
    invoke-static/range {v21 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$4(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    move-result v21

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshImageButton(Z)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$22(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mIsPlaying:Z
    invoke-static/range {v21 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$4(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    move-result v21

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$23(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    goto/16 :goto_1

    .line 480
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshImageButton(Z)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$22(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$23(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    goto/16 :goto_0

    .line 485
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v6    # "frequency":F
    .end local v18    # "tuneFinish":Z
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 487
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const-string v20, "key_is_scan"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 489
    .local v12, "isScan":Z
    const-string v20, "key_tune_to_station"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 491
    .local v19, "tuneToStation":I
    const-string v20, "key_station_num"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 492
    .local v16, "searchedNum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->stopAnimation()V
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FmRadioActivity;->access$17(Lcom/mediatek/fmradio/FmRadioActivity;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mIsPlaying:Z
    invoke-static/range {v21 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$4(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    move-result v21

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshImageButton(Z)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$22(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mIsPlaying:Z
    invoke-static/range {v21 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$4(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    move-result v21

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$23(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    .line 496
    if-nez v12, :cond_9

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->dismissSearchDialog()V
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FmRadioActivity;->access$28(Lcom/mediatek/fmradio/FmRadioActivity;)V

    .line 498
    const-string v20, "FmRx/Activity"

    .line 499
    const-string v21, "mHandler.scan canceled. not enter to channel list."

    .line 498
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 503
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$18(Lcom/mediatek/fmradio/FmRadioActivity;I)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static/range {v21 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$8(Lcom/mediatek/fmradio/FmRadioActivity;)I

    move-result v21

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshStationUI(I)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$19(Lcom/mediatek/fmradio/FmRadioActivity;I)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static/range {v21 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$8(Lcom/mediatek/fmradio/FmRadioActivity;)I

    move-result v21

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshRulerUI(I)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$20(Lcom/mediatek/fmradio/FmRadioActivity;I)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static/range {v21 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$8(Lcom/mediatek/fmradio/FmRadioActivity;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z
    invoke-static/range {v22 .. v22}, Lcom/mediatek/fmradio/FmRadioActivity;->access$12(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    move-result v22

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V
    invoke-static/range {v20 .. v22}, Lcom/mediatek/fmradio/FmRadioActivity;->access$13(Lcom/mediatek/fmradio/FmRadioActivity;IZ)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->dismissSearchDialog()V
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FmRadioActivity;->access$28(Lcom/mediatek/fmradio/FmRadioActivity;)V

    .line 511
    if-eqz v16, :cond_0

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->enterChannelList()V
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FmRadioActivity;->access$29(Lcom/mediatek/fmradio/FmRadioActivity;)V

    goto/16 :goto_0

    .line 523
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v12    # "isScan":Z
    .end local v16    # "searchedNum":I
    .end local v19    # "tuneToStation":I
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/fmradio/FmRadioActivity;->finish()V

    goto/16 :goto_0

    .line 527
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 529
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const-string v20, "key_is_recording_state"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 530
    .local v15, "recorderState":I
    const-string v20, "FmRx/Activity"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "FmRadioActivity.mHandler: recorderState = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 531
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 530
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->updateRecordingState(I)V
    invoke-static {v0, v15}, Lcom/mediatek/fmradio/FmRadioActivity;->access$30(Lcom/mediatek/fmradio/FmRadioActivity;I)V

    goto/16 :goto_0

    .line 536
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v15    # "recorderState":I
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 538
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const-string v20, "key_recording_error_type"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 539
    .local v5, "errorState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->updateRecorderError(I)V
    invoke-static {v0, v5}, Lcom/mediatek/fmradio/FmRadioActivity;->access$31(Lcom/mediatek/fmradio/FmRadioActivity;I)V

    goto/16 :goto_0

    .line 543
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v5    # "errorState":I
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 545
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const-string v20, "key_is_recording_mode"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 547
    .local v8, "isInRecordingMode":Z
    goto/16 :goto_0

    .line 550
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v8    # "isInRecordingMode":Z
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 552
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const-string v20, "key_is_speaker_mode"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 553
    .local v13, "isSpeakerMode":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mButtonSwitchToSpeaker:Landroid/widget/ImageButton;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FmRadioActivity;->access$32(Lcom/mediatek/fmradio/FmRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v21

    .line 554
    if-eqz v13, :cond_a

    const v20, 0x7f0201d7

    :goto_4
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioActivity$6;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshImageButton(Z)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FmRadioActivity;->access$22(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    goto/16 :goto_0

    .line 555
    :cond_a
    const v20, 0x7f0201d6

    goto :goto_4

    .line 374
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_4
        0xb -> :sswitch_7
        0xd -> :sswitch_6
        0xf -> :sswitch_5
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x100101 -> :sswitch_8
        0x100110 -> :sswitch_9
        0x100111 -> :sswitch_a
        0x101000 -> :sswitch_b
    .end sparse-switch
.end method
