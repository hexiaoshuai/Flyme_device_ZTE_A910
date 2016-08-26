.class Lcom/mediatek/internal/telephony/ImsSwitchController$2;
.super Landroid/content/BroadcastReceiver;
.source "ImsSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ImsSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 334
    if-nez p2, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "action":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIntentReceiver Receive action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$100(Ljava/lang/String;)V

    .line 338
    const-string v4, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 339
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->confirmPreCheckDetachIfNeed()V
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$600(Lcom/mediatek/internal/telephony/ImsSwitchController;)V

    .line 340
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # setter for: Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z
    invoke-static {v4, v7}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$702(Lcom/mediatek/internal/telephony/ImsSwitchController;Z)Z

    goto :goto_0

    .line 341
    :cond_2
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 342
    const-string v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "state":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const-string v4, "phone"

    const/4 v6, -0x1

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v4, "phoneType"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-class v4, Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-static {v4, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/PhoneConstants$State;

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceivePhoneStateChange(IILcom/android/internal/telephony/PhoneConstants$State;)V
    invoke-static {v5, v6, v7, v4}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$800(Lcom/mediatek/internal/telephony/ImsSwitchController;IILcom/android/internal/telephony/PhoneConstants$State;)V

    goto :goto_0

    .line 347
    .end local v2    # "state":Ljava/lang/String;
    :cond_3
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 348
    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 350
    .local v3, "wifiState":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceiveWifiStateChange(I)V
    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$900(Lcom/mediatek/internal/telephony/ImsSwitchController;I)V

    goto :goto_0

    .line 351
    .end local v3    # "wifiState":I
    :cond_4
    const-string v4, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 352
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DctController;->getDcSwitchState(I)Ljava/lang/String;

    move-result-object v2

    .line 354
    .restart local v2    # "state":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # getter for: Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$000(Lcom/mediatek/internal/telephony/ImsSwitchController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "volte_vt_enabled"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 357
    .local v1, "imsSetting":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle ACTION_SET_RADIO_CAPABILITY_DONE: data state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " imsSetting:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$100(Ljava/lang/String;)V

    .line 360
    if-ne v1, v6, :cond_0

    const-string v4, "attaching"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "attached"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 362
    :cond_5
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v5

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V
    invoke-static {v4, v6, v5}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$200(Lcom/mediatek/internal/telephony/ImsSwitchController;ZI)V

    goto/16 :goto_0

    .line 365
    .end local v1    # "imsSetting":I
    .end local v2    # "state":Ljava/lang/String;
    :cond_6
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 366
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/ImsSwitchController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/ImsSwitchController;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
