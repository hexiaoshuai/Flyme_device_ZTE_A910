.class Lcom/mediatek/fmradio/FmRadioService$SdcardListener;
.super Landroid/content/BroadcastReceiver;
.source "FmRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/fmradio/FmRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdcardListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/FmRadioService;


# direct methods
.method private constructor <init>(Lcom/mediatek/fmradio/FmRadioService;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioService$SdcardListener;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/fmradio/FmRadioService;Lcom/mediatek/fmradio/FmRadioService$SdcardListener;)V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService$SdcardListener;-><init>(Lcom/mediatek/fmradio/FmRadioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 572
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService$SdcardListener;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->updateSdcardStateMap(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/mediatek/fmradio/FmRadioService;->access$28(Lcom/mediatek/fmradio/FmRadioService;Landroid/content/Intent;)V

    .line 574
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService$SdcardListener;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    iget-object v2, v2, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-nez v2, :cond_1

    .line 575
    const-string v2, "FmRx/Service"

    const-string v3, "SD receiver: FMRecorder is not present!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 581
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 583
    :cond_2
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService$SdcardListener;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v2, p2}, Lcom/mediatek/fmradio/FmRadioService;->isRecordingCardUnmount(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 584
    const-string v2, "FmRx/Service"

    const-string v3, "MEDIA_EJECT"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService$SdcardListener;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    iget-object v2, v2, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v2}, Lcom/mediatek/fmradio/FmRecorder;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 586
    const-string v2, "FmRx/Service"

    const-string v3, "old state is recording"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService$SdcardListener;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/fmradio/FmRadioService;->onRecorderError(I)V

    .line 588
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService$SdcardListener;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    iget-object v2, v2, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v2}, Lcom/mediatek/fmradio/FmRecorder;->discardRecording()V

    goto :goto_0

    .line 590
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 591
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "callback_flag"

    .line 592
    const v3, 0x100101

    .line 591
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 593
    const-string v2, "key_is_recording_state"

    .line 594
    const/4 v3, 0x5

    .line 593
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 595
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService$SdcardListener;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v2, v1}, Lcom/mediatek/fmradio/FmRadioService;->access$19(Lcom/mediatek/fmradio/FmRadioService;Landroid/os/Bundle;)V

    goto :goto_0
.end method
