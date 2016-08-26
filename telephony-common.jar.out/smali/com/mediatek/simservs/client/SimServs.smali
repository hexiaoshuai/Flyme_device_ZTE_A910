.class public Lcom/mediatek/simservs/client/SimServs;
.super Ljava/lang/Object;
.source "SimServs.java"


# static fields
.field private static final ACTION_GBA_INTERNAL_SERVER_ERROR:Ljava/lang/String; = "android.intent.action.ACTION_GBA_INTERNAL_SERVER_ERROR"

.field public static final AUID_SIMSERVS:Ljava/lang/String; = "simservs.ngn.etsi.org"

.field public static final CARDTYPE_ISIM:I = 0x2

.field public static final CARDTYPE_UNSPECIFIED:I = 0x0

.field public static final CARDTYPE_USIM:I = 0x1

.field public static final FALL_BACK_ADDRESS_IPV4:I = 0x1

.field public static final FALL_BACK_ADDRESS_IPV6:I = 0x2

.field public static final LIB_CONFIG_MULTIPLE_RULE_CONDITIONS:Z = true

.field public static final OPERATOR_DEFAULT:I = 0x0

.field public static final OPERATOR_OP01:I = 0x1

.field public static final OPERATOR_OP03:I = 0x8

.field public static final OPERATOR_OP05:I = 0x7

.field public static final OPERATOR_OP06:I = 0x2

.field public static final OPERATOR_OP07:I = 0x3

.field public static final OPERATOR_OP118:I = 0x6

.field public static final OPERATOR_OP15:I = 0x5

.field public static final OPERATOR_OP18:I = 0x4

.field public static final OPERATOR_OP19:I = 0x9

.field public static final SIMSERVS_FILENAME:Ljava/lang/String; = "simservs.xml"

.field public static final TAG:Ljava/lang/String; = "SimServs"

.field public static sDebug:Z

.field public static sFallBackAddressType:I

.field public static sInstance:Lcom/mediatek/simservs/client/SimServs;

.field public static sIsGbaInternalServerError:Z

.field private static sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

.field private static sXcapRoot:Ljava/lang/String;

.field private static sXui:Ljava/lang/String;


# instance fields
.field private mCardType:I

.field private mContext:Landroid/content/Context;

.field private mCredential:Lorg/apache/http/auth/Credentials;

.field public mDocumentSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

.field public mDocumentUri:Ljava/net/URI;

.field private mImpi:Ljava/lang/String;

.field private mImpu:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mIntendedId:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMcc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mUsername:Ljava/lang/String;

.field public mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 28
    sput-boolean v0, Lcom/mediatek/simservs/client/SimServs;->sDebug:Z

    .line 50
    sput v0, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I

    .line 55
    sput-object v1, Lcom/mediatek/simservs/client/SimServs;->sInstance:Lcom/mediatek/simservs/client/SimServs;

    .line 57
    sput-object v1, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    .line 58
    sput-object v1, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 76
    sput-boolean v0, Lcom/mediatek/simservs/client/SimServs;->sIsGbaInternalServerError:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 59
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImsi:Ljava/lang/String;

    .line 61
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mMnc:Ljava/lang/String;

    .line 62
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mMcc:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpu:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mUsername:Ljava/lang/String;

    .line 66
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mPassword:Ljava/lang/String;

    .line 67
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    .line 85
    const-string v1, "mediatek.simserv.debug"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "debugProperty":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/simservs/client/SimServs;->sDebug:Z

    .line 88
    const-string v1, "SimServs"

    const-string v2, "sDebug enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    return-void
.end method

