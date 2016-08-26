.class Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;
.super Ljava/lang/Object;
.source "AirplaneRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/AirplaneRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DesiredPowerState"
.end annotation


# instance fields
.field private mLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field private mNLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field private mPhoneId:I

.field final synthetic this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;I)V
    .locals 2
    .param p2, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 615
    iput-object p1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mPhoneId:I

    .line 607
    iput-object v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 608
    iput-object v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mNLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 617
    iput p2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mPhoneId:I

    .line 618
    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;Lcom/android/internal/telephony/CommandsInterface$RadioState;)Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;
    .param p1, "x1"    # Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mNLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    return-object p1
.end method

.method static synthetic access$202(Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;Lcom/android/internal/telephony/CommandsInterface$RadioState;)Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;
    .param p1, "x1"    # Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->isLteRadioReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->isNLteRadioReady()Z

    move-result v0

    return v0
.end method

.method private final isLteRadioReady()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 626
    const/4 v2, 0x0

    .line 628
    .local v2, "ready":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 629
    iget v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mPhoneId:I

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .line 636
    .local v1, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eqz v3, :cond_5

    .line 637
    iget-object v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_2

    move v2, v4

    .line 638
    :goto_1
    if-nez v2, :cond_0

    .line 639
    iget-object v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    # getter for: Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPower:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->access$600(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 640
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    .line 652
    :cond_0
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLteRadioAvaliable, ready="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->access$700(Ljava/lang/String;)V

    .line 653
    return v2

    .line 632
    .end local v1    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_1
    iget v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mPhoneId:I

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 634
    .local v0, "mPhone":Lcom/android/internal/telephony/PhoneBase;
    iget-object v3, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .restart local v1    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .end local v0    # "mPhone":Lcom/android/internal/telephony/PhoneBase;
    :cond_2
    move v2, v5

    .line 637
    goto :goto_1

    .line 642
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-nez v3, :cond_4

    move v2, v4

    :goto_3
    goto :goto_2

    :cond_4
    move v2, v5

    goto :goto_3

    .line 646
    :cond_5
    iget-object v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    # getter for: Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPower:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->access$600(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 647
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    goto :goto_2

    .line 649
    :cond_6
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-nez v3, :cond_7

    move v2, v4

    :goto_4
    goto :goto_2

    :cond_7
    move v2, v5

    goto :goto_4
.end method

.method private final isNLteRadioReady()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 662
    const/4 v2, 0x0

    .line 664
    .local v2, "ready":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 665
    iget v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mPhoneId:I

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .line 672
    .local v1, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mNLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eqz v3, :cond_5

    .line 673
    iget-object v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mNLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_2

    move v2, v4

    .line 674
    :goto_1
    if-nez v2, :cond_0

    .line 675
    iget-object v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    # getter for: Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPower:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->access$600(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 676
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    .line 689
    :cond_0
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNLteRadioAvaliable, ready="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->access$700(Ljava/lang/String;)V

    .line 690
    return v2

    .line 668
    .end local v1    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_1
    iget v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mPhoneId:I

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 670
    .local v0, "mPhone":Lcom/android/internal/telephony/PhoneBase;
    iget-object v3, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .restart local v1    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .end local v0    # "mPhone":Lcom/android/internal/telephony/PhoneBase;
    :cond_2
    move v2, v5

    .line 673
    goto :goto_1

    .line 678
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-nez v3, :cond_4

    move v2, v4

    :goto_3
    goto :goto_2

    :cond_4
    move v2, v5

    goto :goto_3

    .line 682
    :cond_5
    iget-object v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    # getter for: Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPower:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->access$600(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 683
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    goto :goto_2

    .line 685
    :cond_6
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-nez v3, :cond_7

    move v2, v4

    :goto_4
    goto :goto_2

    :cond_7
    move v2, v5

    goto :goto_4
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DesiredState [mPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLteState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNLteState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mNLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
