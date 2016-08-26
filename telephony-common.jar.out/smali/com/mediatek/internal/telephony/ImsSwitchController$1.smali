.class Lcom/mediatek/internal/telephony/ImsSwitchController$1;
.super Ljava/lang/Object;
.source "ImsSwitchController.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$WifiOffListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/ImsSwitchController;->registerEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWifiOff(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 206
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # setter for: Lcom/mediatek/internal/telephony/ImsSwitchController;->mReason:I
    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$302(Lcom/mediatek/internal/telephony/ImsSwitchController;I)I

    .line 207
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const/4 v2, 0x1

    # setter for: Lcom/mediatek/internal/telephony/ImsSwitchController;->mNeedTurnOffWifi:Z
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$402(Lcom/mediatek/internal/telephony/ImsSwitchController;Z)Z

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWifiOff reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$100(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->isImsDeregisterRequired()Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$500(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # getter for: Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$000(Lcom/mediatek/internal/telephony/ImsSwitchController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 213
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # getter for: Lcom/mediatek/internal/telephony/ImsSwitchController;->mReason:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$300(Lcom/mediatek/internal/telephony/ImsSwitchController;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiDisabled(I)Z

    .line 214
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const/4 v2, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ImsSwitchController;->mNeedTurnOffWifi:Z
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$402(Lcom/mediatek/internal/telephony/ImsSwitchController;Z)Z

    .line 216
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method
