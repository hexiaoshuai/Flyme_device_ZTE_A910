.class public Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
.super Lcom/mediatek/simservs/client/SimservType;
.source "OriginatingIdentityPresentationRestriction.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "originating-identity-presentation-restriction"


# instance fields
.field public mContainDefaultBehaviour:Z

.field public mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

.field public mShowActivePara:Z


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 1
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "xui"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/client/SimservType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 27
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    .line 28
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mShowActivePara:Z

    .line 42
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "originating-identity-presentation-restriction"

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .locals 7
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    const-string v0, "default-behaviour"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 47
    .local v6, "defaultBehaviour":Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_2

    .line 48
    iput-boolean v3, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    .line 49
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 50
    .local v5, "defaultBehaviourElement":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "originating-identity-presentation-restriction"

    iget-object v3, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/DefaultBehaviour;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    .line 53
    iget-object v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setNetwork(Landroid/net/Network;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setContext(Landroid/content/Context;)V

    .line 89
    .end local v5    # "defaultBehaviourElement":Lorg/w3c/dom/Element;
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    const-string v0, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v1, "default-behaviour"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 63
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_4

    .line 64
    iput-boolean v3, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    .line 65
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 66
    .restart local v5    # "defaultBehaviourElement":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "originating-identity-presentation-restriction"

    iget-object v3, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/DefaultBehaviour;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    .line 69
    iget-object v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setNetwork(Landroid/net/Network;)V

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setContext(Landroid/content/Context;)V

    goto :goto_0

    .line 77
    .end local v5    # "defaultBehaviourElement":Lorg/w3c/dom/Element;
    :cond_4
    new-instance v0, Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "originating-identity-presentation-restriction"

    iget-object v3, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/DefaultBehaviour;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    .line 80
    iget-object v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_5

    .line 81
    iget-object v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setNetwork(Landroid/net/Network;)V

    .line 84
    :cond_5
    iget-object v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public isContainDefaultBehaviour()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    return v0
.end method

.method public isDefaultPresentationRestricted()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/DefaultBehaviour;->isPresentationRestricted()Z

    move-result v0

    return v0
.end method

.method public saveConfiguration()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "serviceXml":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setContent(Ljava/lang/String;)V

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    .line 105
    return-void
.end method

.method public setDefaultPresentationRestricted(Z)V
    .locals 2
    .param p1, "presentationRestricted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v1, p1}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setPresentationRestricted(Z)V

    .line 159
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mActived:Z

    .line 161
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->isDefaultPresentationRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/DefaultBehaviour;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "defaultBehaviourXml":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setContent(Ljava/lang/String;)V

    .line 167
    .end local v0    # "defaultBehaviourXml":Ljava/lang/String;
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->saveConfiguration()V

    goto :goto_0
.end method

.method public showActiveParaInXml(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mShowActivePara:Z

    .line 141
    return-void
.end method

.method public toXmlString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 113
    const/4 v6, 0x0

    .line 114
    .local v6, "root":Lorg/w3c/dom/Element;
    const/4 v7, 0x0

    .line 115
    .local v7, "xmlString":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 117
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 118
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 119
    .local v2, "document":Lorg/w3c/dom/Document;
    const-string v8, "originating-identity-presentation-restriction"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 120
    const-string v8, "SimservType"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "toXmlString: mShowActivePara="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mShowActivePara:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mActived="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mActived:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-boolean v8, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mShowActivePara:Z

    if-eqz v8, :cond_0

    .line 122
    const-string v8, "active"

    iget-boolean v9, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mActived:Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    invoke-interface {v2, v6}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 125
    iget-object v8, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v8, v2}, Lcom/mediatek/simservs/client/DefaultBehaviour;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 126
    .local v1, "defaultElement":Lorg/w3c/dom/Element;
    invoke-interface {v6, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 127
    invoke-virtual {p0, v6}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->domToXmlText(Lorg/w3c/dom/Element;)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .line 136
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "defaultElement":Lorg/w3c/dom/Element;
    .end local v2    # "document":Lorg/w3c/dom/Document;
    :goto_0
    return-object v7

    .line 128
    :catch_0
    move-exception v5

    .line 130
    .local v5, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v5    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v3

    .line 132
    .local v3, "e":Ljavax/xml/transform/TransformerConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v3    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_2
    move-exception v3

    .line 134
    .local v3, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_0
.end method
