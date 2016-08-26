.class public Lcom/mediatek/simservs/client/CommunicationDiversion;
.super Lcom/mediatek/simservs/client/SimservType;
.source "CommunicationDiversion.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/RuleType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;
    }
.end annotation


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "communication-diversion"


# instance fields
.field mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

.field mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/client/SimservType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 47
    return-void
.end method


# virtual methods
.method public createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
    .locals 5

    .prologue
    .line 242
    new-instance v0, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "communication-diversion"

    iget-object v3, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 243
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    return-object v0
.end method

.method public getNoReplyTimer()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->getValue()I

    move-result v0

    return v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "communication-diversion"

    return-object v0
.end method

.method public getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .locals 19
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 61
    const-string v1, "NoReplyTimer"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 62
    .local v16, "noReplyTimerNode":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_4

    .line 63
    const-string v1, "CommunicationDiversion"

    const-string v2, "Got NoReplyTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    .line 65
    .local v15, "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface {v15}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v18

    .line 66
    .local v18, "val":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 67
    .local v7, "noReplyTimer":I
    new-instance v1, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v4, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    .line 69
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_0

    .line 70
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    .line 73
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 74
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setContext(Landroid/content/Context;)V

    .line 123
    .end local v7    # "noReplyTimer":I
    .end local v15    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    .end local v18    # "val":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v1, "ruleset"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 124
    .local v17, "ruleSetNode":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_a

    .line 125
    const-string v1, "CommunicationDiversion"

    const-string v2, "Got ruleset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 127
    .local v6, "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v1, Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v3, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_2

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 132
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContext(Landroid/content/Context;)V

    .line 177
    .end local v6    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_3
    :goto_1
    return-void

    .line 77
    .end local v17    # "ruleSetNode":Lorg/w3c/dom/NodeList;
    :cond_4
    const-string v1, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v2, "NoReplyTimer"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 79
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_6

    .line 80
    const-string v1, "CommunicationDiversion"

    const-string v2, "Got NoReplyTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    .line 82
    .restart local v15    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface {v15}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v18

    .line 83
    .restart local v18    # "val":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 84
    .restart local v7    # "noReplyTimer":I
    new-instance v1, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v4, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    .line 86
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_5

    .line 87
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    .line 90
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 91
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setContext(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 94
    .end local v7    # "noReplyTimer":I
    .end local v15    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    .end local v18    # "val":Ljava/lang/String;
    :cond_6
    const-string v1, "ss:NoReplyTimer"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 95
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_8

    .line 96
    const-string v1, "CommunicationDiversion"

    const-string v2, "Got NoReplyTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    .line 98
    .restart local v15    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface {v15}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v18

    .line 99
    .restart local v18    # "val":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 100
    .restart local v7    # "noReplyTimer":I
    new-instance v1, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v4, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    .line 102
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_7

    .line 103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    .line 106
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 107
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setContext(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 110
    .end local v7    # "noReplyTimer":I
    .end local v15    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    .end local v18    # "val":Ljava/lang/String;
    :cond_8
    new-instance v8, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v11, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    const/4 v14, -0x1

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v14}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;I)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_9

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    .line 116
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setContext(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 137
    .restart local v17    # "ruleSetNode":Lorg/w3c/dom/NodeList;
    :cond_a
    const-string v1, "urn:ietf:params:xml:ns:common-policy"

    const-string v2, "ruleset"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 138
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_c

    .line 139
    const-string v1, "CommunicationDiversion"

    const-string v2, "Got ruleset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 141
    .restart local v6    # "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v1, Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v3, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_b

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 147
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContext(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 151
    .end local v6    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_c
    const-string v1, "cp:ruleset"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 152
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_e

    .line 153
    const-string v1, "CommunicationDiversion"

    const-string v2, "Got ruleset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 155
    .restart local v6    # "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v1, Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v3, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_d

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 161
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContext(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 165
    .end local v6    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_e
    new-instance v1, Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v3, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_f

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 170
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContext(Landroid/content/Context;)V

    goto/16 :goto_1
.end method

.method public saveRule(Ljava/lang/String;)V
    .locals 6
    .param p1, "ruleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 257
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 258
    iget-object v4, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 259
    .local v3, "rules":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/simservs/client/policy/Rule;

    .line 260
    .local v1, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v4, v1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->toXmlString()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "ruleXml":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Rule;->setContent(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v2    # "ruleXml":Ljava/lang/String;
    .end local v3    # "rules":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_1
    const-string v4, "saveRule"

    const-string v5, "ruleId is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_2
    return-void
.end method

.method public saveRuleSet()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "ruleXml":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContent(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/mediatek/simservs/client/SimservType;->setNetwork(Landroid/net/Network;)V

    .line 186
    if-eqz p1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "SimservType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XCAP dedicated network netid to mNoReplyTimer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    if-eqz v0, :cond_1

    .line 192
    const-string v0, "SimservType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XCAP dedicated network netid to mRuleSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 196
    :cond_1
    return-void
.end method

.method public setNoReplyTimer(I)V
    .locals 2
    .param p1, "timerValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v1, p1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setValue(I)V

    .line 210
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "noReplyTimerXml":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setContent(Ljava/lang/String;)V

    .line 212
    return-void
.end method
