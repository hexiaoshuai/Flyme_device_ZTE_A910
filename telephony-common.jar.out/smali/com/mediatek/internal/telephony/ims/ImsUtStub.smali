.class public Lcom/mediatek/internal/telephony/ims/ImsUtStub;
.super Lcom/android/ims/internal/IImsUt$Stub;
.source "ImsUtStub.java"


# static fields
.field private static final DBG:Z = true

.field static final HTTP_ERROR_CODE_403:I = 0x193

.field static final HTTP_ERROR_CODE_404:I = 0x194

.field static final HTTP_ERROR_CODE_409:I = 0x199

.field static final IMS_UT_EVENT_GET_CB:I = 0x3e8

.field static final IMS_UT_EVENT_GET_CF:I = 0x3e9

.field static final IMS_UT_EVENT_GET_CF_TIME_SLOT:I = 0x3f6

.field static final IMS_UT_EVENT_GET_CLIP:I = 0x3ec

.field static final IMS_UT_EVENT_GET_CLIR:I = 0x3eb

.field static final IMS_UT_EVENT_GET_COLP:I = 0x3ee

.field static final IMS_UT_EVENT_GET_COLR:I = 0x3ed

.field static final IMS_UT_EVENT_GET_CW:I = 0x3ea

.field static final IMS_UT_EVENT_SET_CB:I = 0x3ef

.field static final IMS_UT_EVENT_SET_CF:I = 0x3f0

.field static final IMS_UT_EVENT_SET_CF_TIME_SLOT:I = 0x3f7

.field static final IMS_UT_EVENT_SET_CLIP:I = 0x3f3

.field static final IMS_UT_EVENT_SET_CLIR:I = 0x3f2

.field static final IMS_UT_EVENT_SET_COLP:I = 0x3f5

.field static final IMS_UT_EVENT_SET_COLR:I = 0x3f4

.field static final IMS_UT_EVENT_SET_CW:I = 0x3f1

.field private static final TAG:Ljava/lang/String; = "ImsUtService"

.field private static final mLock:Ljava/lang/Object;

.field private static sRequestId:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/ims/internal/IImsUtListener;

