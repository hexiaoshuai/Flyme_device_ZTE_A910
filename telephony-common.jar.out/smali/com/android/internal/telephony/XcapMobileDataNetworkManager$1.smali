.class Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "XcapMobileDataNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->newRequest(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 174
    const-string v0, "XcapMobileDataNetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkCallbackListener.onAvailable: network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    # setter for: Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;
    invoke-static {v0, p1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->access$002(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;Landroid/net/Network;)Landroid/net/Network;

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 178
    monitor-exit v1

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 184
    const-string v0, "XcapMobileDataNetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkCallbackListener.onLost: network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    # invokes: Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V
    invoke-static {v0, p0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->access$100(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    # getter for: Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-static {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->access$200(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    # invokes: Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->resetLocked()V
    invoke-static {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->access$300(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 191
    monitor-exit v1

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onUnavailable()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 197
    const-string v0, "XcapMobileDataNetworkManager"

    const-string v1, "NetworkCallbackListener.onUnavailable"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    # invokes: Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V
    invoke-static {v0, p0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->access$100(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    # getter for: Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-static {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->access$200(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    # invokes: Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->resetLocked()V
    invoke-static {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->access$300(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 204
    monitor-exit v1

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
