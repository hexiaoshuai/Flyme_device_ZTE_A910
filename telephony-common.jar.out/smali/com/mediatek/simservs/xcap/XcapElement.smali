.class public abstract Lcom/mediatek/simservs/xcap/XcapElement;
.super Ljava/lang/Object;
.source "XcapElement.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/Attributable;


# static fields
.field protected static final AUTH_XCAP_3GPP_INTENDED:Ljava/lang/String; = "X-3GPP-Intended-Identity"

.field protected static final COMMON_POLICY_ALIAS:Ljava/lang/String; = "cp"

.field protected static final COMMON_POLICY_NAMESPACE:Ljava/lang/String; = "urn:ietf:params:xml:ns:common-policy"

.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final TAG:Ljava/lang/String; = "XcapElement"

.field public static final TRUE:Ljava/lang/String; = "true"

.field protected static final XCAP_ALIAS:Ljava/lang/String; = "ss"

.field protected static final XCAP_NAMESPACE:Ljava/lang/String; = "http://uri.etsi.org/ngn/params/xml/simservs/xcap"


# instance fields
.field protected mContext:Landroid/content/Context;

.field public mCredentials:Lorg/apache/http/auth/Credentials;

.field public mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

.field public mIntendedId:Ljava/lang/String;

.field protected mNetwork:Landroid/net/Network;

.field protected mNodeUri:Ljava/lang/String;

.field public mParentUri:Ljava/lang/String;

.field public mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 1
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNodeUri:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 70
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 87
    iput-object p1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 88
    iput-object p2, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    .line 91
    return-void
.end method

