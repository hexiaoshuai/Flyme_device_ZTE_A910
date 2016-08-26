.class Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "RnsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rns/RnsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/rns/RnsServiceImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/rns/RnsServiceImpl;II)V
    .locals 0
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 380
    iput-object p1, p0, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    .line 381
    invoke-direct {p0, p3}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    .line 382
    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 9
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v4, 0x1

    .line 386
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;->mSubId:I

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->getMainCapabilitySlotId()I
    invoke-static {v2}, Lcom/mediatek/rns/RnsServiceImpl;->access$400(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 388
    const-string v1, "RnsServiceImpl"

    const-string v2, "onServiceStateChanged Received on non-lte sim"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;
    invoke-static {v1, p1}, Lcom/mediatek/rns/RnsServiceImpl;->access$2102(Lcom/mediatek/rns/RnsServiceImpl;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 392
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;
    invoke-static {v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$2100(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/ServiceState;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;
    invoke-static {v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$2100(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 394
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    const/16 v2, -0x74

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I
    invoke-static {v1, v2}, Lcom/mediatek/rns/RnsServiceImpl;->access$2202(Lcom/mediatek/rns/RnsServiceImpl;I)I

    .line 405
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v2}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v2

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 395
    :cond_2
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;
    invoke-static {v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$2100(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/ServiceState;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;
    invoke-static {v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$2100(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_1

    .line 398
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v2}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v2

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    new-instance v5, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "RnsServiceImpl"

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DctController;->registerForDcSwitchStateChange(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "RnsServiceImpl"

    const-string v2, "DctController is not ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
