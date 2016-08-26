.class public abstract Lcom/mediatek/simservs/xcap/InquireType;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "InquireType.java"


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 56
    const/16 v19, 0x0

    .line 57
    .local v19, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    const/4 v15, 0x0

    .line 58
    .local v15, "response":Lorg/apache/http/HttpResponse;
    const/16 v16, 0x0

    .line 60
    .local v16, "ret":Ljava/lang/String;
    const/4 v9, 0x0

    .line 62
    .local v9, "headers":[Lorg/apache/http/Header;
    const/16 v17, 0x1

    .line 63
    .local v17, "tryCount":I
    const/4 v8, 0x0

    .local v8, "fallBackAddressType":I
    move-object/from16 v20, v19

    .line 64
    .end local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .local v20, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_0
    if-lez v17, :cond_12

    .line 65
    add-int/lit8 v17, v17, -0x1

    .line 68
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/xcap/InquireType;->getNodeUri()Ljava/net/URI;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v13

    .line 69
    .local v13, "nodeUri":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v5

    .line 71
    .local v5, "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    invoke-virtual {v5}, Lcom/mediatek/xcap/client/XcapDebugParam;->getEnableSimservQueryWhole()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 72
    const/16 v21, 0x0

    const-string v22, "simservs"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    const-string v23, "simservs"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 76
    :cond_0
    new-instance v18, Ljava/net/URI;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 78
    .local v18, "uri":Ljava/net/URI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mNetwork:Landroid/net/Network;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 79
    new-instance v14, Lcom/mediatek/xcap/client/NetworkSpecificResolver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mNetwork:Landroid/net/Network;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Lcom/mediatek/xcap/client/NetworkSpecificResolver;-><init>(Landroid/net/Network;)V

    .line 80
    .local v14, "resolver":Lcom/mediatek/xcap/client/NameResolver;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Lcom/mediatek/xcap/client/NameResolver;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    .local v4, "arr$":[Ljava/net/InetAddress;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v12, :cond_13

    aget-object v3, v4, v10

    .line 81
    .local v3, "address":Ljava/net/InetAddress;
    const-string v21, "XcapElement"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getContent(): fallBackAddressType="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz v8, :cond_2

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v8, v0, :cond_1

    instance-of v0, v3, Ljava/net/Inet4Address;

    move/from16 v21, v0

    if-nez v21, :cond_2

    :cond_1
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v8, v0, :cond_5

    instance-of v0, v3, Ljava/net/Inet6Address;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 87
    :cond_2
    new-instance v19, Lcom/mediatek/xcap/client/XcapClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mNetwork:Landroid/net/Network;

    move-object/from16 v21, v0

    instance-of v0, v3, Ljava/net/Inet6Address;

    move/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/net/Network;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 92
    .end local v3    # "address":Ljava/net/InetAddress;
    .end local v20    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_2
    if-nez v19, :cond_7

    .line 93
    :try_start_1
    new-instance v21, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v22, 0x1f4

    invoke-direct/range {v21 .. v22}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v21
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .end local v4    # "arr$":[Ljava/net/InetAddress;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "resolver":Lcom/mediatek/xcap/client/NameResolver;
    :catch_0
    move-exception v6

    .line 144
    .end local v5    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v13    # "nodeUri":Ljava/lang/String;
    .end local v18    # "uri":Ljava/net/URI;
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 145
    const-string v21, "User name may not be null"

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 146
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 147
    const-string v21, "XcapElement"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getContent(): sFallBackAddressType="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", fallBackAddressType="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", sIsGbaInternalServerError="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/mediatek/simservs/client/SimServs;->sIsGbaInternalServerError:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", xcap.bsfresponse="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "xcap.bsfresponse"

    invoke-static/range {v23 .. v23}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget v21, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I

    if-eqz v21, :cond_10

    if-nez v8, :cond_10

    const-string v21, "500"

    const-string v22, "xcap.bsfresponse"

    invoke-static/range {v22 .. v22}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    sget-boolean v21, Lcom/mediatek/simservs/client/SimServs;->sIsGbaInternalServerError:Z

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 154
    :cond_3
    const-string v21, "XcapElement"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getContent(): sAddressType="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget v8, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    add-int/lit8 v17, v17, 0x1

    .line 173
    :cond_4
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :goto_4
    move-object/from16 v20, v19

    .end local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v20    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto/16 :goto_0

    .line 80
    .restart local v3    # "address":Ljava/net/InetAddress;
    .restart local v4    # "arr$":[Ljava/net/InetAddress;
    .restart local v5    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v10    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "nodeUri":Ljava/lang/String;
    .restart local v14    # "resolver":Lcom/mediatek/xcap/client/NameResolver;
    .restart local v18    # "uri":Ljava/net/URI;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 96
    .end local v3    # "address":Ljava/net/InetAddress;
    .end local v4    # "arr$":[Ljava/net/InetAddress;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "resolver":Lcom/mediatek/xcap/client/NameResolver;
    :cond_6
    :try_start_3
    new-instance v19, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct/range {v19 .. v19}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    .end local v20    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mIntendedId:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    .line 100
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v9, v0, [Lorg/apache/http/Header;

    .line 101
    const/16 v21, 0x0

    new-instance v22, Lorg/apache/http/message/BasicHeader;

    const-string v23, "X-3GPP-Intended-Identity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mIntendedId:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v22, v9, v21

    .line 103
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/xcap/client/XcapClient;->setContext(Landroid/content/Context;)V

    .line 107
    :cond_9
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Lcom/mediatek/xcap/client/XcapClient;->get(Ljava/net/URI;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 109
    if-eqz v15, :cond_a

    .line 110
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    const/16 v22, 0xc8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 111
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 112
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 114
    .local v11, "is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mediatek/simservs/xcap/InquireType;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v16

    .line 173
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "is":Ljava/io/InputStream;
    :cond_a
    :goto_5
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto/16 :goto_4

    .line 115
    :cond_b
    :try_start_5
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    const/16 v22, 0x199

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 116
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 117
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 119
    .restart local v11    # "is":Ljava/io/InputStream;
    if-eqz v11, :cond_d

    .line 120
    const-string v21, "true"

    const-string v22, "xcap.handl409"

    invoke-static/range {v22 .. v22}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 122
    const/16 v16, 0x0

    .line 123
    new-instance v21, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v22, 0x199

    const-string v23, "phrase"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Lcom/mediatek/simservs/xcap/InquireType;->parse409ErrorMessage(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(ILjava/lang/String;)V

    throw v21
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 161
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v6

    .line 162
    .end local v5    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v13    # "nodeUri":Ljava/lang/String;
    .end local v18    # "uri":Ljava/net/URI;
    .local v6, "e":Ljava/io/IOException;
    :goto_6
    :try_start_6
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 163
    sget v21, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I

    if-eqz v21, :cond_11

    if-nez v8, :cond_11

    .line 164
    const-string v21, "XcapElement"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IOException(): sFallBackAddressType="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget v8, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 166
    add-int/lit8 v17, v17, 0x1

    .line 173
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto/16 :goto_4

    .line 126
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v5    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v13    # "nodeUri":Ljava/lang/String;
    .restart local v18    # "uri":Ljava/net/URI;
    :cond_c
    const/16 v16, 0x0

    .line 127
    :try_start_7
    new-instance v21, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v22, 0x199

    invoke-direct/range {v21 .. v22}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v21
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 170
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v6

    .line 171
    .end local v5    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v13    # "nodeUri":Ljava/lang/String;
    .end local v18    # "uri":Ljava/net/URI;
    .local v6, "e":Ljava/net/URISyntaxException;
    :goto_7
    :try_start_8
    invoke-virtual {v6}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 173
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto/16 :goto_4

    .line 130
    .end local v6    # "e":Ljava/net/URISyntaxException;
    .restart local v5    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v13    # "nodeUri":Ljava/lang/String;
    .restart local v18    # "uri":Ljava/net/URI;
    :cond_d
    const/16 v16, 0x0

    .line 131
    :try_start_9
    new-instance v21, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v22, 0x199

    invoke-direct/range {v21 .. v22}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v21
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 173
    .end local v5    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v13    # "nodeUri":Ljava/lang/String;
    .end local v18    # "uri":Ljava/net/URI;
    :catchall_0
    move-exception v21

    :goto_8
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    throw v21

    .line 133
    .restart local v5    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v13    # "nodeUri":Ljava/lang/String;
    .restart local v18    # "uri":Ljava/net/URI;
    :cond_e
    :try_start_a
    sget v21, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I

    if-eqz v21, :cond_f

    if-nez v8, :cond_f

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    const/16 v22, 0x1f4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 135
    const-string v21, "XcapElement"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getContent(): sAddressType="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget v8, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I

    .line 137
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_5

    .line 139
    :cond_f
    const/16 v16, 0x0

    .line 140
    new-instance v21, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v22

    invoke-direct/range {v21 .. v22}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v21
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 158
    .end local v5    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v13    # "nodeUri":Ljava/lang/String;
    .end local v18    # "uri":Ljava/net/URI;
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :cond_10
    :try_start_b
    new-instance v21, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v22, 0x194

    invoke-direct/range {v21 .. v22}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v21

    .line 168
    .local v6, "e":Ljava/io/IOException;
    :cond_11
    new-instance v21, Lcom/mediatek/simservs/xcap/XcapException;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v21
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 176
    .end local v6    # "e":Ljava/io/IOException;
    .end local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v20    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_12
    return-object v16

    .line 173
    :catchall_1
    move-exception v21

    move-object/from16 v19, v20

    .end local v20    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto :goto_8

    .line 170
    .end local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v20    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :catch_3
    move-exception v6

    move-object/from16 v19, v20

    .end local v20    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto :goto_7

    .line 161
    .end local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v20    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :catch_4
    move-exception v6

    move-object/from16 v19, v20

    .end local v20    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto/16 :goto_6

    .line 143
    .end local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v20    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :catch_5
    move-exception v6

    move-object/from16 v19, v20

    .end local v20    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto/16 :goto_3

    .end local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v4    # "arr$":[Ljava/net/InetAddress;
    .restart local v5    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v10    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "nodeUri":Ljava/lang/String;
    .restart local v14    # "resolver":Lcom/mediatek/xcap/client/NameResolver;
    .restart local v18    # "uri":Ljava/net/URI;
    .restart local v20    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_13
    move-object/from16 v19, v20

    .end local v20    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto/16 :goto_2
.end method