.method private getAttributeUri(Ljava/lang/String;)Ljava/net/URI;
    .locals 4
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v2, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    const-string v3, "simservs"

    invoke-direct {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v0

    .line 147
    .local v0, "elementSelector":Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    iget-object v2, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-virtual {v2, v0}, Lcom/mediatek/xcap/client/uri/XcapUri;->setNodeSelector(Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;)Lcom/mediatek/xcap/client/uri/XcapUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/uri/XcapUri;->toURI()Ljava/net/URI;

    move-result-object v1

    .line 148
    .local v1, "elementURI":Ljava/net/URI;
    return-object v1
.end method


# virtual methods
.method public convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 515
    .local v1, "r":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    .local v2, "total":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 520
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public deleteByAttrName(Ljava/lang/String;)V
    .locals 9
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    if-eqz v4, :cond_2

    .line 264
    new-instance v3, Lcom/mediatek/xcap/client/XcapClient;

    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    invoke-direct {v3, v4}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/net/Network;)V

    .line 269
    .local v3, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_0
    const/4 v2, 0x0

    .line 270
    .local v2, "response":Lorg/apache/http/HttpResponse;
    const/4 v1, 0x0

    .line 273
    .local v1, "headers":[Lorg/apache/http/Header;
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 274
    const/4 v4, 0x1

    new-array v1, v4, [Lorg/apache/http/Header;

    .line 275
    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "X-3GPP-Intended-Identity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v4

    .line 277
    :cond_0
    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-virtual {v3, v4}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 278
    invoke-direct {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->getAttributeUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/mediatek/xcap/client/XcapClient;->delete(Ljava/net/URI;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 280
    if-eqz v2, :cond_1

    .line 281
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_3

    .line 282
    const-string v4, "info"

    const-string v5, "document deleted in xcap server..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :cond_1
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 297
    :goto_1
    return-void

    .line 266
    .end local v1    # "headers":[Lorg/apache/http/Header;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_2
    new-instance v3, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {v3}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .restart local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto :goto_0

    .line 284
    .restart local v1    # "headers":[Lorg/apache/http/Header;
    .restart local v2    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    :try_start_1
    new-instance v4, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_1

    .line 289
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 290
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 291
    new-instance v4, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v4, v0}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 295
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    throw v4

    .line 292
    :catch_2
    move-exception v0

    .line 293
    .local v0, "e":Ljava/net/URISyntaxException;
    :try_start_4
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 295
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_1
.end method

.method public domToXmlText(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 5
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 497
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    .line 498
    .local v1, "transFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 499
    .local v2, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 500
    .local v0, "buffer":Ljava/io/StringWriter;
    const-string v3, "omit-xml-declaration"

    const-string v4, "yes"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    new-instance v3, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v3, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v4, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v4, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 503
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getByAttrName(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    if-eqz v7, :cond_2

    .line 163
    new-instance v6, Lcom/mediatek/xcap/client/XcapClient;

    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    invoke-direct {v6, v7}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/net/Network;)V

    .line 168
    .local v6, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_0
    const/4 v4, 0x0

    .line 169
    .local v4, "response":Lorg/apache/http/HttpResponse;
    const/4 v5, 0x0

    .line 171
    .local v5, "ret":Ljava/lang/String;
    const/4 v2, 0x0

    .line 174
    .local v2, "headers":[Lorg/apache/http/Header;
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 175
    const/4 v7, 0x1

    new-array v2, v7, [Lorg/apache/http/Header;

    .line 176
    const/4 v7, 0x0

    new-instance v8, Lorg/apache/http/message/BasicHeader;

    const-string v9, "X-3GPP-Intended-Identity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v2, v7

    .line 178
    :cond_0
    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-virtual {v6, v7}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->getAttributeUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/mediatek/xcap/client/XcapClient;->get(Ljava/net/URI;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 180
    if-eqz v4, :cond_1

    .line 181
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_3

    .line 182
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 183
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 185
    .local v3, "is":Ljava/io/InputStream;
    invoke-virtual {p0, v3}, Lcom/mediatek/simservs/xcap/XcapElement;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 199
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 201
    :goto_1
    return-object v5

    .line 165
    .end local v2    # "headers":[Lorg/apache/http/Header;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "ret":Ljava/lang/String;
    .end local v6    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_2
    new-instance v6, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {v6}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .restart local v6    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto :goto_0

    .line 187
    .restart local v2    # "headers":[Lorg/apache/http/Header;
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    .restart local v5    # "ret":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    .line 188
    :try_start_1
    new-instance v7, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v7
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_1

    .line 193
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 195
    new-instance v7, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v7, v0}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    throw v7

    .line 196
    :catch_2
    move-exception v0

    .line 197
    .local v0, "e":Ljava/net/URISyntaxException;
    :try_start_4
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getNodeName()Ljava/lang/String;
.end method

.method public getNodeSelector()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeUri()Ljava/net/URI;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v2, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    const-string v3, "simservs"

    invoke-direct {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v0

    .line 130
    .local v0, "elementSelector":Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    iget-object v2, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-virtual {v2, v0}, Lcom/mediatek/xcap/client/uri/XcapUri;->setNodeSelector(Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;)Lcom/mediatek/xcap/client/uri/XcapUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/uri/XcapUri;->toURI()Ljava/net/URI;

    move-result-object v1

    .line 131
    .local v1, "elementURI":Ljava/net/URI;
    return-object v1
.end method

.method public getParent()Lcom/mediatek/simservs/xcap/XcapElement;
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .local v0, "pathUri":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 466
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected parse409ErrorMessage(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 12
    .param p1, "xmlErrorTag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x1f4

    .line 555
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 556
    .local v5, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 557
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 558
    .local v2, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6}, Lorg/xml/sax/InputSource;-><init>()V

    .line 559
    .local v6, "is":Lorg/xml/sax/InputSource;
    new-instance v8, Ljava/io/StringReader;

    invoke-virtual {p0, p2}, Lcom/mediatek/simservs/xcap/XcapElement;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 561
    invoke-virtual {v2, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 563
    .local v3, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v3, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 565
    .local v1, "currentNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-lez v8, :cond_0

    .line 566
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 567
    .local v0, "activeElement":Lorg/w3c/dom/Element;
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 568
    .local v7, "textContent":Ljava/lang/String;
    const-string v8, "XcapElement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parse409ErrorMessage:["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    .line 582
    .end local v0    # "activeElement":Lorg/w3c/dom/Element;
    .end local v7    # "textContent":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 571
    .end local v1    # "currentNode":Lorg/w3c/dom/NodeList;
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6    # "is":Lorg/xml/sax/InputSource;
    :catch_0
    move-exception v4

    .line 572
    .local v4, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 573
    new-instance v8, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v8, v11}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v8

    .line 574
    .end local v4    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v4

    .line 575
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 576
    new-instance v8, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v8, v11}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v8

    .line 577
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 578
    .local v4, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v4}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 579
    new-instance v8, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v8, v11}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v8

    .line 582
    .end local v4    # "e":Lorg/xml/sax/SAXException;
    .restart local v1    # "currentNode":Lorg/w3c/dom/NodeList;
    .restart local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6    # "is":Lorg/xml/sax/InputSource;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected readXmlFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 526
    const-string v5, ""

    .line 529
    .local v5, "text":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 530
    .local v4, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 531
    .local v0, "bis":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 534
    .local v2, "dis":Ljava/io/DataInputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "buf":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 535
    const-string v6, "XcapElement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 538
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v1    # "buf":Ljava/lang/String;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .line 539
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 542
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    return-object v5
.end method

.method protected saveContent(Ljava/lang/String;)V
    .locals 25
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 321
    const/16 v18, 0x0

    .line 322
    .local v18, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    const/4 v14, 0x0

    .line 323
    .local v14, "response":Lorg/apache/http/HttpResponse;
    const/4 v8, 0x0

    .line 326
    .local v8, "headers":[Lorg/apache/http/Header;
    const/4 v15, 0x1

    .line 327
    .local v15, "tryCount":I
    const/4 v7, 0x0

    .local v7, "fallBackAddressType":I
    move-object/from16 v19, v18

    .line 328
    .end local v18    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .local v19, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_0
    if-lez v15, :cond_13

    .line 329
    add-int/lit8 v15, v15, -0x1

    .line 332
    :try_start_0
    new-instance v16, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mNodeUri:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 334
    .local v16, "uri":Ljava/net/URI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 335
    new-instance v13, Lcom/mediatek/xcap/client/NetworkSpecificResolver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Lcom/mediatek/xcap/client/NetworkSpecificResolver;-><init>(Landroid/net/Network;)V

    .line 336
    .local v13, "resolver":Lcom/mediatek/xcap/client/NameResolver;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Lcom/mediatek/xcap/client/NameResolver;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    .local v4, "arr$":[Ljava/net/InetAddress;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v11, :cond_14

    aget-object v3, v4, v9

    .line 337
    .local v3, "address":Ljava/net/InetAddress;
    const-string v20, "XcapElement"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "saveContent(): fallBackAddressType="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    if-eqz v7, :cond_1

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_0

    instance-of v0, v3, Ljava/net/Inet4Address;

    move/from16 v20, v0

    if-nez v20, :cond_1

    :cond_0
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v7, v0, :cond_4

    instance-of v0, v3, Ljava/net/Inet6Address;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 343
    :cond_1
    new-instance v18, Lcom/mediatek/xcap/client/XcapClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    move-object/from16 v20, v0

    instance-of v0, v3, Ljava/net/Inet6Address;

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/net/Network;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 348
    .end local v3    # "address":Ljava/net/InetAddress;
    .end local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v18    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_2
    if-nez v18, :cond_6

    .line 349
    :try_start_1
    new-instance v20, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v21, 0x1f4

    invoke-direct/range {v20 .. v21}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v20
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    .end local v4    # "arr$":[Ljava/net/InetAddress;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .end local v13    # "resolver":Lcom/mediatek/xcap/client/NameResolver;
    :catch_0
    move-exception v5

    .line 409
    .end local v16    # "uri":Ljava/net/URI;
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 410
    const-string v20, "User name may not be null"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 411
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 412
    const-string v20, "XcapElement"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "saveContent(): sFallBackAddressType="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget v22, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", fallBackAddressType="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", sIsGbaInternalServerError="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-boolean v22, Lcom/mediatek/simservs/client/SimServs;->sIsGbaInternalServerError:Z

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", xcap.bsfresponse="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "xcap.bsfresponse"

    invoke-static/range {v22 .. v22}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget v20, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I

    if-eqz v20, :cond_11

    if-nez v7, :cond_11

    const-string v20, "500"

    const-string v21, "xcap.bsfresponse"

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    sget-boolean v20, Lcom/mediatek/simservs/client/SimServs;->sIsGbaInternalServerError:Z

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 419
    :cond_2
    const-string v20, "XcapElement"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "saveContent(): sAddressType="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget v22, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget v7, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 421
    add-int/lit8 v15, v15, 0x1

    .line 438
    :cond_3
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :goto_4
    move-object/from16 v19, v18

    .end local v18    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto/16 :goto_0

    .line 336
    .restart local v3    # "address":Ljava/net/InetAddress;
    .restart local v4    # "arr$":[Ljava/net/InetAddress;
    .restart local v9    # "i$":I
    .restart local v11    # "len$":I
    .restart local v13    # "resolver":Lcom/mediatek/xcap/client/NameResolver;
    .restart local v16    # "uri":Ljava/net/URI;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 352
    .end local v3    # "address":Ljava/net/InetAddress;
    .end local v4    # "arr$":[Ljava/net/InetAddress;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .end local v13    # "resolver":Lcom/mediatek/xcap/client/NameResolver;
    :cond_5
    :try_start_3
    new-instance v18, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct/range {v18 .. v18}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 355
    .end local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v18    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 356
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v8, v0, [Lorg/apache/http/Header;

    .line 357
    const/16 v20, 0x0

    new-instance v21, Lorg/apache/http/message/BasicHeader;

    const-string v22, "X-3GPP-Intended-Identity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v21, v8, v20

    .line 359
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/xcap/client/XcapDebugParam;->getEnablePredefinedSimservSetting()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "NoReplyTimer"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 363
    const-string v20, "/data/simservs.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/xcap/XcapElement;->readXmlFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 365
    .local v17, "xMl":Ljava/lang/String;
    if-eqz v17, :cond_8

    .line 366
    move-object/from16 p1, v17

    .line 370
    .end local v17    # "xMl":Ljava/lang/String;
    :cond_8
    const/4 v12, 0x0

    .line 372
    .local v12, "putElementMime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapPutElementMime()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapPutElementMime()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_b

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapPutElementMime()Ljava/lang/String;

    move-result-object v12

    .line 380
    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v12, v2, v8}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 382
    if-eqz v14, :cond_a

    .line 383
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    const/16 v21, 0xc9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 385
    :cond_9
    const-string v20, "info"

    const-string v21, "document created in xcap server..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 438
    :cond_a
    :goto_6
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto/16 :goto_4

    .line 376
    :cond_b
    :try_start_5
    const-string v20, "xcap.putelcontenttype"

    const-string v21, "application/xcap-el+xml"

    invoke-static/range {v20 .. v21}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    .line 386
    :cond_c
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    const/16 v21, 0x199

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 387
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 388
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 390
    .local v10, "is":Ljava/io/InputStream;
    if-eqz v10, :cond_e

    .line 391
    const-string v20, "true"

    const-string v21, "xcap.handl409"

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 392
    new-instance v20, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v21, 0x199

    const-string v22, "phrase"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Lcom/mediatek/simservs/xcap/XcapElement;->parse409ErrorMessage(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(ILjava/lang/String;)V

    throw v20
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 426
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v12    # "putElementMime":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 427
    .end local v16    # "uri":Ljava/net/URI;
    .local v5, "e":Ljava/io/IOException;
    :goto_7
    :try_start_6
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 428
    sget v20, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I

    if-eqz v20, :cond_12

    if-nez v7, :cond_12

    .line 429
    const-string v20, "XcapElement"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SocketTimeoutException(): sFallBackAddressType="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget v22, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    sget v7, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 431
    add-int/lit8 v15, v15, 0x1

    .line 438
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto/16 :goto_4

    .line 394
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v12    # "putElementMime":Ljava/lang/String;
    .restart local v16    # "uri":Ljava/net/URI;
    :cond_d
    :try_start_7
    new-instance v20, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v21, 0x199

    invoke-direct/range {v20 .. v21}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v20
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 435
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v12    # "putElementMime":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 436
    .end local v16    # "uri":Ljava/net/URI;
    .local v5, "e":Ljava/net/URISyntaxException;
    :goto_8
    :try_start_8
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 438
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto/16 :goto_4

    .line 397
    .end local v5    # "e":Ljava/net/URISyntaxException;
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v12    # "putElementMime":Ljava/lang/String;
    .restart local v16    # "uri":Ljava/net/URI;
    :cond_e
    :try_start_9
    new-instance v20, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v21, 0x199

    invoke-direct/range {v20 .. v21}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v20
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 438
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v12    # "putElementMime":Ljava/lang/String;
    .end local v16    # "uri":Ljava/net/URI;
    :catchall_0
    move-exception v20

    :goto_9
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    throw v20

    .line 399
    .restart local v12    # "putElementMime":Ljava/lang/String;
    .restart local v16    # "uri":Ljava/net/URI;
    :cond_f
    :try_start_a
    sget v20, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I

    if-eqz v20, :cond_10

    if-nez v7, :cond_10

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    const/16 v21, 0x1f4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 401
    const-string v20, "XcapElement"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "saveContent(): sAddressType="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget v22, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    sget v7, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I

    .line 403
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 405
    :cond_10
    new-instance v20, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    invoke-direct/range {v20 .. v21}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v20
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 423
    .end local v12    # "putElementMime":Ljava/lang/String;
    .end local v16    # "uri":Ljava/net/URI;
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :cond_11
    :try_start_b
    new-instance v20, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v21, 0x194

    invoke-direct/range {v20 .. v21}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v20

    .line 433
    .local v5, "e":Ljava/io/IOException;
    :cond_12
    new-instance v20, Lcom/mediatek/simservs/xcap/XcapException;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 441
    .end local v5    # "e":Ljava/io/IOException;
    .end local v18    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_13
    return-void

    .line 438
    :catchall_1
    move-exception v20

    move-object/from16 v18, v19

    .end local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v18    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto :goto_9

    .line 435
    .end local v18    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :catch_3
    move-exception v5

    move-object/from16 v18, v19

    .end local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v18    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto :goto_8

    .line 426
    .end local v18    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :catch_4
    move-exception v5

    move-object/from16 v18, v19

    .end local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v18    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto/16 :goto_7

    .line 408
    .end local v18    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :catch_5
    move-exception v5

    move-object/from16 v18, v19

    .end local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v18    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto/16 :goto_3

    .end local v18    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v4    # "arr$":[Ljava/net/InetAddress;
    .restart local v9    # "i$":I
    .restart local v11    # "len$":I
    .restart local v13    # "resolver":Lcom/mediatek/xcap/client/NameResolver;
    .restart local v16    # "uri":Ljava/net/URI;
    .restart local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_14
    move-object/from16 v18, v19

    .end local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v18    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto/16 :goto_2
.end method

.method public setByAttrName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    if-eqz v4, :cond_3

    .line 216
    new-instance v3, Lcom/mediatek/xcap/client/XcapClient;

    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    invoke-direct {v3, v4}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/net/Network;)V

    .line 221
    .local v3, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_0
    const/4 v2, 0x0

    .line 222
    .local v2, "response":Lorg/apache/http/HttpResponse;
    const/4 v1, 0x0

    .line 225
    .local v1, "headers":[Lorg/apache/http/Header;
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 226
    const/4 v4, 0x1

    new-array v1, v4, [Lorg/apache/http/Header;

    .line 227
    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "X-3GPP-Intended-Identity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v4

    .line 229
    :cond_0
    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-virtual {v3, v4}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 230
    invoke-direct {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->getAttributeUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    const-string v5, "application/xcap-att+xml"

    invoke-virtual {v3, v4, v5, p2, v1}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 233
    if-eqz v2, :cond_2

    .line 234
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_1

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc9

    if-ne v4, v5, :cond_4

    .line 236
    :cond_1
    const-string v4, "info"

    const-string v5, "document created in xcap server..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_2
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 251
    :goto_1
    return-void

    .line 218
    .end local v1    # "headers":[Lorg/apache/http/Header;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_3
    new-instance v3, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {v3}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .restart local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto :goto_0

    .line 238
    .restart local v1    # "headers":[Lorg/apache/http/Header;
    .restart local v2    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    :try_start_1
    new-instance v4, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_1

    .line 243
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 244
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 245
    new-instance v4, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v4, v0}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    throw v4

    .line 246
    :catch_2
    move-exception v0

    .line 247
    .local v0, "e":Ljava/net/URISyntaxException;
    :try_start_4
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 249
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_1
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 307
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNodeUri:Ljava/lang/String;

    .line 308
    invoke-virtual {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->saveContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    iput-object p1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mContext:Landroid/content/Context;

    .line 114
    :cond_0
    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 100
    const-string v0, "XcapElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XCAP dedicated network netid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput-object p1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    .line 103
    :cond_0
    return-void
.end method