.field private mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    .line 82
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/ims/internal/IImsUt$Stub;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;

    .line 122
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;-><init>(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    .line 117
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mContext:Landroid/content/Context;

    .line 118
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->getInstance()Lcom/android/internal/telephony/MMTelSSTransport;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    .line 119
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->registerUtService(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/ims/ImsUtStub;Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsUtStub;
    .param p1, "x1"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/ims/ImsUtStub;I)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsUtStub;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getConditionFromCFReason(I)I

    move-result v0

    return v0
.end method

.method private getCFActionFromAction(I)I
    .locals 1
    .param p1, "cfAction"    # I

    .prologue
    const/4 v0, 0x0

    .line 636
    packed-switch p1, :pswitch_data_0

    .line 649
    :goto_0
    :pswitch_0
    return v0

    .line 640
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 642
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 644
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 636
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getCFReasonFromCondition(I)I
    .locals 1
    .param p1, "condition"    # I

    .prologue
    const/4 v0, 0x3

    .line 653
    packed-switch p1, :pswitch_data_0

    .line 672
    :goto_0
    :pswitch_0
    return v0

    .line 655
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 657
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 659
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 663
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 665
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 667
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getConditionFromCFReason(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 676
    packed-switch p1, :pswitch_data_0

    .line 695
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 678
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 680
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 682
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 684
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 686
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 688
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 690
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getFacilityFromCBType(I)Ljava/lang/String;
    .locals 1
    .param p1, "cbType"    # I

    .prologue
    .line 607
    packed-switch p1, :pswitch_data_0

    .line 631
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 609
    :pswitch_0
    const-string v0, "AI"

    goto :goto_0

    .line 611
    :pswitch_1
    const-string v0, "AO"

    goto :goto_0

    .line 613
    :pswitch_2
    const-string v0, "OI"

    goto :goto_0

    .line 615
    :pswitch_3
    const-string v0, "OX"

    goto :goto_0

    .line 617
    :pswitch_4
    const-string v0, "IR"

    goto :goto_0

    .line 620
    :pswitch_5
    const-string v0, "ACR"

    goto :goto_0

    .line 622
    :pswitch_6
    const-string v0, "AB"

    goto :goto_0

    .line 624
    :pswitch_7
    const-string v0, "AG"

    goto :goto_0

    .line 626
    :pswitch_8
    const-string v0, "AC"

    goto :goto_0

    .line 629
    :pswitch_9
    const-string v0, "BS_MT"

    goto :goto_0

    .line 607
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;
    .locals 2
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    .line 699
    new-instance v0, Lcom/android/ims/ImsCallForwardInfo;

    invoke-direct {v0}, Lcom/android/ims/ImsCallForwardInfo;-><init>()V

    .line 700
    .local v0, "imsCfInfo":Lcom/android/ims/ImsCallForwardInfo;
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getConditionFromCFReason(I)I

    move-result v1

    iput v1, v0, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    .line 701
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iput v1, v0, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    .line 703
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iput v1, v0, Lcom/android/ims/ImsCallForwardInfo;->mToA:I

    .line 704
    iget-object v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 705
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iput v1, v0, Lcom/android/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 706
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 604
    return-void
.end method

.method public queryCLIP()I
    .locals 6

    .prologue
    .line 806
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 807
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 808
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 809
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCLIP(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ec

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 815
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCLIP(Landroid/os/Message;)V

    .line 817
    return v1

    .line 809
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryCLIR()I
    .locals 6

    .prologue
    .line 785
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 786
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 787
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 788
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCLIR(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3eb

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 794
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->getCLIR(Landroid/os/Message;)V

    .line 796
    return v1

    .line 788
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryCOLP()I
    .locals 6

    .prologue
    .line 848
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 849
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 850
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 851
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCOLP(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ee

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 857
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->getCOLP(Landroid/os/Message;)V

    .line 859
    return v1

    .line 851
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryCOLR()I
    .locals 6

    .prologue
    .line 827
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 828
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 829
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 830
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCOLR(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ed

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 836
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->getCOLR(Landroid/os/Message;)V

    .line 838
    return v1

    .line 830
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryCallBarring(I)I
    .locals 7
    .param p1, "cbType"    # I

    .prologue
    const/4 v6, 0x0

    .line 718
    sget-object v4, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 719
    :try_start_0
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 720
    .local v2, "requestId":I
    sget v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 721
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    const-string v3, "ImsUtService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryCallBarring(): requestId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "facility":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 728
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v6, v4, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 730
    return v2

    .line 721
    .end local v0    # "facility":Ljava/lang/String;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 6
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 742
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 743
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 744
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 745
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCallForward(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 751
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getCFReasonFromCondition(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, p2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 754
    return v1

    .line 745
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryCallForwardInTimeSlot(I)I
    .locals 6
    .param p1, "condition"    # I

    .prologue
    .line 1087
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1088
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 1089
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 1090
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCallForwardInTimeSlot(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1097
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getCFReasonFromCondition(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V

    .line 1102
    return v1

    .line 1090
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryCallWaiting()I
    .locals 6

    .prologue
    .line 764
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 765
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 766
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 767
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCallWaiting(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 773
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallWaiting(ILandroid/os/Message;)V

    .line 775
    return v1

    .line 767
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/IImsUtListener;

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;

    .line 1050
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 3
    .param p1, "ssInfo"    # Landroid/os/Bundle;

    .prologue
    .line 870
    sget-object v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 871
    :try_start_0
    sget v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 872
    .local v0, "requestId":I
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 873
    monitor-exit v2

    .line 875
    return v0

    .line 873
    .end local v0    # "requestId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCLIP(Z)I
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 984
    sget-object v4, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 985
    :try_start_0
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 986
    .local v2, "requestId":I
    sget v5, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 987
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    const-string v4, "ImsUtService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCLIP(): requestId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 993
    .local v0, "enableClip":I
    :goto_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3f3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 994
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->setCLIP(ILandroid/os/Message;)V

    .line 996
    return v2

    .line 987
    .end local v0    # "enableClip":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v2    # "requestId":I
    :cond_0
    move v0, v3

    .line 992
    goto :goto_0
.end method

.method public updateCLIR(I)I
    .locals 6
    .param p1, "clirMode"    # I

    .prologue
    .line 962
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 963
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 964
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 965
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCLIR(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 971
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->setCLIR(ILandroid/os/Message;)V

    .line 973
    return v1

    .line 965
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateCOLP(Z)I
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1029
    sget-object v4, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1030
    :try_start_0
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 1031
    .local v2, "requestId":I
    sget v5, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 1032
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    const-string v4, "ImsUtService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCOLP(): requestId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1038
    .local v0, "enableColp":I
    :goto_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3f5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1039
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->setCOLP(ILandroid/os/Message;)V

    .line 1041
    return v2

    .line 1032
    .end local v0    # "enableColp":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v2    # "requestId":I
    :cond_0
    move v0, v3

    .line 1037
    goto :goto_0
.end method

.method public updateCOLR(I)I
    .locals 6
    .param p1, "presentation"    # I

    .prologue
    .line 1007
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1008
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 1009
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 1010
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCOLR(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1016
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->setCOLR(ILandroid/os/Message;)V

    .line 1018
    return v1

    .line 1010
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateCallBarring(IZ[Ljava/lang/String;)I
    .locals 7
    .param p1, "cbType"    # I
    .param p2, "enable"    # Z
    .param p3, "barrList"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 889
    sget-object v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 890
    :try_start_0
    sget v6, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 891
    .local v6, "requestId":I
    sget v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 892
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    const-string v0, "ImsUtService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallBarring(): requestId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v1

    .line 898
    .local v1, "facility":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ef

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v6, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 899
    .local v5, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v4, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MMTelSSTransport;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 902
    return v6

    .line 892
    .end local v1    # "facility":Ljava/lang/String;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "requestId":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateCallForward(IILjava/lang/String;I)I
    .locals 8
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "timeSeconds"    # I

    .prologue
    .line 916
    sget-object v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 917
    :try_start_0
    sget v7, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 918
    .local v7, "requestId":I
    sget v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 919
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    const-string v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallForward(): requestId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 925
    .local v6, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getCFActionFromAction(I)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getCFReasonFromCondition(I)I

    move-result v2

    const/4 v3, 0x1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 929
    return v7

    .line 919
    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "requestId":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateCallForwardInTimeSlot(IILjava/lang/String;I[J)I
    .locals 9
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "timeSeconds"    # I
    .param p5, "timeSlot"    # [J

    .prologue
    .line 1112
    sget-object v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1113
    :try_start_0
    sget v8, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 1114
    .local v8, "requestId":I
    sget v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 1115
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    const-string v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallForwardInTimeSlot(): requestId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1121
    .local v7, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getCFActionFromAction(I)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getCFReasonFromCondition(I)I

    move-result v2

    const/4 v3, 0x1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V

    .line 1126
    return v8

    .line 1115
    .end local v7    # "msg":Landroid/os/Message;
    .end local v8    # "requestId":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateCallWaiting(Z)I
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 940
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 941
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 942
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 943
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallWaiting(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 949
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallWaiting(ZILandroid/os/Message;)V

    .line 951
    return v1

    .line 943
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;
    .locals 5
    .param p1, "xcapEx"    # Lcom/mediatek/simservs/xcap/XcapException;

    .prologue
    const/4 v4, 0x0

    .line 1060
    if-eqz p1, :cond_0

    .line 1061
    const-string v1, "ImsUtService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xcapExceptionToImsReasonInfo(): XcapException: code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/simservs/xcap/XcapException;->getExceptionCodeCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", http error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isConnectionError = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_1

    .line 1068
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    const/16 v1, 0x33e

    invoke-direct {v0, v1, v4}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 1077
    .local v0, "reason":Lcom/android/ims/ImsReasonInfo;
    :goto_0
    return-object v0

    .line 1069
    .end local v0    # "reason":Lcom/android/ims/ImsReasonInfo;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_2

    .line 1070
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    const/16 v1, 0x340

    invoke-direct {v0, v1, v4}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .restart local v0    # "reason":Lcom/android/ims/ImsReasonInfo;
    goto :goto_0

    .line 1071
    .end local v0    # "reason":Lcom/android/ims/ImsReasonInfo;
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v1

    const/16 v2, 0x199

    if-ne v1, v2, :cond_3

    .line 1072
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    const/16 v1, 0x341

    invoke-direct {v0, v1, v4}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .restart local v0    # "reason":Lcom/android/ims/ImsReasonInfo;
    goto :goto_0

    .line 1074
    .end local v0    # "reason":Lcom/android/ims/ImsReasonInfo;
    :cond_3
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    const/16 v1, 0x324

    invoke-direct {v0, v1, v4}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .restart local v0    # "reason":Lcom/android/ims/ImsReasonInfo;
    goto :goto_0
.end method