.method private buildRootUri()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .local v2, "xcapRoot":Ljava/lang/StringBuilder;
    const-string v3, "Simservs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xcap.protocol="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "xcap.protocol"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v3, "xcap.protocol"

    const-string v4, "https"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "protocol":Ljava/lang/String;
    iget v3, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://xcap.ims.mnc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mMnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mcc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".pub.3gppnetwork.org"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    :goto_0
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    .line 429
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimServs;->buildDocumentUri()V

    .line 430
    :cond_0
    return-void

    .line 405
    :cond_1
    iget v3, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 406
    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    const-string v4, "3gppnetwork.org"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 407
    invoke-direct {p0}, Lcom/mediatek/simservs/client/SimServs;->getImpiDomain()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "domain":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://xcap."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const/4 v3, 0x0

    const-string v4, ".3gppnetwork.org"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    const-string v4, ".pub"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 411
    const-string v3, ".3gppnetwork.org"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 413
    :cond_2
    const-string v3, ".pub.3gppnetwork.org"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 416
    .end local v0    # "domain":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/simservs/client/SimServs;->getImpiDomain()Ljava/lang/String;

    move-result-object v0

    .line 417
    .restart local v0    # "domain":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://xcap."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getImpiDomain()Ljava/lang/String;
    .locals 4

    .prologue
    .line 378
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    const-string v0, "@"

    .line 381
    .local v0, "delimiter":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "temp":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v1, v2

    .line 384
    .end local v0    # "delimiter":Ljava/lang/String;
    .end local v1    # "temp":[Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/mediatek/simservs/client/SimServs;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sInstance:Lcom/mediatek/simservs/client/SimServs;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/mediatek/simservs/client/SimServs;

    invoke-direct {v0}, Lcom/mediatek/simservs/client/SimServs;-><init>()V

    sput-object v0, Lcom/mediatek/simservs/client/SimServs;->sInstance:Lcom/mediatek/simservs/client/SimServs;

    .line 102
    :cond_0
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->initializeDebugParam()V

    .line 103
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sInstance:Lcom/mediatek/simservs/client/SimServs;

    return-object v0
.end method

.method private static initializeDebugParam()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 355
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v2

    sput-object v2, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 356
    sget-object v2, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->load()V

    .line 357
    sput-object v3, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    .line 358
    sput-object v3, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 360
    sget-object v2, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapRoot()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "xcapRoot":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 364
    sput-object v0, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    .line 367
    :cond_0
    sget-object v2, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapXui()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "xui":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 370
    sput-object v1, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 372
    :cond_1
    return-void
.end method


