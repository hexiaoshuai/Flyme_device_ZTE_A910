.class Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;
.super Landroid/os/Handler;
.source "ImsUtStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsUtStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleMessage(): event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", requestId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 594
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown Event: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 130
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 131
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 133
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_1

    .line 134
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    move-object v7, v10

    check-cast v7, [I

    .line 135
    .local v7, "result":[I
    const/4 v10, 0x1

    new-array v6, v10, [Lcom/android/ims/ImsSsInfo;

    .line 136
    .local v6, "info":[Lcom/android/ims/ImsSsInfo;
    const/4 v10, 0x0

    new-instance v11, Lcom/android/ims/ImsSsInfo;

    invoke-direct {v11}, Lcom/android/ims/ImsSsInfo;-><init>()V

    aput-object v11, v6, v10

    .line 137
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const/4 v11, 0x0

    aget v11, v7, v11

    iput v11, v10, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 140
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMS_UT_EVENT_GET_CB: status = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v7, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12, v6}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v3

    .line 147
    .local v3, "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in utConfigurationCallBarringQueried"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "info":[Lcom/android/ims/ImsSsInfo;
    .end local v7    # "result":[I
    :cond_1
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Ljava/net/UnknownHostException;

    if-eqz v10, :cond_2

    .line 152
    const-string v10, "ImsUtService"

    const-string v11, "IMS_UT_EVENT_GET_CB: UnknownHostException."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x33f

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 158
    :catch_1
    move-exception v3

    .line 159
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CB: UnknownHostException utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 163
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v10, :cond_3

    .line 164
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/mediatek/simservs/xcap/XcapException;

    .line 166
    .local v9, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    invoke-virtual {v13, v9}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 169
    :catch_2
    move-exception v3

    .line 170
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CB: utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 176
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x324

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 179
    :catch_3
    move-exception v3

    .line 180
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CB: utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 188
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 189
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 191
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_5

    .line 192
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v2, v10

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 193
    .local v2, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v5, 0x0

    .line 195
    .local v5, "imsCfInfo":[Lcom/android/ims/ImsCallForwardInfo;
    if-eqz v2, :cond_4

    array-length v10, v2

    if-eqz v10, :cond_4

    .line 196
    array-length v10, v2

    new-array v5, v10, [Lcom/android/ims/ImsCallForwardInfo;

    .line 197
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v10, v2

    if-ge v4, v10, :cond_4

    .line 199
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMS_UT_EVENT_GET_CF: cfInfo["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v2, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    aget-object v11, v2, v4

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$100(Lcom/mediatek/internal/telephony/ims/ImsUtStub;Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;

    move-result-object v10

    aput-object v10, v5, v4

    .line 197
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 207
    .end local v4    # "i":I
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12, v5}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 209
    :catch_4
    move-exception v3

    .line 210
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in utConfigurationCallForwardQueried"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 214
    .end local v2    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "imsCfInfo":[Lcom/android/ims/ImsCallForwardInfo;
    :cond_5
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v10, :cond_6

    .line 215
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/mediatek/simservs/xcap/XcapException;

    .line 217
    .restart local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    invoke-virtual {v13, v9}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 220
    :catch_5
    move-exception v3

    .line 221
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CF: utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 225
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_6
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Ljava/net/UnknownHostException;

    if-eqz v10, :cond_7

    .line 227
    const-string v10, "ImsUtService"

    const-string v11, "IMS_UT_EVENT_GET_CF: UnknownHostException."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :try_start_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x33f

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 233
    :catch_6
    move-exception v3

    .line 234
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CF: UnknownHostException utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 240
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x324

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 243
    :catch_7
    move-exception v3

    .line 244
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CF: utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 253
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 254
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 256
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_8

    .line 257
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    move-object v7, v10

    check-cast v7, [I

    .line 258
    .restart local v7    # "result":[I
    const/4 v10, 0x1

    new-array v6, v10, [Lcom/android/ims/ImsSsInfo;

    .line 259
    .restart local v6    # "info":[Lcom/android/ims/ImsSsInfo;
    const/4 v10, 0x0

    new-instance v11, Lcom/android/ims/ImsSsInfo;

    invoke-direct {v11}, Lcom/android/ims/ImsSsInfo;-><init>()V

    aput-object v11, v6, v10

    .line 260
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const/4 v11, 0x0

    aget v11, v7, v11

    iput v11, v10, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 263
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMS_UT_EVENT_GET_CW: status = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v7, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :try_start_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12, v6}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    .line 269
    :catch_8
    move-exception v3

    .line 270
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in utConfigurationCallWaitingQueried"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 273
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "info":[Lcom/android/ims/ImsSsInfo;
    .end local v7    # "result":[I
    :cond_8
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Ljava/net/UnknownHostException;

    if-eqz v10, :cond_9

    .line 275
    const-string v10, "ImsUtService"

    const-string v11, "IMS_UT_EVENT_GET_CW: UnknownHostException."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :try_start_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x33f

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_0

    .line 281
    :catch_9
    move-exception v3

    .line 282
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CW: UnknownHostException utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 286
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_9
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v10, :cond_a

    .line 287
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/mediatek/simservs/xcap/XcapException;

    .line 289
    .restart local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    invoke-virtual {v13, v9}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_0

    .line 292
    :catch_a
    move-exception v3

    .line 293
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CW: utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 299
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_a
    :try_start_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x324

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_0

    .line 302
    :catch_b
    move-exception v3

    .line 303
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CW: utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 311
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 312
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 314
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_b

    .line 315
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    move-object v7, v10

    check-cast v7, [I

    .line 316
    .restart local v7    # "result":[I
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 317
    .local v6, "info":Landroid/os/Bundle;
    const-string v10, "queryClir"

    invoke-virtual {v6, v10, v7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 320
    :try_start_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12, v6}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_0

    .line 321
    :catch_c
    move-exception v3

    .line 322
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CLIR: utConfigurationQueried"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 326
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "info":Landroid/os/Bundle;
    .end local v7    # "result":[I
    :cond_b
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Ljava/net/UnknownHostException;

    if-eqz v10, :cond_c

    .line 328
    const-string v10, "ImsUtService"

    const-string v11, "IMS_UT_EVENT_GET_CLIR: UnknownHostException."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :try_start_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x33f

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_d

    goto/16 :goto_0

    .line 334
    :catch_d
    move-exception v3

    .line 335
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CLIR: UnknownHostException utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 339
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_c
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v10, :cond_d

    .line 340
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/mediatek/simservs/xcap/XcapException;

    .line 342
    .restart local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    invoke-virtual {v13, v9}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_e

    goto/16 :goto_0

    .line 345
    :catch_e
    move-exception v3

    .line 346
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CLIR: utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 352
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_d
    :try_start_f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x324

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_f

    goto/16 :goto_0

    .line 355
    :catch_f
    move-exception v3

    .line 356
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CLIR: utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 366
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 367
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 369
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_e

    .line 370
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    move-object v7, v10

    check-cast v7, [I

    .line 371
    .restart local v7    # "result":[I
    new-instance v8, Lcom/android/ims/ImsSsInfo;

    invoke-direct {v8}, Lcom/android/ims/ImsSsInfo;-><init>()V

    .line 372
    .local v8, "ssInfo":Lcom/android/ims/ImsSsInfo;
    const/4 v10, 0x0

    aget v10, v7, v10

    iput v10, v8, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 373
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 374
    .restart local v6    # "info":Landroid/os/Bundle;
    const-string v10, "imsSsInfo"

    invoke-virtual {v6, v10, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 377
    :try_start_10
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12, v6}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_10

    goto/16 :goto_0

    .line 378
    :catch_10
    move-exception v3

    .line 379
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException in utConfigurationQueried, event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 384
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "info":Landroid/os/Bundle;
    .end local v7    # "result":[I
    .end local v8    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    :cond_e
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v10, :cond_f

    .line 385
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/mediatek/simservs/xcap/XcapException;

    .line 387
    .restart local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_11
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    invoke-virtual {v13, v9}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_11

    goto/16 :goto_0

    .line 390
    :catch_11
    move-exception v3

    .line 391
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException in utConfigurationQueryFailed, event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 395
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_f
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Ljava/net/UnknownHostException;

    if-eqz v10, :cond_10

    .line 397
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UnknownHostException. event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :try_start_12
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x33f

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_12

    goto/16 :goto_0

    .line 403
    :catch_12
    move-exception v3

    .line 404
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException UnknownHostException utConfigurationQueryFailed, event"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 410
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_10
    :try_start_13
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x324

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_13

    goto/16 :goto_0

    .line 413
    :catch_13
    move-exception v3

    .line 414
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException in utConfigurationQueryFailed, event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 427
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    if-eqz v10, :cond_12

    .line 428
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 430
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_12

    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v10, :cond_12

    .line 431
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v10, v10, [Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v10, :cond_12

    .line 432
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v2, v10

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 433
    .restart local v2    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v5, 0x0

    .line 435
    .restart local v5    # "imsCfInfo":[Lcom/android/ims/ImsCallForwardInfo;
    if-eqz v2, :cond_11

    array-length v10, v2

    if-eqz v10, :cond_11

    .line 436
    array-length v10, v2

    new-array v5, v10, [Lcom/android/ims/ImsCallForwardInfo;

    .line 437
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    array-length v10, v2

    if-ge v4, v10, :cond_11

    .line 439
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMS_UT_EVENT_SET_CF: cfInfo["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v2, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    aget-object v11, v2, v4

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$100(Lcom/mediatek/internal/telephony/ims/ImsUtStub;Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;

    move-result-object v10

    aput-object v10, v5, v4

    .line 437
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 447
    .end local v4    # "i":I
    :cond_11
    :try_start_14
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12, v5}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_14

    goto/16 :goto_0

    .line 449
    :catch_14
    move-exception v3

    .line 450
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in utConfigurationCFUpdateAndQueried"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 464
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "imsCfInfo":[Lcom/android/ims/ImsCallForwardInfo;
    :cond_12
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 465
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 467
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_13

    .line 469
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "utConfigurationUpdated(): event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :try_start_15
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_15

    goto/16 :goto_0

    .line 474
    :catch_15
    move-exception v3

    .line 475
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException in utConfigurationUpdated, event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 480
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_13
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v10, :cond_14

    .line 481
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/mediatek/simservs/xcap/XcapException;

    .line 483
    .restart local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_16
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    invoke-virtual {v13, v9}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_16

    goto/16 :goto_0

    .line 486
    :catch_16
    move-exception v3

    .line 487
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException in utConfigurationUpdateFailed, event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 491
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_14
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Ljava/net/UnknownHostException;

    if-eqz v10, :cond_15

    .line 493
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UnknownHostException. event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :try_start_17
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x33f

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_17

    goto/16 :goto_0

    .line 499
    :catch_17
    move-exception v3

    .line 500
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException UnknownHostException utConfigurationUpdateFailed, event"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 506
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_15
    :try_start_18
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x324

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_18

    goto/16 :goto_0

    .line 509
    :catch_18
    move-exception v3

    .line 510
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException in utConfigurationUpdateFailed, event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 520
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 521
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 523
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_17

    .line 524
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [Lcom/android/internal/telephony/CallForwardInfoEx;

    move-object v2, v10

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfoEx;

    .line 525
    .local v2, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfoEx;
    const/4 v5, 0x0

    .line 527
    .local v5, "imsCfInfo":[Lcom/android/ims/ImsCallForwardInfoEx;
    if-eqz v2, :cond_16

    array-length v10, v2

    if-eqz v10, :cond_16

    .line 528
    array-length v10, v2

    new-array v5, v10, [Lcom/android/ims/ImsCallForwardInfoEx;

    .line 529
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    array-length v10, v2

    if-ge v4, v10, :cond_16

    .line 530
    new-instance v6, Lcom/android/ims/ImsCallForwardInfoEx;

    invoke-direct {v6}, Lcom/android/ims/ImsCallForwardInfoEx;-><init>()V

    .line 531
    .local v6, "info":Lcom/android/ims/ImsCallForwardInfoEx;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    aget-object v11, v2, v4

    iget v11, v11, Lcom/android/internal/telephony/CallForwardInfoEx;->reason:I

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getConditionFromCFReason(I)I
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$200(Lcom/mediatek/internal/telephony/ims/ImsUtStub;I)I

    move-result v10

    iput v10, v6, Lcom/android/ims/ImsCallForwardInfoEx;->mCondition:I

    .line 533
    aget-object v10, v2, v4

    iget v10, v10, Lcom/android/internal/telephony/CallForwardInfoEx;->status:I

    iput v10, v6, Lcom/android/ims/ImsCallForwardInfoEx;->mStatus:I

    .line 534
    aget-object v10, v2, v4

    iget v10, v10, Lcom/android/internal/telephony/CallForwardInfoEx;->serviceClass:I

    iput v10, v6, Lcom/android/ims/ImsCallForwardInfoEx;->mServiceClass:I

    .line 535
    aget-object v10, v2, v4

    iget v10, v10, Lcom/android/internal/telephony/CallForwardInfoEx;->toa:I

    iput v10, v6, Lcom/android/ims/ImsCallForwardInfoEx;->mToA:I

    .line 536
    aget-object v10, v2, v4

    iget-object v10, v10, Lcom/android/internal/telephony/CallForwardInfoEx;->number:Ljava/lang/String;

    iput-object v10, v6, Lcom/android/ims/ImsCallForwardInfoEx;->mNumber:Ljava/lang/String;

    .line 537
    aget-object v10, v2, v4

    iget v10, v10, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSeconds:I

    iput v10, v6, Lcom/android/ims/ImsCallForwardInfoEx;->mTimeSeconds:I

    .line 538
    aget-object v10, v2, v4

    iget-object v10, v10, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSlot:[J

    iput-object v10, v6, Lcom/android/ims/ImsCallForwardInfoEx;->mTimeSlot:[J

    .line 539
    aput-object v6, v5, v4

    .line 529
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 544
    .end local v4    # "i":I
    .end local v6    # "info":Lcom/android/ims/ImsCallForwardInfoEx;
    :cond_16
    :try_start_19
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12, v5}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallForwardInTimeSlotQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfoEx;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_19

    goto/16 :goto_0

    .line 546
    :catch_19
    move-exception v3

    .line 547
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CF_TIME_SLOT utConfigurationCallForwardInTimeSlotQueried"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 552
    .end local v2    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfoEx;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "imsCfInfo":[Lcom/android/ims/ImsCallForwardInfoEx;
    :cond_17
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v10, :cond_18

    .line 553
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/mediatek/simservs/xcap/XcapException;

    .line 555
    .restart local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    invoke-virtual {v13, v9}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_1a

    goto/16 :goto_0

    .line 558
    :catch_1a
    move-exception v3

    .line 559
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CF_TIME_SLOT utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 563
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_18
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Ljava/net/UnknownHostException;

    if-eqz v10, :cond_19

    .line 565
    const-string v10, "ImsUtService"

    const-string v11, "IMS_UT_EVENT_GET_CF_TIME_SLOT: UnknownHostException."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x33f

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_1b

    goto/16 :goto_0

    .line 572
    :catch_1b
    move-exception v3

    .line 573
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CF_TIME_SLOT: UnknownHostException utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 579
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_19
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x324

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_1c

    goto/16 :goto_0

    .line 583
    :catch_1c
    move-exception v3

    .line 584
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CF_TIME_SLOT utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
