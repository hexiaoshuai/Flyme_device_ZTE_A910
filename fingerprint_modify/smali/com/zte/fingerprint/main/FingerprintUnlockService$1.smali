.class Lcom/zte/fingerprint/main/FingerprintUnlockService$1;
.super Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub;
.source "FingerprintUnlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/FingerprintUnlockService;
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
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    .line 38
    invoke-direct {p0}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/zte/fingerprint/main/FingerprintUnlockService$1;)Lcom/zte/fingerprint/main/FingerprintUnlockService;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    return-object v0
.end method

.method private getPrivilegeAppIndex(I)I
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 49
    const/4 v1, -0x1

    .line 50
    .local v1, "index":I
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    invoke-virtual {v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeApp:[Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$0()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ne v0, v3, :cond_0

    .line 57
    :goto_1
    return v1

    .line 52
    :cond_0
    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeApp:[Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$0()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    move v1, v0

    .line 54
    goto :goto_1

    .line 51
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized registerCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V
    .locals 13
    .param p1, "cb"    # Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .prologue
    const/4 v12, -0x1

    .line 61
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 62
    .local v4, "uid":I
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "register Unlock pkg = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->getPackageName(I)Ljava/lang/String;
    invoke-static {v7, v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$1(Lcom/zte/fingerprint/main/FingerprintUnlockService;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->logI(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$2(Lcom/zte/fingerprint/main/FingerprintUnlockService;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->getPrivilegeAppIndex(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 64
    .local v2, "index":I
    if-eq v2, v12, :cond_1

    .line 67
    :try_start_1
    invoke-interface {p1}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v6, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$1;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService$1;II)V

    .line 77
    const/4 v7, 0x0

    .line 67
    invoke-interface {v5, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$4(Lcom/zte/fingerprint/main/FingerprintUnlockService;)[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v6

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :try_start_3
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$4(Lcom/zte/fingerprint/main/FingerprintUnlockService;)[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v5

    aget-object v5, v5, v2

    if-eqz v5, :cond_0

    .line 83
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$4(Lcom/zte/fingerprint/main/FingerprintUnlockService;)[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v5

    aget-object v5, v5, v2

    iput-object p1, v5, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 81
    :goto_1
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 117
    :goto_2
    :try_start_4
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->logCallBacks()V
    invoke-static {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$7(Lcom/zte/fingerprint/main/FingerprintUnlockService;)V

    .line 118
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    invoke-virtual {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->openFingerprint()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 61
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "index":I
    .end local v4    # "uid":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 85
    .restart local v2    # "index":I
    .restart local v4    # "uid":I
    :cond_0
    :try_start_6
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$4(Lcom/zte/fingerprint/main/FingerprintUnlockService;)[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v5

    new-instance v7, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    iget-object v8, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v4, v9, p1}, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    aput-object v7, v5, v2

    goto :goto_1

    .line 81
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v5

    .line 89
    :cond_1
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 90
    :try_start_8
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->isSystemUI(I)Z
    invoke-static {v5, v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$6(Lcom/zte/fingerprint/main/FingerprintUnlockService;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 91
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v7, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    iget-object v8, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 93
    :cond_2
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v7, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    iget-object v8, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v4, v9, v10}, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 95
    .local v0, "cbIndex":I
    if-eq v0, v12, :cond_3

    .line 96
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    .line 97
    .local v3, "pair":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    iput-object p1, v3, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 101
    :goto_3
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 104
    :try_start_9
    iget-object v5, v3, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    invoke-interface {v5}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v7, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$2;

    invoke-direct {v7, p0, v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$2;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService$1;Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;)V

    .line 111
    const/4 v8, 0x0

    .line 104
    invoke-interface {v5, v7, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 89
    :goto_4
    :try_start_a
    monitor-exit v6

    goto/16 :goto_2

    .end local v0    # "cbIndex":I
    .end local v3    # "pair":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 99
    .restart local v0    # "cbIndex":I
    :cond_3
    :try_start_c
    new-instance v3, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    const/4 v7, 0x0

    invoke-direct {v3, v5, v4, v7, p1}, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    .restart local v3    # "pair":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    goto :goto_3

    .line 112
    :catch_1
    move-exception v1

    .line 113
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_4
.end method

.method public declared-synchronized registerFingerActionCallback(Lcom/android/fingerprints/keyguard/IFingerActionCallback;)V
    .locals 13
    .param p1, "cb"    # Lcom/android/fingerprints/keyguard/IFingerActionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    .line 147
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 148
    .local v4, "uid":I
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "register Action pkg = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->getPackageName(I)Ljava/lang/String;
    invoke-static {v7, v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$1(Lcom/zte/fingerprint/main/FingerprintUnlockService;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->logI(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$2(Lcom/zte/fingerprint/main/FingerprintUnlockService;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->getPrivilegeAppIndex(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 150
    .local v2, "index":I
    if-eq v2, v12, :cond_1

    .line 152
    :try_start_1
    invoke-interface {p1}, Lcom/android/fingerprints/keyguard/IFingerActionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v6, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$3;

    invoke-direct {v6, p0, v4, v2}, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$3;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService$1;II)V

    .line 162
    const/4 v7, 0x0

    .line 152
    invoke-interface {v5, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$4(Lcom/zte/fingerprint/main/FingerprintUnlockService;)[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v6

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    :try_start_3
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$4(Lcom/zte/fingerprint/main/FingerprintUnlockService;)[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v5

    aget-object v5, v5, v2

    if-eqz v5, :cond_0

    .line 168
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$4(Lcom/zte/fingerprint/main/FingerprintUnlockService;)[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v5

    aget-object v5, v5, v2

    iput-object p1, v5, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .line 166
    :goto_1
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 202
    :goto_2
    :try_start_4
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->logCallBacks()V
    invoke-static {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$7(Lcom/zte/fingerprint/main/FingerprintUnlockService;)V

    .line 203
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    invoke-virtual {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->openFingerprint()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 147
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "index":I
    .end local v4    # "uid":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 170
    .restart local v2    # "index":I
    .restart local v4    # "uid":I
    :cond_0
    :try_start_6
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$4(Lcom/zte/fingerprint/main/FingerprintUnlockService;)[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v5

    new-instance v7, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    iget-object v8, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v4, p1, v9}, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    aput-object v7, v5, v2

    goto :goto_1

    .line 166
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v5

    .line 174
    :cond_1
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 175
    :try_start_8
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->isSystemUI(I)Z
    invoke-static {v5, v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$6(Lcom/zte/fingerprint/main/FingerprintUnlockService;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 176
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v7, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    iget-object v8, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 178
    :cond_2
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v7, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    iget-object v8, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v4, v9, v10}, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 180
    .local v0, "cbIndex":I
    if-eq v0, v12, :cond_3

    .line 181
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    .line 182
    .local v3, "pair":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    iput-object p1, v3, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .line 186
    :goto_3
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 189
    :try_start_9
    iget-object v5, v3, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    invoke-interface {v5}, Lcom/android/fingerprints/keyguard/IFingerActionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v7, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$4;

    invoke-direct {v7, p0, v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$4;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService$1;Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;)V

    .line 196
    const/4 v8, 0x0

    .line 189
    invoke-interface {v5, v7, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 174
    :goto_4
    :try_start_a
    monitor-exit v6

    goto/16 :goto_2

    .end local v0    # "cbIndex":I
    .end local v3    # "pair":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 184
    .restart local v0    # "cbIndex":I
    :cond_3
    :try_start_c
    new-instance v3, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    const/4 v7, 0x0

    invoke-direct {v3, v5, v4, p1, v7}, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    .restart local v3    # "pair":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    goto :goto_3

    .line 197
    :catch_1
    move-exception v1

    .line 198
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_4
.end method

.method public declared-synchronized startUi(Landroid/os/IBinder;IIII)V
    .locals 0
    .param p1, "containingWindowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 42
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stopUi()V
    .locals 0

    .prologue
    .line 46
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized unregisterCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V
    .locals 11
    .param p1, "cb"    # Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .prologue
    const/4 v10, -0x1

    .line 122
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 123
    .local v3, "uid":I
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unregister Unlock pkg = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->getPackageName(I)Ljava/lang/String;
    invoke-static {v6, v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$1(Lcom/zte/fingerprint/main/FingerprintUnlockService;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->logI(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$2(Lcom/zte/fingerprint/main/FingerprintUnlockService;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->getPrivilegeAppIndex(I)I

    move-result v1

    .line 125
    .local v1, "index":I
    if-eq v1, v10, :cond_0

    .line 126
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$4(Lcom/zte/fingerprint/main/FingerprintUnlockService;)[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    :try_start_1
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$4(Lcom/zte/fingerprint/main/FingerprintUnlockService;)[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v4

    aget-object v4, v4, v1

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .line 128
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$4(Lcom/zte/fingerprint/main/FingerprintUnlockService;)[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v4

    aget-object v4, v4, v1

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 129
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$4(Lcom/zte/fingerprint/main/FingerprintUnlockService;)[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v6, v4, v1

    .line 126
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->logCallBacks()V
    invoke-static {v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$7(Lcom/zte/fingerprint/main/FingerprintUnlockService;)V

    .line 142
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->checkStop()V
    invoke-static {v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$8(Lcom/zte/fingerprint/main/FingerprintUnlockService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 143
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 122
    .end local v1    # "index":I
    .end local v3    # "uid":I
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 132
    .restart local v1    # "index":I
    .restart local v3    # "uid":I
    :cond_0
    :try_start_5
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 133
    :try_start_6
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v6, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    iget-object v7, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v7, v3, v8, v9}, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 134
    .local v0, "cIndex":I
    if-eq v0, v10, :cond_1

    .line 135
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    .line 136
    .local v2, "pair":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .line 137
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 132
    .end local v2    # "pair":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    :cond_1
    monitor-exit v5

    goto :goto_0

    .end local v0    # "cIndex":I
    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public declared-synchronized unregisterFingerActionCallback(Lcom/android/fingerprints/keyguard/IFingerActionCallback;)V
    .locals 11
    .param p1, "cb"    # Lcom/android/fingerprints/keyguard/IFingerActionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 208
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 209
    .local v3, "uid":I
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unregister Action pkg = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->getPackageName(I)Ljava/lang/String;
    invoke-static {v6, v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$1(Lcom/zte/fingerprint/main/FingerprintUnlockService;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->logI(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$2(Lcom/zte/fingerprint/main/FingerprintUnlockService;Ljava/lang/String;)V

    .line 210
    invoke-direct {p0, v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->getPrivilegeAppIndex(I)I

    move-result v1

    .line 211
    .local v1, "index":I
    if-eq v1, v10, :cond_0

    .line 212
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$4(Lcom/zte/fingerprint/main/FingerprintUnlockService;)[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 213
    :try_start_1
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$4(Lcom/zte/fingerprint/main/FingerprintUnlockService;)[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v4

    aget-object v4, v4, v1

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .line 214
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$4(Lcom/zte/fingerprint/main/FingerprintUnlockService;)[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v4

    aget-object v4, v4, v1

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 215
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$4(Lcom/zte/fingerprint/main/FingerprintUnlockService;)[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v6, v4, v1

    .line 212
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->logCallBacks()V
    invoke-static {v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$7(Lcom/zte/fingerprint/main/FingerprintUnlockService;)V

    .line 228
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->checkStop()V
    invoke-static {v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$8(Lcom/zte/fingerprint/main/FingerprintUnlockService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 229
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 208
    .end local v1    # "index":I
    .end local v3    # "uid":I
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 218
    .restart local v1    # "index":I
    .restart local v3    # "uid":I
    :cond_0
    :try_start_5
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 219
    :try_start_6
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v6, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    iget-object v7, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v7, v3, v8, v9}, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 220
    .local v0, "cIndex":I
    if-eq v0, v10, :cond_1

    .line 221
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    .line 222
    .local v2, "pair":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .line 223
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 218
    .end local v2    # "pair":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    :cond_1
    monitor-exit v5

    goto :goto_0

    .end local v0    # "cIndex":I
    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method
