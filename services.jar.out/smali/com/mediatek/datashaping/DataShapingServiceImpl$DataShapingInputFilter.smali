.class Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;
.super Landroid/view/InputFilter;
.source "DataShapingServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/datashaping/DataShapingServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataShapingInputFilter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    .line 210
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 211
    iput-object p2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;->mContext:Landroid/content/Context;

    .line 212
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 218
    instance-of v1, p1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 219
    check-cast v0, Landroid/view/KeyEvent;

    .line 220
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 222
    :cond_0
    const-string v1, "DataShapingService"

    const-string v2, "Received event ACTION_UP or ACTION_DOWN"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;
    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$000(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;
    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$000(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->sendEmptyMessage(I)Z

    .line 228
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 229
    return-void
.end method

.method public onUninstalled()V
    .locals 3

    .prologue
    .line 234
    const-string v0, "DataShapingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUninstalled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;
    invoke-static {v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$300(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$400(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    const/4 v2, 0x0

    # setter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mRegisterInput:Z
    invoke-static {v0, v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$502(Lcom/mediatek/datashaping/DataShapingServiceImpl;Z)Z

    .line 237
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;
    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$300(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v0

    instance-of v0, v0, Lcom/mediatek/datashaping/GateCloseState;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    # getter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mGateOpenState:Lcom/mediatek/datashaping/DataShapingState;
    invoke-static {v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$600(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v2

    # setter for: Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;
    invoke-static {v0, v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->access$302(Lcom/mediatek/datashaping/DataShapingServiceImpl;Lcom/mediatek/datashaping/DataShapingState;)Lcom/mediatek/datashaping/DataShapingState;

    .line 239
    const-string v0, "DataShapingService"

    const-string v2, "onUninstalled : Change to Gate Open"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    monitor-exit v1

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
