.class Lcom/mediatek/datashaping/DataShapingServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "DataShapingServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/datashaping/DataShapingServiceImpl;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0xa

    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "action":Ljava/lang/String;
    const-string v1, "DataShapingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received broadcast, action is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v1, "android.intent.action.SCREEN_ON"

    if-ne v1, v0, :cond_1

    .line 114
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;
    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$000(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    if-ne v1, v0, :cond_2

    .line 117
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;
    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$000(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 119
    :cond_2
    const-string v1, "android.intent.action.PS_NETWORK_TYPE_CHANGED"

    if-ne v1, v0, :cond_3

    .line 120
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;
    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$100(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingUtils;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/mediatek/datashaping/DataShapingUtils;->setCurrentNetworkType(Landroid/content/Intent;)V

    .line 121
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;
    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$000(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 123
    :cond_3
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    if-ne v1, v0, :cond_4

    .line 124
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;
    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$000(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 126
    :cond_4
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    if-ne v1, v0, :cond_5

    .line 127
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;
    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$000(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 129
    :cond_5
    const-string v1, "android.hardware.usb.action.USB_STATE"

    if-ne v1, v0, :cond_6

    .line 130
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;
    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$000(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 132
    :cond_6
    const-string v1, "android.intent.action.LTE_ACCESS_STRATUM_STATE_CHANGED"

    if-ne v1, v0, :cond_7

    .line 133
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;
    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$000(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 135
    :cond_7
    const-string v1, "android.intent.action.SHARED_DEFAULT_APN_STATE_CHANGED"

    if-ne v1, v0, :cond_8

    .line 136
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;
    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$000(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2, p2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 138
    :cond_8
    const-string v1, "com.mediatek.datashaping.CLOSE_TIME_EXPIRED"

    if-ne v1, v0, :cond_9

    .line 139
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # invokes: Lcom/mediatek/datashaping/DataShapingServiceImpl;->getWakeLock()V
    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$200(Lcom/mediatek/datashaping/DataShapingServiceImpl;)V

    .line 140
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;
    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$000(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 141
    :cond_9
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    :cond_a
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;
    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$000(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2, p2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method
