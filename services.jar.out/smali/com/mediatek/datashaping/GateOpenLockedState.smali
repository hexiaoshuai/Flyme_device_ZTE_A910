.class public Lcom/mediatek/datashaping/GateOpenLockedState;
.super Lcom/mediatek/datashaping/DataShapingState;
.source "GateOpenLockedState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GateOpenLockedState"


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

.method private setStateFromLockedToOpen()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenLockedState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0}, Lcom/mediatek/datashaping/DataShapingUtils;->canTurnFromLockedToOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenLockedState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteAccessStratumReport(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenLockedState;->mDataShapingManager:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->setCurrentState(I)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string v0, "GateOpenLockedState"

    const-string v1, "Still stay in Open Locked state!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBTStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenLockedState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isBTStateOn(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenLockedState;->setStateFromLockedToOpen()V

    .line 55
    :cond_0
    return-void
.end method

.method public onNetworkTypeChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenLockedState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isNetworkTypeLte(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenLockedState;->setStateFromLockedToOpen()V

    .line 20
    :cond_0
    return-void
.end method

.method public onScreenStateChanged(Z)V
    .locals 0
    .param p1, "isOn"    # Z

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenLockedState;->setStateFromLockedToOpen()V

    .line 34
    :cond_0
    return-void
.end method

.method public onSharedDefaultApnStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenLockedState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isSharedDefaultApnEstablished(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenLockedState;->setStateFromLockedToOpen()V

    .line 27
    :cond_0
    return-void
.end method

.method public onUsbConnectionChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenLockedState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isUsbConnected(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenLockedState;->setStateFromLockedToOpen()V

    .line 48
    :cond_0
    return-void
.end method

.method public onWifiTetherStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenLockedState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isWifiTetheringEnabled(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenLockedState;->setStateFromLockedToOpen()V

    .line 41
    :cond_0
    return-void
.end method
