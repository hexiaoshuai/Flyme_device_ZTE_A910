.class Lcom/android/server/net/NetworkHttpMonitor$5;
.super Landroid/content/BroadcastReceiver;
.source "NetworkHttpMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkHttpMonitor;->registerWifiEvent()V
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
    .line 298
    iput-object p1, p0, Lcom/android/server/net/NetworkHttpMonitor$5;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x3

    .line 301
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 302
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "NetworkHttpMonitor"

    const-string v3, "onReceive: CONNECTIVITY_ACTION"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    if-eqz v0, :cond_0

    .line 305
    const-string v2, "networkInfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 307
    .local v1, "info":Landroid/net/NetworkInfo;
    const-string v2, "NetworkHttpMonitor"

    const-string v3, "onReceive: CONNECTIVITY_ACTION 1"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    iget-object v2, p0, Lcom/android/server/net/NetworkHttpMonitor$5;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    # getter for: Lcom/android/server/net/NetworkHttpMonitor;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2}, Lcom/android/server/net/NetworkHttpMonitor;->access$800(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkHttpMonitor$5;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    # getter for: Lcom/android/server/net/NetworkHttpMonitor;->mPendingPollIntent:Landroid/app/PendingIntent;
    invoke-static {v3}, Lcom/android/server/net/NetworkHttpMonitor;->access$700(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 312
    const-string v2, "NetworkHttpMonitor"

    const-string v3, "onReceive: wifi connected"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v2, p0, Lcom/android/server/net/NetworkHttpMonitor$5;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    # invokes: Lcom/android/server/net/NetworkHttpMonitor;->resetFirewallStatus()V
    invoke-static {v2}, Lcom/android/server/net/NetworkHttpMonitor;->access$400(Lcom/android/server/net/NetworkHttpMonitor;)V

    .line 314
    const-string v2, "NetworkHttpMonitor"

    const-string v3, "onReceive: resetFirewallStatus "

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 315
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 316
    const-string v2, "NetworkHttpMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: wifi disconnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/net/NetworkHttpMonitor;->mWifiCount:I
    invoke-static {}, Lcom/android/server/net/NetworkHttpMonitor;->access$900()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    # operator++ for: Lcom/android/server/net/NetworkHttpMonitor;->mWifiCount:I
    invoke-static {}, Lcom/android/server/net/NetworkHttpMonitor;->access$908()I

    .line 318
    # getter for: Lcom/android/server/net/NetworkHttpMonitor;->mWifiCount:I
    invoke-static {}, Lcom/android/server/net/NetworkHttpMonitor;->access$900()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 319
    iget-object v2, p0, Lcom/android/server/net/NetworkHttpMonitor$5;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    # getter for: Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/net/NetworkHttpMonitor;->access$500(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 320
    const-string v2, "NetworkHttpMonitor"

    const-string v3, "onReceive: removing all previous keepAlive"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v2, p0, Lcom/android/server/net/NetworkHttpMonitor$5;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    # getter for: Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/net/NetworkHttpMonitor;->access$500(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 323
    :cond_2
    const/4 v2, 0x0

    # setter for: Lcom/android/server/net/NetworkHttpMonitor;->mWifiCount:I
    invoke-static {v2}, Lcom/android/server/net/NetworkHttpMonitor;->access$902(I)I

    .line 324
    const-string v2, "NetworkHttpMonitor"

    const-string v3, "onReceive: sending keep alive after 1 minute"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v2, p0, Lcom/android/server/net/NetworkHttpMonitor$5;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    # getter for: Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/net/NetworkHttpMonitor;->access$500(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkHttpMonitor$5;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    # getter for: Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/net/NetworkHttpMonitor;->access$500(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
