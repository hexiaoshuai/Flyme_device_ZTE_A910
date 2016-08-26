.class Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleImsConfCallMessage(IILjava/lang/String;)V
    .locals 22
    .param p1, "len"    # I
    .param p2, "callId"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 557
    if-eqz p3, :cond_0

    :try_start_0
    const-string v19, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 558
    :cond_0
    const-string v19, "ImsCallSessionProxy"

    const-string v20, "Failed to handleImsConfCallMessage due to data is empty"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_1
    :goto_0
    return-void

    .line 562
    :cond_2
    const-string v19, "ImsCallSessionProxy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleVoLteConfCallMessage, data length = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "callId = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v6, "/sdcard/conferenceCall.xml"

    .line 568
    .local v6, "file":Ljava/lang/String;
    new-instance v11, Ljava/io/OutputStreamWriter;

    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v20, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 569
    .local v11, "out":Ljava/io/OutputStreamWriter;
    const/16 v19, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v11, v0, v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    .line 570
    invoke-virtual {v11}, Ljava/io/OutputStreamWriter;->close()V

    .line 573
    new-instance v10, Ljava/io/BufferedInputStream;

    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 574
    .local v10, "inStream":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 575
    .local v5, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v12

    .line 576
    .local v12, "saxParse":Ljavax/xml/parsers/SAXParser;
    new-instance v18, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;

    invoke-direct/range {v18 .. v18}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;-><init>()V

    .line 577
    .local v18, "xmlData":Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;
    if-nez v18, :cond_3

    .line 578
    const-string v19, "ImsCallSessionProxy"

    const-string v20, "can\'t create xmlData object"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 644
    .end local v5    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v6    # "file":Ljava/lang/String;
    .end local v10    # "inStream":Ljava/io/InputStream;
    .end local v11    # "out":Ljava/io/OutputStreamWriter;
    .end local v12    # "saxParse":Ljavax/xml/parsers/SAXParser;
    .end local v18    # "xmlData":Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;
    :catch_0
    move-exception v4

    .line 645
    .local v4, "e":Ljava/lang/Exception;
    const-string v19, "ImsCallSessionProxy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to handle volte conference call message !!!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 581
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v10    # "inStream":Ljava/io/InputStream;
    .restart local v11    # "out":Ljava/io/OutputStreamWriter;
    .restart local v12    # "saxParse":Ljavax/xml/parsers/SAXParser;
    .restart local v18    # "xmlData":Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;
    :cond_3
    :try_start_1
    move-object/from16 v0, v18

    invoke-virtual {v12, v10, v0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 584
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->getUsers()Ljava/util/List;

    move-result-object v17

    .line 585
    .local v17, "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;>;"
    const/4 v7, 0x0

    .line 586
    .local v7, "i":I
    new-instance v9, Lcom/android/ims/ImsConferenceState;

    invoke-direct {v9}, Lcom/android/ims/ImsConferenceState;-><init>()V

    .line 589
    .local v9, "imsConferenceState":Lcom/android/ims/ImsConferenceState;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    .line 590
    .local v14, "u":Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;
    add-int/lit8 v7, v7, 0x1

    .line 591
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 593
    .local v3, "confInfo":Landroid/os/Bundle;
    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v16

    .line 594
    .local v16, "userEntity":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v19, v0

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v20

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->getUserNameFromSipTelUriString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 595
    .local v15, "userAddr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v19, v0

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mConfParticipantsUri:Ljava/util/LinkedHashMap;
    invoke-static/range {v19 .. v19}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/util/LinkedHashMap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const-string v19, "user"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v19, "display-text"

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getDisplayText()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v19, "endpoint"

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getEndPoint()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getStatus()Ljava/lang/String;

    move-result-object v13

    .line 601
    .local v13, "state":Ljava/lang/String;
    const-string v19, "pending"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 602
    const-string v19, "status"

    const-string v20, "pending"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :goto_2
    iget-object v0, v9, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/LinkedHashMap;

    move-object/from16 v19, v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 604
    :cond_4
    const-string v19, "dialing-out"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 605
    const-string v19, "status"

    const-string v20, "dialing-out"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 607
    :cond_5
    const-string v19, "dialing-in"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 608
    const-string v19, "status"

    const-string v20, "dialing-in"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 610
    :cond_6
    const-string v19, "alerting"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 611
    const-string v19, "status"

    const-string v20, "alerting"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 613
    :cond_7
    const-string v19, "on-hold"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 614
    const-string v19, "status"

    const-string v20, "on-hold"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 616
    :cond_8
    const-string v19, "connected"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 617
    const-string v19, "status"

    const-string v20, "connected"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 619
    :cond_9
    const-string v19, "disconnecting"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 620
    const-string v19, "status"

    const-string v20, "disconnecting"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 622
    :cond_a
    const-string v19, "disconnected"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 623
    const-string v19, "status"

    const-string v20, "disconnected"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 625
    :cond_b
    const-string v19, "muted-via-focus"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 626
    const-string v19, "status"

    const-string v20, "muted-via-focus"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 629
    :cond_c
    const-string v19, "status"

    const-string v20, "connect-fail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 635
    .end local v3    # "confInfo":Landroid/os/Bundle;
    .end local v13    # "state":Ljava/lang/String;
    .end local v14    # "u":Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;
    .end local v15    # "userAddr":Ljava/lang/String;
    .end local v16    # "userEntity":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v19, v0

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static/range {v19 .. v19}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    if-eqz v19, :cond_1

    .line 637
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v19, v0

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static/range {v19 .. v19}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v9}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 639
    :catch_1
    move-exception v4

    .line 640
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v19, "ImsCallSessionProxy"

    const-string v20, "RemoteException occurs when callSessionConferenceStateUpdated()"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x2

    .line 651
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "action":Ljava/lang/String;
    const-string v6, "ImsCallSessionProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received broadcast "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string v6, "com.android.ims.IMS_CAPABILITIES_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 657
    const/4 v5, 0x1

    .line 658
    .local v5, "ratType":I
    const-string v6, "android:enablecap"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    .line 660
    .local v4, "enabledFeatures":[I
    aget v6, v4, v9

    if-ne v6, v9, :cond_0

    .line 661
    const/4 v5, 0x2

    .line 663
    :cond_0
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 666
    :try_start_0
    const-string v6, "ImsCallSessionProxy"

    const-string v7, "callCapablitiesChanged"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mRatType:I
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 668
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mRatType:I
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v8

    new-instance v9, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v9}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v6, v7, v8, v5, v9}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mRatType:I
    invoke-static {v6, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$402(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;I)I

    .line 677
    .end local v4    # "enabledFeatures":[I
    .end local v5    # "ratType":I
    :cond_2
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 678
    const-string v6, "android.intent.action.ims.conference"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 679
    const-string v6, "call.id"

    const/4 v7, 0x3

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 681
    .local v1, "callId":I
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v1, v6, :cond_3

    .line 682
    const-string v6, "message.content"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 684
    .local v2, "data":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 685
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {p0, v6, v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->handleImsConfCallMessage(IILjava/lang/String;)V

    .line 692
    .end local v1    # "callId":I
    .end local v2    # "data":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 670
    .restart local v4    # "enabledFeatures":[I
    .restart local v5    # "ratType":I
    :catch_0
    move-exception v3

    .line 671
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "ImsCallSessionProxy"

    const-string v7, "RemoteException callTypeChanged()"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 690
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "enabledFeatures":[I
    .end local v5    # "ratType":I
    :cond_4
    const-string v6, "ImsCallSessionProxy"

    const-string v7, "can\'t handle conference message since no call ID. Abnormal Case"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
