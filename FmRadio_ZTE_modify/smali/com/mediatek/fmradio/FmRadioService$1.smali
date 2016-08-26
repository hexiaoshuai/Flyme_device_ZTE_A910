.class Lcom/mediatek/fmradio/FmRadioService$1;
.super Ljava/lang/Object;
.source "FmRadioService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/fmradio/FmRadioService;
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
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioService$1;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    .line 2222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2237
    const/16 v3, 0x64

    if-ne v3, p2, :cond_2

    .line 2238
    const-string v3, "FmRx/Service"

    const-string v4, "onError: MEDIA_SERVER_DIED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService$1;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioService;->access$0(Lcom/mediatek/fmradio/FmRadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2240
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService$1;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioService;->access$0(Lcom/mediatek/fmradio/FmRadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 2241
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService$1;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/mediatek/fmradio/FmRadioService;->access$1(Lcom/mediatek/fmradio/FmRadioService;Landroid/media/MediaPlayer;)V

    .line 2243
    :cond_0
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService$1;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v3, v4}, Lcom/mediatek/fmradio/FmRadioService;->access$1(Lcom/mediatek/fmradio/FmRadioService;Landroid/media/MediaPlayer;)V

    .line 2244
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioUtils;->isFmSuspendSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2245
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService$1;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioService;->access$0(Lcom/mediatek/fmradio/FmRadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioService$1;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v3, v4, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 2248
    :cond_1
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService$1;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioService;->access$0(Lcom/mediatek/fmradio/FmRadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioService$1;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v4}, Lcom/mediatek/fmradio/FmRadioService;->access$2(Lcom/mediatek/fmradio/FmRadioService;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 2250
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService$1;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioService;->access$0(Lcom/mediatek/fmradio/FmRadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    .line 2251
    const-string v4, "THIRDPARTY://MEDIAPLAYER_PLAYERTYPE_FM"

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 2252
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService$1;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioService;->access$0(Lcom/mediatek/fmradio/FmRadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2253
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService$1;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioService;->access$3(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2255
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService$1;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioService$1;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed:Z
    invoke-static {v4}, Lcom/mediatek/fmradio/FmRadioService;->access$4(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService;->setSpeakerPhoneOn(Z)V

    .line 2256
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService$1;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioService;->access$0(Lcom/mediatek/fmradio/FmRadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 2257
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioUtils;->isFmSuspendSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2258
    const-string v3, "FmRx/Service"

    const-string v4, "support FM suspend"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService$1;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioService;->access$0(Lcom/mediatek/fmradio/FmRadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->startWithoutWakelock()V

    :cond_2
    :goto_0
    move v1, v2

    .line 2276
    :goto_1
    return v1

    .line 2261
    :cond_3
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService$1;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioService;->access$0(Lcom/mediatek/fmradio/FmRadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 2264
    :catch_0
    move-exception v0

    .line 2265
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setDataSource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2267
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 2268
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setDataSource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2270
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 2271
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setDataSource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
