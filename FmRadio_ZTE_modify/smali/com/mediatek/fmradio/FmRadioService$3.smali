.class Lcom/mediatek/fmradio/FmRadioService$3;
.super Ljava/lang/Thread;
.source "FmRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/fmradio/FmRadioService;->startRdsThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/FmRadioService;


# direct methods
.method constructor <init>(Lcom/mediatek/fmradio/FmRadioService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    .line 1782
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1784
    const-string v6, "FmRx/Service"

    const-string v7, ">>> RDS Thread run()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    :goto_0
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsRdsThreadExit:Z
    invoke-static {v6}, Lcom/mediatek/fmradio/FmRadioService;->access$51(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1854
    const-string v6, "FmRx/Service"

    const-string v7, "<<< RDS Thread run()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    return-void

    .line 1790
    :cond_0
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->readRds()S

    move-result v5

    .line 1791
    .local v5, "iRdsEvents":I
    if-eqz v5, :cond_1

    .line 1792
    const-string v6, "FmRx/Service"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "FmRadioNative.readrds events: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1793
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1792
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    :cond_1
    const/16 v6, 0x8

    and-int/lit8 v7, v5, 0x8

    if-ne v6, v7, :cond_2

    .line 1797
    const-string v6, "FmRx/Service"

    const-string v7, "RDS_EVENT_PROGRAMNAME"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->getPs()[B

    move-result-object v1

    .line 1799
    .local v1, "bytePS":[B
    if-eqz v1, :cond_2

    .line 1800
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/fmradio/FmRadioService;->access$52(Lcom/mediatek/fmradio/FmRadioService;Ljava/lang/String;)V

    .line 1804
    .end local v1    # "bytePS":[B
    :cond_2
    const/16 v6, 0x40

    and-int/lit8 v7, v5, 0x40

    if-ne v6, v7, :cond_3

    .line 1805
    const-string v6, "FmRx/Service"

    const-string v7, "RDS_EVENT_LAST_RADIOTEXT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->getLrText()[B

    move-result-object v0

    .line 1807
    .local v0, "byteLRText":[B
    if-eqz v0, :cond_3

    .line 1808
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/fmradio/FmRadioService;->access$53(Lcom/mediatek/fmradio/FmRadioService;Ljava/lang/String;)V

    .line 1812
    .end local v0    # "byteLRText":[B
    :cond_3
    const/16 v6, 0x80

    and-int/lit16 v7, v5, 0x80

    if-ne v6, v7, :cond_5

    .line 1813
    const-string v6, "FmRx/Service"

    const-string v7, "RDS_EVENT_AF"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsScanning:Z
    invoke-static {v6}, Lcom/mediatek/fmradio/FmRadioService;->access$25(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsSeeking:Z
    invoke-static {v6}, Lcom/mediatek/fmradio/FmRadioService;->access$54(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1818
    :cond_4
    const-string v6, "FmRx/Service"

    .line 1819
    const-string v7, "RDSThread. seek or scan going, no need to tune here"

    .line 1818
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    :cond_5
    :goto_1
    const/16 v3, 0x1f4

    .line 1849
    .local v3, "hundredMillisecond":I
    const-wide/16 v6, 0x1f4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1850
    :catch_0
    move-exception v2

    .line 1851
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1820
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "hundredMillisecond":I
    :cond_6
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z
    invoke-static {v6}, Lcom/mediatek/fmradio/FmRadioService;->access$3(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1821
    const-string v6, "FmRx/Service"

    .line 1822
    const-string v7, "RDSThread. fm is power down, do nothing."

    .line 1821
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1824
    :cond_7
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->activeAf()S

    move-result v4

    .line 1825
    .local v4, "iFreq":I
    invoke-static {v4}, Lcom/mediatek/fmradio/FmRadioUtils;->isValidStation(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1828
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I
    invoke-static {v6}, Lcom/mediatek/fmradio/FmRadioService;->access$22(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v6

    if-ne v6, v4, :cond_8

    .line 1829
    const-string v6, "FmRx/Service"

    .line 1830
    const-string v7, "RDSThread. the new freq is the same as current."

    .line 1829
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1832
    :cond_8
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const-string v7, ""

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/fmradio/FmRadioService;->access$52(Lcom/mediatek/fmradio/FmRadioService;Ljava/lang/String;)V

    .line 1833
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const-string v7, ""

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/fmradio/FmRadioService;->access$53(Lcom/mediatek/fmradio/FmRadioService;Ljava/lang/String;)V

    .line 1834
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsScanning:Z
    invoke-static {v6}, Lcom/mediatek/fmradio/FmRadioService;->access$25(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsSeeking:Z
    invoke-static {v6}, Lcom/mediatek/fmradio/FmRadioService;->access$54(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1835
    const-string v6, "FmRx/Service"

    .line 1836
    const-string v7, "RDSThread. seek or scan not going,need to tune here"

    .line 1835
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    .line 1839
    invoke-static {v4}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v7

    .line 1838
    invoke-virtual {v6, v7}, Lcom/mediatek/fmradio/FmRadioService;->tuneStationAsync(F)V

    goto :goto_1
.end method
