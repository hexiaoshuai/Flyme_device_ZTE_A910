.class Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FmRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/fmradio/FmRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/FmRadioService;


# direct methods
.method private constructor <init>(Lcom/mediatek/fmradio/FmRadioService;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/fmradio/FmRadioService;Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;-><init>(Lcom/mediatek/fmradio/FmRadioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 283
    const-string v12, "FmRx/Service"

    const-string v13, ">>> FmRadioService.onReceive"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "action":Ljava/lang/String;
    const-string v12, "command"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "command":Ljava/lang/String;
    const-string v12, "FmRx/Service"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Action/Command: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v12, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 289
    const-string v12, "com.mediatek.app.mtv.POWER_ON"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 290
    const-string v12, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 291
    const-string v12, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_HEADSET_TIMEUP"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 292
    const-string v12, "com.android.music.musicservicecommand"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "pause"

    .line 293
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 295
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$12(Lcom/mediatek/fmradio/FmRadioService;)Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const-string v13, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->stopCountingDownAsync(Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const-string v13, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_HEADSET_TIMEUP"

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->stopCountingDownAsync(Ljava/lang/String;)V

    .line 299
    const-string v12, "FmRx/Service"

    const-string v13, "onReceive.SOUND_POWER_DOWN_MSG. exit FM"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->exitFm()V
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$7(Lcom/mediatek/fmradio/FmRadioService;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v12}, Lcom/mediatek/fmradio/FmRadioService;->stopSelf()V

    .line 303
    :cond_1
    const-string v12, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 305
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$12(Lcom/mediatek/fmradio/FmRadioService;)Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const-string v13, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->stopCountingDownAsync(Ljava/lang/String;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const-string v13, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_HEADSET_TIMEUP"

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->stopCountingDownAsync(Ljava/lang/String;)V

    .line 309
    const-string v12, "FmRx/Service"

    const-string v13, "onReceive.ACTION_AIRPLANE_MODE_CHANGED. exit FM"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v12}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 311
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const v14, 0x7f0900cc

    invoke-virtual {v13, v14}, Lcom/mediatek/fmradio/FmRadioService;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 312
    const/4 v14, 0x0

    .line 310
    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    .line 312
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 313
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->exitFm()V
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$7(Lcom/mediatek/fmradio/FmRadioService;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v12}, Lcom/mediatek/fmradio/FmRadioService;->stopSelf()V

    .line 480
    :cond_2
    :goto_0
    const-string v12, "FmRx/Service"

    const-string v13, "<<< FmRadioService.onReceive"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :goto_1
    return-void

    .line 316
    :cond_3
    const-string v12, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 321
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$12(Lcom/mediatek/fmradio/FmRadioService;)Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const-string v13, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->stopCountingDownAsync(Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const-string v13, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_HEADSET_TIMEUP"

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->stopCountingDownAsync(Ljava/lang/String;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->exitFm()V
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$7(Lcom/mediatek/fmradio/FmRadioService;)V

    goto :goto_0

    .line 326
    :cond_4
    const-string v12, "android.intent.action.SCREEN_ON"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 328
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->setRdsAsync(Z)V

    goto :goto_0

    .line 330
    :cond_5
    const-string v12, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 331
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->setRdsAsync(Z)V

    goto :goto_0

    .line 333
    :cond_6
    const-string v12, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 335
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const-string v12, "state"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_8

    const/4 v12, 0x0

    :goto_2
    invoke-static {v13, v12}, Lcom/mediatek/fmradio/FmRadioService;->access$13(Lcom/mediatek/fmradio/FmRadioService;I)V

    .line 337
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I
    invoke-static {v13}, Lcom/mediatek/fmradio/FmRadioService;->access$14(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->switchAntennaAsync(I)V

    .line 339
    # getter for: Lcom/mediatek/fmradio/FmRadioService;->SHORT_ANNTENNA_SUPPORT:Z
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioService;->access$15()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 340
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I
    invoke-static {v13}, Lcom/mediatek/fmradio/FmRadioService;->access$14(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v13

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->switchAntenna(I)I
    invoke-static {v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->access$16(Lcom/mediatek/fmradio/FmRadioService;I)I

    move-result v12

    if-nez v12, :cond_9

    const/4 v9, 0x1

    .line 342
    .local v9, "isSwitch":Z
    :goto_3
    const-string v12, "FmRx/Service"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "onReceive.switch anntenna:isWitch:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$14(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v12

    if-nez v12, :cond_a

    const/4 v10, 0x1

    .line 348
    .local v10, "plugInEarphone":Z
    :goto_4
    if-eqz v10, :cond_7

    .line 349
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->access$17(Lcom/mediatek/fmradio/FmRadioService;I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->access$18(Lcom/mediatek/fmradio/FmRadioService;Z)V

    .line 355
    :cond_7
    new-instance v3, Landroid/os/Bundle;

    const/4 v12, 0x2

    invoke-direct {v3, v12}, Landroid/os/Bundle;-><init>(I)V

    .line 356
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v12, "callback_flag"

    .line 357
    const v13, 0x101000

    .line 356
    invoke-virtual {v3, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 358
    const-string v13, "key_is_speaker_mode"

    .line 359
    if-eqz v10, :cond_b

    const/4 v12, 0x0

    .line 358
    :goto_5
    invoke-virtual {v3, v13, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 360
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v12, v3}, Lcom/mediatek/fmradio/FmRadioService;->access$19(Lcom/mediatek/fmradio/FmRadioService;Landroid/os/Bundle;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->powerUpAutoIfNeed()V
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$20(Lcom/mediatek/fmradio/FmRadioService;)V

    goto/16 :goto_0

    .line 336
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v9    # "isSwitch":Z
    .end local v10    # "plugInEarphone":Z
    :cond_8
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 341
    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    .line 345
    .restart local v9    # "isSwitch":Z
    :cond_a
    const/4 v10, 0x0

    goto :goto_4

    .line 359
    .restart local v3    # "bundle":Landroid/os/Bundle;
    .restart local v10    # "plugInEarphone":Z
    :cond_b
    const/4 v12, 0x1

    goto :goto_5

    .line 366
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v9    # "isSwitch":Z
    .end local v10    # "plugInEarphone":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsServiceInited:Z
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$21(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 367
    const-string v12, "FmRx/Service"

    .line 368
    const-string v13, "onReceive.switch anntenna:service is not init"

    .line 367
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->powerUpAutoIfNeed()V
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$20(Lcom/mediatek/fmradio/FmRadioService;)V

    goto/16 :goto_1

    .line 376
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$14(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v12

    if-nez v12, :cond_e

    .line 377
    const-string v12, "FmRx/Service"

    .line 378
    const-string v13, "onReceive.switch anntenna:need auto power up"

    .line 377
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const-string v13, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_HEADSET_TIMEUP"

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->stopCountingDownAsync(Ljava/lang/String;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    .line 384
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I
    invoke-static {v13}, Lcom/mediatek/fmradio/FmRadioService;->access$22(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v13

    invoke-static {v13}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v13

    .line 383
    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->powerUpAsync(F)V

    goto/16 :goto_0

    .line 385
    :cond_e
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I
    invoke-static {v13}, Lcom/mediatek/fmradio/FmRadioService;->access$14(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v13

    if-ne v12, v13, :cond_2

    .line 386
    const-string v12, "FmRx/Service"

    const-string v13, "plug out earphone, need to stop fm"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v13, 0x1

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I
    invoke-static {v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->access$6(Lcom/mediatek/fmradio/FmRadioService;Z)I

    .line 392
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$12(Lcom/mediatek/fmradio/FmRadioService;)Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    move-result-object v12

    .line 393
    const/16 v13, 0xd

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 394
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$12(Lcom/mediatek/fmradio/FmRadioService;)Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    move-result-object v12

    .line 395
    const/16 v13, 0x10

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 396
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$12(Lcom/mediatek/fmradio/FmRadioService;)Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    move-result-object v12

    .line 397
    const/16 v13, 0xf

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 398
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$12(Lcom/mediatek/fmradio/FmRadioService;)Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    move-result-object v12

    .line 399
    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 400
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$12(Lcom/mediatek/fmradio/FmRadioService;)Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    move-result-object v12

    .line 401
    const/16 v13, 0x9

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 402
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v13, -0x1

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->stopFmFocusLoss(I)V
    invoke-static {v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->access$9(Lcom/mediatek/fmradio/FmRadioService;I)V

    .line 406
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->setSpeakerPhoneOn(Z)V

    .line 410
    new-instance v3, Landroid/os/Bundle;

    const/4 v12, 0x2

    invoke-direct {v3, v12}, Landroid/os/Bundle;-><init>(I)V

    .line 411
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const-string v12, "callback_flag"

    .line 412
    const v13, 0x101000

    .line 411
    invoke-virtual {v3, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 413
    const-string v12, "key_is_speaker_mode"

    .line 414
    const/4 v13, 0x0

    .line 413
    invoke-virtual {v3, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 415
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v12, v3}, Lcom/mediatek/fmradio/FmRadioService;->access$19(Lcom/mediatek/fmradio/FmRadioService;Landroid/os/Bundle;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const-string v13, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_HEADSET_TIMEUP"

    .line 423
    const-wide/16 v14, 0x3c

    .line 422
    invoke-virtual {v12, v13, v14, v15}, Lcom/mediatek/fmradio/FmRadioService;->startCountingDownAsync(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 427
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_f
    const-string v12, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 428
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 430
    const-string v12, "android.bluetooth.profile.extra.STATE"

    const/4 v13, 0x0

    .line 429
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 431
    .local v5, "connectState":I
    const-string v12, "FmRx/Service"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "ACTION_CONNECTION_STATE_CHANGED: connectState="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", ispowerup="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z
    invoke-static {v14}, Lcom/mediatek/fmradio/FmRadioService;->access$3(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 431
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->handleBtConnectState(I)V
    invoke-static {v12, v5}, Lcom/mediatek/fmradio/FmRadioService;->access$23(Lcom/mediatek/fmradio/FmRadioService;I)V

    goto/16 :goto_0

    .line 434
    .end local v5    # "connectState":I
    :cond_10
    const-string v12, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STARTSCAN"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 435
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$3(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v12

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$24(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v12

    if-nez v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsScanning:Z
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$25(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v12

    if-nez v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$26(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 436
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v12}, Lcom/mediatek/fmradio/FmRadioService;->startScanAsync()V

    goto/16 :goto_0

    .line 438
    :cond_11
    new-instance v7, Landroid/os/Bundle;

    const/4 v12, 0x2

    invoke-direct {v7, v12}, Landroid/os/Bundle;-><init>(I)V

    .line 439
    .local v7, "favBundle":Landroid/os/Bundle;
    const-string v12, "key_station_num"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 440
    const-string v12, "key_is_scan"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 442
    # getter for: Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioService;->access$27()Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 443
    # getter for: Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioService;->access$27()Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    move-result-object v12

    invoke-interface {v12, v7}, Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;->onScanFinished(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 446
    .end local v7    # "favBundle":Landroid/os/Bundle;
    :cond_12
    const-string v12, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STOPSCAN"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 447
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v12}, Lcom/mediatek/fmradio/FmRadioService;->stopScan()Z

    goto/16 :goto_0

    .line 448
    :cond_13
    const-string v12, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_TUNESTATION"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 449
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$3(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$24(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v12

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsScanning:Z
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$25(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v12

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$26(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 450
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 451
    .local v6, "curStation":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-static {v6}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v13

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->tuneStationAsync(F)V

    goto/16 :goto_0

    .line 453
    .end local v6    # "curStation":I
    :cond_14
    const-string v12, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKPREV"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 454
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$3(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$24(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v12

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsScanning:Z
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$25(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v12

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$26(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 455
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    .line 456
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I
    invoke-static {v13}, Lcom/mediatek/fmradio/FmRadioService;->access$22(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v13

    invoke-static {v13}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v13

    const/4 v14, 0x0

    .line 455
    invoke-virtual {v12, v13, v14}, Lcom/mediatek/fmradio/FmRadioService;->seekStationAsync(FZ)V

    goto/16 :goto_0

    .line 457
    :cond_15
    const-string v12, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKNEXT"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 458
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$3(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$24(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v12

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsScanning:Z
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$25(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v12

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$26(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 459
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    .line 460
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I
    invoke-static {v13}, Lcom/mediatek/fmradio/FmRadioService;->access$22(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v13

    invoke-static {v13}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v13

    const/4 v14, 0x1

    .line 459
    invoke-virtual {v12, v13, v14}, Lcom/mediatek/fmradio/FmRadioService;->seekStationAsync(FZ)V

    goto/16 :goto_0

    .line 461
    :cond_16
    const-string v12, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SAVEFAVOR"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 462
    if-eqz v4, :cond_17

    const-string v12, ""

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 463
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I
    invoke-static {v13}, Lcom/mediatek/fmradio/FmRadioService;->access$22(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->updateFavoriteStation(I)V

    goto/16 :goto_0

    .line 465
    :cond_18
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 466
    .local v8, "favorStation":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v12, v8}, Lcom/mediatek/fmradio/FmRadioService;->updateFavoriteStation(I)V

    goto/16 :goto_0

    .line 468
    .end local v8    # "favorStation":I
    :cond_19
    const-string v12, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SHOWTOAST"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 469
    if-eqz v4, :cond_2

    const-string v12, ""

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 470
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v12}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 472
    const/4 v13, 0x0

    .line 470
    invoke-static {v12, v4, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    .line 472
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 474
    :cond_1a
    const-string v12, "com.mediatek.FMRadio.FmRadioWidget.update"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 475
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioWidget;->getInstance()Lcom/mediatek/fmradio/FmRadioWidget;

    move-result-object v11

    .line 476
    .local v11, "widget":Lcom/mediatek/fmradio/FmRadioWidget;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$22(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lcom/mediatek/fmradio/FmRadioWidget;->updateWidget(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 478
    .end local v11    # "widget":Lcom/mediatek/fmradio/FmRadioWidget;
    :cond_1b
    const-string v12, "FmRx/Service"

    const-string v13, "Error: undefined action."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
