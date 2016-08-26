.class Lcom/android/server/net/NetworkHttpMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "NetworkHttpMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkHttpMonitor;->registerForRoutingUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkHttpMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkHttpMonitor;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/server/net/NetworkHttpMonitor$3;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x3

    .line 259
    const-string v0, "NetworkHttpMonitor"

    const-string v1, "onReceive: browser access"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v0, "NetworkHttpMonitor"

    const-string v1, "onReceive: sending keep alive to check if balance is updated"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/server/net/NetworkHttpMonitor$3;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    # getter for: Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/net/NetworkHttpMonitor;->access$500(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const-string v0, "NetworkHttpMonitor"

    const-string v1, "onReceive: removing all previous keepAlive"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/android/server/net/NetworkHttpMonitor$3;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    # getter for: Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/net/NetworkHttpMonitor;->access$500(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkHttpMonitor$3;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    # getter for: Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/net/NetworkHttpMonitor;->access$500(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 269
    return-void
.end method
