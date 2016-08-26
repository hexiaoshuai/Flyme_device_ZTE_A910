.class Lcom/zte/fingerprint/main/FingerprintUnlockService$5;
.super Ljava/lang/Object;
.source "FingerprintUnlockService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/main/FingerprintUnlockService;->onWaitingForInput()V
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
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$5;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 635
    :try_start_0
    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$5;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->UpLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$16(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 636
    :try_start_1
    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$5;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->getActiveCallback()Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v2}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$17(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v0

    .line 637
    .local v0, "cb":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    if-eqz v2, :cond_0

    .line 638
    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$5;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$3(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "notify up pkg = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$5;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    iget v6, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->uid:I

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->getPackageName(I)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$1(Lcom/zte/fingerprint/main/FingerprintUnlockService;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v2, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/android/fingerprints/keyguard/IFingerActionCallback;->onFingerUp(I)V

    .line 641
    :cond_0
    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$5;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$18(Lcom/zte/fingerprint/main/FingerprintUnlockService;Z)V

    .line 642
    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$5;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->UpLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$16(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 635
    monitor-exit v3

    .line 649
    .end local v0    # "cb":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    :goto_0
    return-void

    .line 635
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 644
    :catch_0
    move-exception v1

    .line 645
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 646
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 647
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
