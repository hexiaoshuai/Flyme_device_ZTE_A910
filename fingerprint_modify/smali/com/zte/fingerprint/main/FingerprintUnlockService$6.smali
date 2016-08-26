.class Lcom/zte/fingerprint/main/FingerprintUnlockService$6;
.super Ljava/lang/Object;
.source "FingerprintUnlockService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/main/FingerprintUnlockService;->onInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$6;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 660
    :try_start_0
    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$6;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->UpLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$16(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 661
    :try_start_1
    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$6;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$18(Lcom/zte/fingerprint/main/FingerprintUnlockService;Z)V

    .line 662
    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$6;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$3(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "finger down"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$6;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->UpLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$16(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 664
    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$6;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->down:Z
    invoke-static {v2}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$19(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 665
    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$6;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->getActiveCallback()Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v2}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$17(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v0

    .line 666
    .local v0, "cb":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    if-eqz v0, :cond_0

    .line 667
    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$6;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$3(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "finger down pkg = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$6;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    iget v6, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->uid:I

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->getPackageName(I)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$1(Lcom/zte/fingerprint/main/FingerprintUnlockService;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v2, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/android/fingerprints/keyguard/IFingerActionCallback;->onFingerDown(I)V

    .line 660
    .end local v0    # "cb":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    :cond_0
    monitor-exit v3

    .line 679
    :goto_0
    return-void

    .line 660
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 672
    :catch_0
    move-exception v1

    .line 673
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 674
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 675
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 676
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    .line 677
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
