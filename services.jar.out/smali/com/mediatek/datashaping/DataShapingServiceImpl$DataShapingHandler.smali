.class Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;
.super Landroid/os/Handler;
.source "DataShapingServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/datashaping/DataShapingServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataShapingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    .line 348
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 349
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 353
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 421
    :goto_0
    :pswitch_0
    return-void

    .line 357
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 363
    :pswitch_2
    const-string v0, "DataShapingService"

    const-string v1, "[handleMessage] msg_init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    const-class v0, Landroid/view/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerInternal;

    # setter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWindowManagerService:Landroid/view/WindowManagerInternal;
    invoke-static {v1, v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$702(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/view/WindowManagerInternal;)Landroid/view/WindowManagerInternal;

    .line 365
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$900(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/content/Context;

    const-string v0, "input"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;
    invoke-static {v1, v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$802(Lcom/mediatek/datashaping/DataShapingServiceImpl;Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService;

    .line 367
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    new-instance v1, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;

    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    iget-object v3, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$900(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;-><init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/content/Context;)V

    # setter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mInputFilter:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;
    invoke-static {v0, v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$1002(Lcom/mediatek/datashaping/DataShapingServiceImpl;Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;

    goto :goto_0

    .line 374
    :pswitch_3
    const-string v0, "DataShapingService"

    const-string v1, "[handleMessage] msg_screen_state_changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;
    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$300(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mediatek/datashaping/DataShapingState;->onScreenStateChanged(Z)V

    goto :goto_0

    .line 378
    :pswitch_4
    const-string v0, "DataShapingService"

    const-string v1, "[handleMessage] msg_network_type_changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;
    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$300(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/mediatek/datashaping/DataShapingState;->onNetworkTypeChanged(Landroid/content/Intent;)V

    goto :goto_0

    .line 382
    :pswitch_5
    const-string v0, "DataShapingService"

    const-string v1, "[handleMessage] msg_wifi_ap_state_changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;
    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$300(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/mediatek/datashaping/DataShapingState;->onWifiTetherStateChanged(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 386
    :pswitch_6
    const-string v0, "DataShapingService"

    const-string v1, "[handleMessage] msg_usb_state_changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;
    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$300(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/mediatek/datashaping/DataShapingState;->onUsbConnectionChanged(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 390
    :pswitch_7
    const-string v0, "DataShapingService"

    const-string v1, "[handleMessage] msg_alarm_manager_trigger"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;
    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$300(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/datashaping/DataShapingState;->onAlarmManagerTrigger()V

    goto/16 :goto_0

    .line 394
    :pswitch_8
    const-string v0, "DataShapingService"

    const-string v1, "[handleMessage] msg_lte_as_state_changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;
    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$300(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/mediatek/datashaping/DataShapingState;->onLteAccessStratumStateChanged(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 398
    :pswitch_9
    const-string v0, "DataShapingService"

    const-string v1, "[handleMessage] msg_shared_default_apn_state_changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;
    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$300(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/mediatek/datashaping/DataShapingState;->onSharedDefaultApnStateChanged(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 402
    :pswitch_a
    const-string v0, "DataShapingService"

    const-string v1, "[handleMessage] msg_gate_close_timer_expired"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;
    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$300(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/datashaping/DataShapingState;->onCloseTimeExpired()V

    .line 404
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # invokes: Lcom/mediatek/datashaping/DataShapingServiceImpl;->releaseWakeLock()V
    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$1100(Lcom/mediatek/datashaping/DataShapingServiceImpl;)V

    goto/16 :goto_0

    .line 407
    :pswitch_b
    const-string v0, "DataShapingService"

    const-string v1, "[handleMessage] msg_connectivity_changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;
    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$100(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteAsReport()V

    goto/16 :goto_0

    .line 411
    :pswitch_c
    const-string v0, "DataShapingService"

    const-string v1, "[handleMessage] msg_headsethook_changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;
    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$300(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/datashaping/DataShapingState;->onMediaButtonTrigger()V

    goto/16 :goto_0

    .line 415
    :pswitch_d
    const-string v0, "DataShapingService"

    const-string v1, "[handleMessage] msg_bt_ap_state_changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;
    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$300(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/mediatek/datashaping/DataShapingState;->onBTStateChanged(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method
