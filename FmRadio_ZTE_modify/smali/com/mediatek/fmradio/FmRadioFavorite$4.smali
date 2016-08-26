.class Lcom/mediatek/fmradio/FmRadioFavorite$4;
.super Ljava/lang/Object;
.source "FmRadioFavorite.java"

# interfaces
.implements Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/fmradio/FmRadioFavorite;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/FmRadioFavorite;


# direct methods
.method constructor <init>(Lcom/mediatek/fmradio/FmRadioFavorite;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioFavorite$4;->this$0:Lcom/mediatek/fmradio/FmRadioFavorite;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mediatek/fmradio/FmRadioFavorite$4;)Lcom/mediatek/fmradio/FmRadioFavorite;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite$4;->this$0:Lcom/mediatek/fmradio/FmRadioFavorite;

    return-object v0
.end method


# virtual methods
.method public onExit()V
    .locals 3

    .prologue
    .line 221
    const-string v1, "FmRx/Favorite"

    const-string v2, "onExit()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 223
    .local v0, "mainHandler":Landroid/os/Handler;
    new-instance v1, Lcom/mediatek/fmradio/FmRadioFavorite$4$1;

    invoke-direct {v1, p0}, Lcom/mediatek/fmradio/FmRadioFavorite$4$1;-><init>(Lcom/mediatek/fmradio/FmRadioFavorite$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    return-void
.end method

.method public onScanFinished(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 253
    const-string v1, "key_is_scan"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 257
    .local v0, "isScan":Z
    if-nez v0, :cond_0

    .line 258
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite$4;->this$0:Lcom/mediatek/fmradio/FmRadioFavorite;

    # invokes: Lcom/mediatek/fmradio/FmRadioFavorite;->dismissSearchDialog()V
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioFavorite;->access$5(Lcom/mediatek/fmradio/FmRadioFavorite;)V

    .line 259
    const-string v1, "FmRx/Favorite"

    const-string v2, "mHandler.scan canceled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite$4;->this$0:Lcom/mediatek/fmradio/FmRadioFavorite;

    # invokes: Lcom/mediatek/fmradio/FmRadioFavorite;->dismissSearchDialog()V
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioFavorite;->access$5(Lcom/mediatek/fmradio/FmRadioFavorite;)V

    goto :goto_0
.end method

.method public onSwitchAnntenna(Z)V
    .locals 3
    .param p1, "isSwitch"    # Z

    .prologue
    .line 240
    const-string v0, "FmRx/Favorite"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swtich antenna: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-nez p1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite$4;->this$0:Lcom/mediatek/fmradio/FmRadioFavorite;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRadioFavorite;->finish()V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite$4;->this$0:Lcom/mediatek/fmradio/FmRadioFavorite;

    # invokes: Lcom/mediatek/fmradio/FmRadioFavorite;->dismissNoAntennaDialog()Z
    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioFavorite;->access$4(Lcom/mediatek/fmradio/FmRadioFavorite;)Z

    goto :goto_0
.end method

.method public onTuneFinished()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method
