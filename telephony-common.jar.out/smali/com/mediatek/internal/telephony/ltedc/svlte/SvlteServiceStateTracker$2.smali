.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "SvlteServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)V
    .locals 0

    .prologue
    .line 763
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$2;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 766
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$2;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    const-string v2, "receive ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 767
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$2;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    const-string v2, "persist.radio.simswitch"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCapabilityPhoneId:I
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->access$102(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;I)I

    .line 769
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$2;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCapabilityPhoneId:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 771
    .local v0, "anotherLteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$2;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mMainLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->access$002(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/PhoneBase;

    .line 773
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$2;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capability change, mCapabilityPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$2;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCapabilityPhoneId:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 775
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$2;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mAnotherSlotId:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$2;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 779
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$2;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    const/4 v2, 0x1

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNeedMonitorRadioChange:Z
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->access$302(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;Z)Z

    .line 780
    return-void
.end method
