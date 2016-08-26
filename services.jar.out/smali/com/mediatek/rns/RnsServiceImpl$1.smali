.class Lcom/mediatek/rns/RnsServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "RnsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rns/RnsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/rns/RnsServiceImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "action":Ljava/lang/String;
    const-string v19, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 178
    const-string v19, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkInfo;

    .line 180
    .local v9, "networkInfo":Landroid/net/NetworkInfo;
    monitor-enter p0

    .line 181
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v19

    if-nez v19, :cond_0

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2

    :cond_0
    const/16 v19, 0x1

    :goto_0
    move-object/from16 v0, v20

    move/from16 v1, v19

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z
    invoke-static {v0, v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$002(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 183
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    const-string v19, "RnsServiceImpl"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onReceive: NETWORK_STATE_CHANGED_ACTION connected = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z
    invoke-static/range {v21 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$000(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z
    invoke-static/range {v19 .. v19}, Lcom/mediatek/rns/RnsServiceImpl;->access$000(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    const/16 v20, -0x7f

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I
    invoke-static/range {v19 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$102(Lcom/mediatek/rns/RnsServiceImpl;I)I

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static/range {v19 .. v19}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v20

    const/16 v21, 0x64

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 297
    .end local v9    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    :goto_1
    return-void

    .line 181
    .restart local v9    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_2
    const/16 v19, 0x0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v19

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v19

    .line 190
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static/range {v19 .. v19}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v20

    const/16 v21, 0x2710

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 193
    .end local v9    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    const-string v20, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 194
    const-string v19, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 195
    .local v14, "stateExtra":Ljava/lang/String;
    const-string v19, "READY"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 196
    const-string v19, "slot"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 197
    .local v13, "slotId":I
    const/4 v15, 0x0

    .line 198
    .local v15, "subId":I
    invoke-static {v13}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v16

    .line 199
    .local v16, "subIds":[I
    if-eqz v16, :cond_5

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 200
    const/16 v19, 0x0

    aget v15, v16, v19

    .line 202
    :cond_5
    const-string v19, "RnsServiceImpl"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onReceive: SIM_STATE_CHANGED = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {v15}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v11

    .line 204
    .local v11, "phoneId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/mediatek/rns/RnsServiceImpl;->access$300(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "volte_vt_enabled"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 207
    .local v5, "imsSetting":I
    const-string v19, "RnsServiceImpl"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Main Capability: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v21, v0

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->getMainCapabilitySlotId()I
    invoke-static/range {v21 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$400(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mPhoneId:I
    invoke-static {v0, v11}, Lcom/mediatek/rns/RnsServiceImpl;->access$502(Lcom/mediatek/rns/RnsServiceImpl;I)I

    .line 209
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->getMainCapabilitySlotId()I
    invoke-static/range {v19 .. v19}, Lcom/mediatek/rns/RnsServiceImpl;->access$400(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v11, :cond_1

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v20

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I
    invoke-static/range {v19 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$602(Lcom/mediatek/rns/RnsServiceImpl;I)I

    .line 212
    const-string v19, "RnsServiceImpl"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "UpdateDefaultSubId: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I
    invoke-static/range {v21 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$600(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v8, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I
    invoke-static/range {v21 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$600(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v8, v0, v1, v2}, Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;-><init>(Lcom/mediatek/rns/RnsServiceImpl;II)V

    .line 215
    .local v8, "mPhoneStateListener":Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;
    invoke-static/range {v19 .. v19}, Lcom/mediatek/rns/RnsServiceImpl;->access$700(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/TelephonyManager;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 217
    new-instance v7, Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I
    invoke-static/range {v21 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$600(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v7, v0, v1, v2}, Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;-><init>(Lcom/mediatek/rns/RnsServiceImpl;II)V

    .line 219
    .local v7, "mPhoneSignalListner":Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;
    invoke-static/range {v19 .. v19}, Lcom/mediatek/rns/RnsServiceImpl;->access$700(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/TelephonyManager;

    move-result-object v19

    const/16 v20, 0x100

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 221
    new-instance v6, Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mSubId:I
    invoke-static/range {v21 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$600(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v6, v0, v1, v2}, Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;-><init>(Lcom/mediatek/rns/RnsServiceImpl;II)V

    .line 223
    .local v6, "mPhoneCallListner":Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;
    invoke-static/range {v19 .. v19}, Lcom/mediatek/rns/RnsServiceImpl;->access$700(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/TelephonyManager;

    move-result-object v19

    const/16 v20, 0x20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_1

    .line 227
    .end local v5    # "imsSetting":I
    .end local v6    # "mPhoneCallListner":Lcom/mediatek/rns/RnsServiceImpl$MPhoneCallListner;
    .end local v7    # "mPhoneSignalListner":Lcom/mediatek/rns/RnsServiceImpl$MPhoneSignalListner;
    .end local v8    # "mPhoneStateListener":Lcom/mediatek/rns/RnsServiceImpl$MPhoneStateListener;
    .end local v11    # "phoneId":I
    .end local v13    # "slotId":I
    .end local v14    # "stateExtra":Ljava/lang/String;
    .end local v15    # "subId":I
    .end local v16    # "subIds":[I
    :cond_6
    const-string v19, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 228
    monitor-enter p0

    .line 229
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    const-string v19, "wifi_state"

    const/16 v21, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    const/16 v19, 0x1

    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v19

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z
    invoke-static {v0, v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$802(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 232
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 233
    const-string v19, "RnsServiceImpl"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onReceive: WIFI_STATE_CHANGED_ACTION enable = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z
    invoke-static/range {v21 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$800(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static/range {v19 .. v19}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v20

    const/16 v21, 0x2710

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 229
    :cond_7
    const/16 v19, 0x0

    goto :goto_2

    .line 232
    :catchall_1
    move-exception v19

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v19

    .line 235
    :cond_8
    const-string v19, "android.net.wifi.RSSI_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 236
    const-string v19, "newRssi"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 237
    .local v12, "rssi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static/range {v19 .. v19}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v12, v2}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 238
    .end local v12    # "rssi":I
    :cond_9
    const-string v19, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 239
    const-string v19, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkInfo;

    .line 241
    .restart local v9    # "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v9, :cond_1

    .line 242
    const-string v19, "RnsServiceImpl"

    const-string v20, "onReceive: CONNECTIVITY_ACTION_IMMEDIATE"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    .line 244
    .local v10, "nwType":I
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v18

    .line 245
    .local v18, "typename":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v17

    .line 246
    .local v17, "subtypename":Ljava/lang/String;
    const-string v19, "RnsServiceImpl"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "nwType:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " typename = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " subtypename = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v19, "MOBILE_IMS"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v20

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z
    invoke-static/range {v19 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$902(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z
    invoke-static/range {v19 .. v19}, Lcom/mediatek/rns/RnsServiceImpl;->access$900(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleDefaultPdnRequest()V
    invoke-static/range {v19 .. v19}, Lcom/mediatek/rns/RnsServiceImpl;->access$1000(Lcom/mediatek/rns/RnsServiceImpl;)V

    .line 267
    :cond_a
    :goto_3
    const-string v19, "RnsServiceImpl"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isLteImsConnected = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z
    invoke-static/range {v21 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$900(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " isEpdgImsConnected = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z
    invoke-static/range {v21 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$1100(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 253
    :cond_b
    const-string v19, "Wi-Fi"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const-string v19, "IMS"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v20

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z
    invoke-static/range {v19 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$1102(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z
    invoke-static/range {v19 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$1202(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->needToSendAlertWarning()Z
    invoke-static/range {v19 .. v19}, Lcom/mediatek/rns/RnsServiceImpl;->access$1300(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 257
    const-string v19, "RnsServiceImpl"

    const-string v20, "send Rove Out Alert warning for connection update"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->sendRoveOutAlert()V
    invoke-static/range {v19 .. v19}, Lcom/mediatek/rns/RnsServiceImpl;->access$1400(Lcom/mediatek/rns/RnsServiceImpl;)V

    .line 260
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z
    invoke-static/range {v19 .. v19}, Lcom/mediatek/rns/RnsServiceImpl;->access$1100(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v19

    if-nez v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z
    invoke-static/range {v19 .. v19}, Lcom/mediatek/rns/RnsServiceImpl;->access$1500(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z
    invoke-static/range {v19 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$1502(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 262
    const-string v19, "RnsServiceImpl"

    const-string v20, "Epdg is disconnected & disable wifi"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;
    invoke-static/range {v19 .. v19}, Lcom/mediatek/rns/RnsServiceImpl;->access$1700(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/net/wifi/WifiManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mWifiDisableFlag:I
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$1600(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/WifiManager;->setWifiDisabledByEpdg(I)Z

    .line 265
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z
    invoke-static/range {v19 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$1202(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    goto/16 :goto_3

    .line 270
    .end local v9    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v10    # "nwType":I
    .end local v17    # "subtypename":Ljava/lang/String;
    .end local v18    # "typename":Ljava/lang/String;
    :cond_e
    const-string v19, "android.net.conn.CONNECTIVITY_ACTION_HANDOVER_END"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 274
    const-string v19, "RnsServiceImpl"

    const-string v20, "Reset RNS state for handover is end"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z
    invoke-static/range {v19 .. v19}, Lcom/mediatek/rns/RnsServiceImpl;->access$1800(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mState:I
    invoke-static/range {v19 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$1902(Lcom/mediatek/rns/RnsServiceImpl;I)I

    goto/16 :goto_1

    .line 278
    :cond_f
    const-string v19, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 279
    monitor-enter p0

    .line 280
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/mediatek/rns/RnsServiceImpl;->access$300(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "volte_vt_enabled"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z
    invoke-static/range {v19 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$2002(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 286
    :goto_4
    const-string v19, "RnsServiceImpl"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Boot Completed mIsImsOverLteEnabled = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z
    invoke-static/range {v21 .. v21}, Lcom/mediatek/rns/RnsServiceImpl;->access$2000(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 290
    :try_start_5
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v20

    const/16 v21, 0x3e9

    const/16 v22, 0x0

    new-instance v23, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v25, "RnsServiceImpl"

    const/16 v26, 0x1

    invoke-direct/range {v23 .. v26}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Ljava/lang/String;Z)V

    invoke-virtual/range {v19 .. v23}, Lcom/android/internal/telephony/dataconnection/DctController;->registerForDcSwitchStateChange(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 293
    :catch_0
    move-exception v4

    .line 294
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v19, "RnsServiceImpl"

    const-string v20, "DctController is not ready"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 284
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_10
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z
    invoke-static/range {v19 .. v20}, Lcom/mediatek/rns/RnsServiceImpl;->access$2002(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    goto :goto_4

    .line 288
    :catchall_2
    move-exception v19

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v19
.end method
