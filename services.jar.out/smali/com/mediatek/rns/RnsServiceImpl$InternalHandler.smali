.class Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
.super Landroid/os/Handler;
.source "RnsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rns/RnsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/rns/RnsServiceImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/rns/RnsServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1304
    iput-object p1, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    .line 1305
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1306
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1310
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    iget v3, p1, Landroid/os/Message;->what:I

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I
    invoke-static {v2, v3}, Lcom/mediatek/rns/RnsServiceImpl;->access$2702(Lcom/mediatek/rns/RnsServiceImpl;I)I

    .line 1311
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1347
    const-string v2, "RnsServiceImpl"

    const-string v3, "Unknown message"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :goto_0
    :sswitch_0
    return-void

    .line 1313
    :sswitch_1
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleEventWifiRssiUpdate(I)V
    invoke-static {v2, v3}, Lcom/mediatek/rns/RnsServiceImpl;->access$2800(Lcom/mediatek/rns/RnsServiceImpl;I)V

    goto :goto_0

    .line 1318
    :sswitch_2
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleDefaultPdnRequest()V
    invoke-static {v2}, Lcom/mediatek/rns/RnsServiceImpl;->access$1000(Lcom/mediatek/rns/RnsServiceImpl;)V

    .line 1319
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleEventApplyWifiCallSettings()V
    invoke-static {v2}, Lcom/mediatek/rns/RnsServiceImpl;->access$2900(Lcom/mediatek/rns/RnsServiceImpl;)V

    goto :goto_0

    .line 1322
    :sswitch_3
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsServiceImpl;->handleEventWifiDisconnect()V

    goto :goto_0

    .line 1325
    :sswitch_4
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleDefaultPdnRequest()V
    invoke-static {v2}, Lcom/mediatek/rns/RnsServiceImpl;->access$1000(Lcom/mediatek/rns/RnsServiceImpl;)V

    .line 1326
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleEventRatConnectivityChange()V
    invoke-static {v2}, Lcom/mediatek/rns/RnsServiceImpl;->access$3000(Lcom/mediatek/rns/RnsServiceImpl;)V

    goto :goto_0

    .line 1329
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1330
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .line 1331
    .local v1, "param":Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->onReceiveDcSwitchStateChange(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    invoke-static {v2, v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$3100(Lcom/mediatek/rns/RnsServiceImpl;Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    goto :goto_0

    .line 1334
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "param":Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;
    :sswitch_6
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsServiceImpl;->handleEventWifiStateChangedAction()V

    goto :goto_0

    .line 1337
    :sswitch_7
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleDefaultPdnRequest()V
    invoke-static {v2}, Lcom/mediatek/rns/RnsServiceImpl;->access$1000(Lcom/mediatek/rns/RnsServiceImpl;)V

    .line 1338
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsServiceImpl;->handleEventImsOverLteSettings()V

    goto :goto_0

    .line 1341
    :sswitch_8
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleWifiDisabledExpired()V
    invoke-static {v2}, Lcom/mediatek/rns/RnsServiceImpl;->access$3200(Lcom/mediatek/rns/RnsServiceImpl;)V

    goto :goto_0

    .line 1344
    :sswitch_9
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleWifiDisableAction()V
    invoke-static {v2}, Lcom/mediatek/rns/RnsServiceImpl;->access$3300(Lcom/mediatek/rns/RnsServiceImpl;)V

    goto :goto_0

    .line 1311
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0xa -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_9
        0x66 -> :sswitch_8
        0x3e8 -> :sswitch_4
        0x3e9 -> :sswitch_5
        0x2710 -> :sswitch_6
        0x186a0 -> :sswitch_7
    .end sparse-switch
.end method
