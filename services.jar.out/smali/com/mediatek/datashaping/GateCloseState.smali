.class public Lcom/mediatek/datashaping/GateCloseState;
.super Lcom/mediatek/datashaping/DataShapingState;
.source "GateCloseState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GateCloseState"


# direct methods
.method public constructor <init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/content/Context;)V
    .locals 0
    .param p1, "dataShapingServiceImpl"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/mediatek/datashaping/DataShapingState;-><init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method private cancelCloseTimer()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingManager:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->cancelCloseExpiredAlarm()V

    .line 113
    return-void
.end method

.method private turnStateFromCloseToOpen()V
    .locals 3

    .prologue
    .line 101
    const-string v0, "GateCloseState"

    const-string v1, "[turnStateFromCloseToOpen]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    const/4 v1, 0x1

    const v2, 0x927c0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteUplinkDataTransfer(ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingManager:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->setCurrentState(I)V

    .line 108
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->cancelCloseTimer()V

    .line 109
    return-void

    .line 106
    :cond_0
    const-string v0, "GateCloseState"

    const-string v1, "[turnStateFromCloseToOpen] fail!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private turnStateFromCloseToOpenLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 89
    const-string v0, "GateCloseState"

    const-string v1, "[turnStateFromCloseToOpenLocked]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    const v1, 0x927c0

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteUplinkDataTransfer(ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingManager:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-virtual {v0, v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->setCurrentState(I)V

    .line 97
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->cancelCloseTimer()V

    .line 98
    return-void

    .line 95
    :cond_0
    const-string v0, "GateCloseState"

    const-string v1, "[turnStateFromCloseToOpenLocked] fail!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onAlarmManagerTrigger()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpen()V

    .line 39
    return-void
.end method

.method public onBTStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isBTStateOn(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpenLocked()V

    .line 86
    :cond_0
    return-void
.end method

.method public onCloseTimeExpired()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpen()V

    .line 44
    return-void
.end method

.method public onLteAccessStratumStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isLteAccessStratumConnected(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpen()V

    .line 24
    :cond_0
    return-void
.end method

.method public onMediaButtonTrigger()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "GateCloseState"

    const-string v1, "[onMediaButtonTrigger]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpen()V

    .line 32
    return-void
.end method

.method public onNetworkTypeChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isNetworkTypeLte(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpenLocked()V

    .line 51
    :cond_0
    return-void
.end method

.method public onScreenStateChanged(Z)V
    .locals 0
    .param p1, "isOn"    # Z

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpenLocked()V

    .line 65
    :cond_0
    return-void
.end method

.method public onSharedDefaultApnStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isSharedDefaultApnEstablished(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpenLocked()V

    .line 58
    :cond_0
    return-void
.end method

.method public onUsbConnectionChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isUsbConnected(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpenLocked()V

    .line 79
    :cond_0
    return-void
.end method

.method public onWifiTetherStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isWifiTetheringEnabled(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpenLocked()V

    .line 72
    :cond_0
    return-void
.end method
