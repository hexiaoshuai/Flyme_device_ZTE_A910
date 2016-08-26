.class Lcom/mediatek/datashaping/DataShapingServiceImpl$2;
.super Landroid/database/ContentObserver;
.source "DataShapingServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/datashaping/DataShapingServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 447
    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$900(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "background_power_saving_enable"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 449
    .local v0, "dataShapingEnabled":Z
    :cond_0
    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingEnabled:Z
    invoke-static {v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$1200(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 450
    if-eqz v0, :cond_2

    .line 451
    const-string v2, "DataShapingService"

    const-string v3, "data shaping enabled, start handler thread!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "DataShapingService"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v2, v3}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$1302(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 453
    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$1300(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 454
    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    new-instance v3, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    iget-object v4, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    iget-object v5, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v5}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$1300(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;-><init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/os/Looper;)V

    # setter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;
    invoke-static {v2, v3}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$002(Lcom/mediatek/datashaping/DataShapingServiceImpl;Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    .line 455
    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;
    invoke-static {v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$000(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->sendEmptyMessage(I)Z

    .line 457
    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-virtual {v2, v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->setCurrentState(I)V

    .line 458
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-virtual {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->registerReceiver()V

    .line 470
    :goto_0
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # setter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingEnabled:Z
    invoke-static {v1, v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$1202(Lcom/mediatek/datashaping/DataShapingServiceImpl;Z)Z

    .line 472
    :cond_1
    return-void

    .line 460
    :cond_2
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$1400(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 461
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$900(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$1400(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 463
    :cond_3
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$1300(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/os/HandlerThread;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 464
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$1300(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 466
    :cond_4
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;
    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$100(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/datashaping/DataShapingUtils;->reset()V

    .line 467
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # invokes: Lcom/mediatek/datashaping/DataShapingServiceImpl;->reset()V
    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$1500(Lcom/mediatek/datashaping/DataShapingServiceImpl;)V

    .line 468
    const-string v1, "DataShapingService"

    const-string v2, "data shaping disabled, stop handler thread and reset!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
