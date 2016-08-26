.class Lcom/zte/fingerprint/main/FingerprintUnlockService$3;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    .line 306
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 309
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$3(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "intent.getAction() = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->isFingerprintUnlockEnabled()Z
    invoke-static {v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$11(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 311
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 312
    :try_start_0
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->isFingerprintEnabled()Z
    invoke-static {v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$12(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    const/4 v1, 0x0

    .line 314
    .local v1, "existSystemUI":Z
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 318
    :goto_0
    if-nez v1, :cond_1

    .line 319
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v5, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    iget-object v6, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    const/4 v7, -0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->screenOffCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;
    invoke-static {v9}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$13(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    const-string v5, "screen off, no system ui registered,register"

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->logI(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$2(Lcom/zte/fingerprint/main/FingerprintUnlockService;Ljava/lang/String;)V

    .line 321
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    invoke-virtual {v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->openFingerprint()V

    .line 311
    .end local v1    # "existSystemUI":Z
    :cond_1
    monitor-exit v4

    .line 345
    :cond_2
    :goto_1
    return-void

    .line 314
    .restart local v1    # "existSystemUI":Z
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    .line 315
    .local v2, "p":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    iget v6, v2, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->uid:I

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->isSystemUI(I)Z
    invoke-static {v5, v6}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$6(Lcom/zte/fingerprint/main/FingerprintUnlockService;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 311
    .end local v1    # "existSystemUI":Z
    .end local v2    # "p":Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 326
    :cond_4
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->isFingerprintUnlockEnabled()Z
    invoke-static {v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$11(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 327
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 328
    :try_start_1
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v5, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    iget-object v6, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;-><init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 327
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 330
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->checkStop()V
    invoke-static {v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$8(Lcom/zte/fingerprint/main/FingerprintUnlockService;)V

    goto :goto_1

    .line 327
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 331
    :cond_5
    const-string v3, "android.intent.action.NAVI_FINGERPRINT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 332
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$3(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NAVI_FINGERPRINT "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "event"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v3, "double"

    const-string v4, "event"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 335
    :try_start_3
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->startDoubleApp(Landroid/content/Context;)V
    invoke-static {v3, p1}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$14(Lcom/zte/fingerprint/main/FingerprintUnlockService;Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$3(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "double app is not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 343
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :cond_6
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$3;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$3(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "no app start!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 338
    :catch_1
    move-exception v3

    goto/16 :goto_1
.end method
