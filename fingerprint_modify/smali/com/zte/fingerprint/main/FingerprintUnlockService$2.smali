.class Lcom/zte/fingerprint/main/FingerprintUnlockService$2;
.super Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback$Stub;
.source "FingerprintUnlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/main/FingerprintUnlockService;->onCreate()V
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
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$2;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    .line 274
    invoke-direct {p0}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 288
    return-void
.end method

.method public exposeFallback()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 299
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 0
    .param p1, "millis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 304
    return-void
.end method

.method public reportFailedAttempt()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$2;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    const-string v1, "on no match screen off receiver"

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->logI(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$2(Lcom/zte/fingerprint/main/FingerprintUnlockService;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$2;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->vb:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$10(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 294
    return-void
.end method

.method public unlock(I)V
    .locals 7
    .param p1, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$2;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    const-string v1, "on identified screen off receiver"

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->logI(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$2(Lcom/zte/fingerprint/main/FingerprintUnlockService;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$2;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    const-wide/16 v2, 0x1388

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->wakeupLock(J)V
    invoke-static {v0, v2, v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$9(Lcom/zte/fingerprint/main/FingerprintUnlockService;J)V

    .line 279
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$2;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$2;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$2;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 279
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$2;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->checkStop()V
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$8(Lcom/zte/fingerprint/main/FingerprintUnlockService;)V

    .line 283
    return-void

    .line 279
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