# virtual methods
.method public buildDocumentUri()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 438
    sget-object v1, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v1}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapDocumentName()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "xcapDocumentName":Ljava/lang/String;
    new-instance v1, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    const-string v2, "simservs.ngn.etsi.org"

    sget-object v3, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .end local v0    # "xcapDocumentName":Ljava/lang/String;
    :goto_0
    invoke-direct {v1, v2, v3, v0}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    .line 442
    const-string v1, "SimServs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "document selector is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    invoke-virtual {v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v1, Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-direct {v1}, Lcom/mediatek/xcap/client/uri/XcapUri;-><init>()V

    iput-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 447
    const-string v1, "SimServs"

    const-string v2, "buildDocumentUri():Create instance for mXcapUri"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    sget-object v2, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/xcap/client/uri/XcapUri;->setXcapRoot(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    invoke-virtual {v1, v2}, Lcom/mediatek/xcap/client/uri/XcapUri;->setDocumentSelector(Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;)Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 450
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-virtual {v1}, Lcom/mediatek/xcap/client/uri/XcapUri;->toURI()Ljava/net/URI;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentUri:Ljava/net/URI;

    .line 451
    return-void

    .line 439
    .restart local v0    # "xcapDocumentName":Ljava/lang/String;
    :cond_0
    const-string v0, "simservs.xml"

    goto :goto_0
.end method

.method public getBarringServiceCapability(Lcom/mediatek/xcap/client/uri/XcapUri;Lorg/apache/http/auth/Credentials;)Lcom/mediatek/simservs/capability/BarringServiceCapability;
    .locals 3
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 971
    new-instance v0, Lcom/mediatek/simservs/capability/BarringServiceCapability;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/mediatek/simservs/capability/BarringServiceCapability;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getBarringServiceCapability(Z)Lcom/mediatek/simservs/capability/BarringServiceCapability;
    .locals 5
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 957
    new-instance v0, Lcom/mediatek/simservs/capability/BarringServiceCapability;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/capability/BarringServiceCapability;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getCommunicationDiversion(Lcom/mediatek/xcap/client/uri/XcapUri;Lorg/apache/http/auth/Credentials;)Lcom/mediatek/simservs/client/CommunicationDiversion;
    .locals 3
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 803
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationDiversion;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/mediatek/simservs/client/CommunicationDiversion;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getCommunicationDiversion(Z)Lcom/mediatek/simservs/client/CommunicationDiversion;
    .locals 5
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 758
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationDiversion;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/CommunicationDiversion;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 761
    .local v0, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 762
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setContext(Landroid/content/Context;)V

    .line 765
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->loadConfiguration()V

    .line 766
    return-object v0
.end method

.method public getCommunicationDiversion(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationDiversion;
    .locals 5
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 779
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationDiversion;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/CommunicationDiversion;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 781
    .local v0, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    if-eqz p2, :cond_0

    .line 782
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V

    .line 785
    :cond_0
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 786
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setContext(Landroid/content/Context;)V

    .line 788
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->loadConfiguration()V

    .line 789
    return-object v0
.end method

.method public getCommunicationWaiting(Lcom/mediatek/xcap/client/uri/XcapUri;Lorg/apache/http/auth/Credentials;)Lcom/mediatek/simservs/client/CommunicationWaiting;
    .locals 3
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 510
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationWaiting;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/mediatek/simservs/client/CommunicationWaiting;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getCommunicationWaiting(Z)Lcom/mediatek/simservs/client/CommunicationWaiting;
    .locals 5
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 465
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationWaiting;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/CommunicationWaiting;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 467
    .local v0, "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setContext(Landroid/content/Context;)V

    .line 471
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationWaiting;->loadConfiguration()V

    .line 472
    return-object v0
.end method

.method public getCommunicationWaiting(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationWaiting;
    .locals 5
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 485
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationWaiting;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/CommunicationWaiting;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 487
    .local v0, "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    if-eqz p2, :cond_0

    .line 488
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setNetwork(Landroid/net/Network;)V

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setContext(Landroid/content/Context;)V

    .line 495
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationWaiting;->loadConfiguration()V

    .line 496
    return-object v0
.end method

.method public getDiversionServiceCapability(Lcom/mediatek/xcap/client/uri/XcapUri;Lorg/apache/http/auth/Credentials;)Lcom/mediatek/simservs/capability/DiversionServiceCapability;
    .locals 3
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 945
    new-instance v0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/mediatek/simservs/capability/DiversionServiceCapability;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getDiversionServiceCapability(Z)Lcom/mediatek/simservs/capability/DiversionServiceCapability;
    .locals 5
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 931
    new-instance v0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/capability/DiversionServiceCapability;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getDocumentUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentUri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingCommunicationBarring(Lcom/mediatek/xcap/client/uri/XcapUri;Lorg/apache/http/auth/Credentials;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .locals 3
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 817
    new-instance v0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getIncomingCommunicationBarring(Z)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .locals 5
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 829
    new-instance v0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 832
    .local v0, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setContext(Landroid/content/Context;)V

    .line 836
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->loadConfiguration()V

    .line 837
    return-object v0
.end method

.method public getIncomingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .locals 5
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 850
    new-instance v0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 852
    .local v0, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    if-eqz p2, :cond_0

    .line 853
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 856
    :cond_0
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 857
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setContext(Landroid/content/Context;)V

    .line 860
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->loadConfiguration()V

    .line 861
    return-object v0
.end method

.method public getIntendedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatingIdentityPresentation(Lcom/mediatek/xcap/client/uri/XcapUri;Lorg/apache/http/auth/Credentials;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    .locals 3
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 611
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getOriginatingIdentityPresentation(Z)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    .locals 5
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 522
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 524
    .local v0, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setContext(Landroid/content/Context;)V

    .line 528
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->loadConfiguration()V

    .line 529
    return-object v0
.end method

.method public getOriginatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    .locals 5
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 542
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 544
    .local v0, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    if-eqz p2, :cond_0

    .line 545
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setNetwork(Landroid/net/Network;)V

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 549
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setContext(Landroid/content/Context;)V

    .line 552
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->loadConfiguration()V

    .line 553
    return-object v0
.end method

.method public getOriginatingIdentityPresentationRestriction(Lcom/mediatek/xcap/client/uri/XcapUri;Lorg/apache/http/auth/Credentials;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .locals 3
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 730
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getOriginatingIdentityPresentationRestriction(Z)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .locals 5
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 637
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 640
    .local v0, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 641
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setContext(Landroid/content/Context;)V

    .line 644
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->loadConfiguration()V

    .line 645
    return-object v0
.end method

.method public getOriginatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .locals 5
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 658
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 661
    .local v0, "oipr":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    if-eqz p2, :cond_0

    .line 662
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setNetwork(Landroid/net/Network;)V

    .line 665
    :cond_0
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 666
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setContext(Landroid/content/Context;)V

    .line 669
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->loadConfiguration()V

    .line 670
    return-object v0
.end method

.method public getOutgoingCommunicationBarring(Lcom/mediatek/xcap/client/uri/XcapUri;Lorg/apache/http/auth/Credentials;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .locals 3
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 875
    new-instance v0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getOutgoingCommunicationBarring(Z)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .locals 5
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 887
    new-instance v0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 890
    .local v0, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 891
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setContext(Landroid/content/Context;)V

    .line 894
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->loadConfiguration()V

    .line 895
    return-object v0
.end method

.method public getOutgoingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .locals 5
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 908
    new-instance v0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 910
    .local v0, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    if-eqz p2, :cond_0

    .line 911
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 914
    :cond_0
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 915
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setContext(Landroid/content/Context;)V

    .line 918
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->loadConfiguration()V

    .line 919
    return-object v0
.end method

.method public getTerminatingIdentityPresentation(Lcom/mediatek/xcap/client/uri/XcapUri;Lorg/apache/http/auth/Credentials;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    .locals 3
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 625
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getTerminatingIdentityPresentation(Z)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    .locals 5
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 565
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 568
    .local v0, "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setContext(Landroid/content/Context;)V

    .line 572
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->loadConfiguration()V

    .line 573
    return-object v0
.end method

.method public getTerminatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    .locals 5
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 586
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 588
    .local v0, "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    if-eqz p2, :cond_0

    .line 589
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setNetwork(Landroid/net/Network;)V

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 593
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setContext(Landroid/content/Context;)V

    .line 596
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->loadConfiguration()V

    .line 597
    return-object v0
.end method

.method public getTerminatingIdentityPresentationRestriction(Lcom/mediatek/xcap/client/uri/XcapUri;Lorg/apache/http/auth/Credentials;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    .locals 3
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 745
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    return-object v0
.end method

.method public getTerminatingIdentityPresentationRestriction(Z)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    .locals 5
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 682
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 686
    .local v0, "tipr":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 687
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setContext(Landroid/content/Context;)V

    .line 690
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->loadConfiguration()V

    .line 691
    return-object v0
.end method

.method public getTerminatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    .locals 5
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 704
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 707
    .local v0, "tipr":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    if-eqz p2, :cond_0

    .line 708
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setNetwork(Landroid/net/Network;)V

    .line 711
    :cond_0
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 712
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setContext(Landroid/content/Context;)V

    .line 715
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->loadConfiguration()V

    .line 716
    return-object v0
.end method

.method public getXcapDebugParam()Lcom/mediatek/xcap/client/XcapDebugParam;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    return-object v0
.end method

.method public getXcapRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getXui()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    .line 237
    const-string v0, "SimServs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContext(): mReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mIntentFilter:Landroid/content/IntentFilter;

    .line 240
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_GBA_INTERNAL_SERVER_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    new-instance v0, Lcom/mediatek/simservs/client/SimServs$1;

    invoke-direct {v0, p0}, Lcom/mediatek/simservs/client/SimServs$1;-><init>(Lcom/mediatek/simservs/client/SimServs;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 251
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 253
    :cond_0
    return-void
.end method

.method public setFallBackAddressType(I)V
    .locals 3
    .param p1, "fall_back_address_type"    # I

    .prologue
    .line 347
    const-string v0, "SimServs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFallBackAddressType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    sput p1, Lcom/mediatek/simservs/client/SimServs;->sFallBackAddressType:I

    .line 349
    return-void
.end method

.method public setGbaCredential(Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .param p1, "credential"    # Lorg/apache/http/auth/Credentials;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    .line 215
    return-void
.end method

.method public setHttpCredential(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 205
    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mCredential:Lorg/apache/http/auth/Credentials;

    .line 206
    return-void
.end method

.method public setIntendedId(Ljava/lang/String;)V
    .locals 0
    .param p1, "intendedId"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setOperator(I)V
    .locals 2
    .param p1, "operator"    # I

    .prologue
    .line 261
    packed-switch p1, :pswitch_data_0

    .line 336
    const-string v0, "xcap.op"

    const-string v1, "00"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 337
    const-string v0, "xcap.protocol"

    const-string v1, "https"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    const-string v0, "xcap.putelcontenttype"

    const-string v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    const-string v0, "xcap.handl409"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    const-string v0, "xcap.completeforwardto"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    const-string v0, "xcap.ns.ss"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    :goto_0
    return-void

    .line 263
    :pswitch_0
    const-string v0, "xcap.op"

    const-string v1, "01"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    const-string v0, "xcap.protocol"

    const-string v1, "http"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    const-string v0, "xcap.putelcontenttype"

    const-string v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    const-string v0, "xcap.handl409"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    const-string v0, "xcap.completeforwardto"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    const-string v0, "xcap.ns.ss"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 271
    :pswitch_1
    const-string v0, "xcap.op"

    const-string v1, "06"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    const-string v0, "xcap.protocol"

    const-string v1, "http"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    const-string v0, "xcap.putelcontenttype"

    const-string v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    const-string v0, "xcap.handl409"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    const-string v0, "xcap.completeforwardto"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    const-string v0, "xcap.ns.ss"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 279
    :pswitch_2
    const-string v0, "xcap.op"

    const-string v1, "07"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    const-string v0, "xcap.protocol"

    const-string v1, "https"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    const-string v0, "xcap.putelcontenttype"

    const-string v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    const-string v0, "xcap.handl409"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    const-string v0, "xcap.completeforwardto"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    const-string v0, "xcap.ns.ss"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 287
    :pswitch_3
    const-string v0, "xcap.op"

    const-string v1, "18"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    const-string v0, "xcap.protocol"

    const-string v1, "http"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    const-string v0, "xcap.putelcontenttype"

    const-string v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    const-string v0, "xcap.handl409"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 291
    const-string v0, "xcap.completeforwardto"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    const-string v0, "xcap.ns.ss"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 295
    :pswitch_4
    const-string v0, "xcap.op"

    const-string v1, "15"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    const-string v0, "xcap.protocol"

    const-string v1, "http"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    const-string v0, "xcap.putelcontenttype"

    const-string v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    const-string v0, "xcap.handl409"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    const-string v0, "xcap.completeforwardto"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    const-string v0, "xcap.ns.ss"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 303
    :pswitch_5
    const-string v0, "xcap.op"

    const-string v1, "05"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    const-string v0, "xcap.protocol"

    const-string v1, "http"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    const-string v0, "xcap.putelcontenttype"

    const-string v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    const-string v0, "xcap.handl409"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    const-string v0, "xcap.completeforwardto"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    const-string v0, "xcap.ns.ss"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 311
    :pswitch_6
    const-string v0, "xcap.op"

    const-string v1, "03"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    const-string v0, "xcap.protocol"

    const-string v1, "http"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 313
    const-string v0, "xcap.putelcontenttype"

    const-string v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    const-string v0, "xcap.handl409"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    const-string v0, "xcap.completeforwardto"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    const-string v0, "xcap.ns.ss"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 319
    :pswitch_7
    const-string v0, "xcap.op"

    const-string v1, "118"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 320
    const-string v0, "xcap.protocol"

    const-string v1, "http"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    const-string v0, "xcap.putelcontenttype"

    const-string v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 322
    const-string v0, "xcap.handl409"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 323
    const-string v0, "xcap.completeforwardto"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    const-string v0, "xcap.ns.ss"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 327
    :pswitch_8
    const-string v0, "xcap.op"

    const-string v1, "19"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    const-string v0, "xcap.protocol"

    const-string v1, "http"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    const-string v0, "xcap.putelcontenttype"

    const-string v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    const-string v0, "xcap.handl409"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    const-string v0, "xcap.completeforwardto"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    const-string v0, "xcap.ns.ss"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public setXcapRoot(Ljava/lang/String;)V
    .locals 2
    .param p1, "xcapRoot"    # Ljava/lang/String;

    .prologue
    .line 121
    sput-object p1, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimServs;->buildDocumentUri()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 126
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    goto :goto_0
.end method

.method public setXcapRootByImpi(Ljava/lang/String;)V
    .locals 2
    .param p1, "impi"    # Ljava/lang/String;

    .prologue
    .line 136
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 137
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    .line 139
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/simservs/client/SimServs;->buildRootUri()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public setXcapRootByMccMnc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 153
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mMcc:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lcom/mediatek/simservs/client/SimServs;->mMnc:Ljava/lang/String;

    .line 156
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/simservs/client/SimServs;->buildRootUri()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public setXui(Ljava/lang/String;)V
    .locals 0
    .param p1, "xui"    # Ljava/lang/String;

    .prologue
    .line 163
    sput-object p1, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setXuiByImpu(Ljava/lang/String;)V
    .locals 1
    .param p1, "impu"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 173
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mImpu:Ljava/lang/String;

    .line 174
    sput-object p1, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setXuiByImsiMccMnc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "mcc"    # Ljava/lang/String;
    .param p3, "mnc"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 185
    iput v3, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 186
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mImsi:Ljava/lang/String;

    .line 187
    iput-object p2, p0, Lcom/mediatek/simservs/client/SimServs;->mMcc:Ljava/lang/String;

    .line 188
    iput-object p3, p0, Lcom/mediatek/simservs/client/SimServs;->mMnc:Ljava/lang/String;

    .line 190
    const-string v0, "sip:%s@ims.mnc%03d.mcc%03d.3gppnetwork.org"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 192
    return-void
.end method
