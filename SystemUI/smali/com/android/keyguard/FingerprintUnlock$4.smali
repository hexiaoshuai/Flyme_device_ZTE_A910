.class Lcom/android/keyguard/FingerprintUnlock$4;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/FingerprintUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/FingerprintUnlock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/FingerprintUnlock;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/FingerprintUnlock$4;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    .line 752
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 757
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.fingerprint.server.STARTFINISH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock$4;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # getter for: Lcom/android/keyguard/FingerprintUnlock;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/FingerprintUnlock;->access$4(Lcom/android/keyguard/FingerprintUnlock;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 760
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock$4;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    invoke-virtual {v1}, Lcom/android/keyguard/FingerprintUnlock;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 761
    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock$4;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # getter for: Lcom/android/keyguard/FingerprintUnlock;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/FingerprintUnlock;->access$4(Lcom/android/keyguard/FingerprintUnlock;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/FingerprintHelper;->checkSreenLock(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock$4;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # getter for: Lcom/android/keyguard/FingerprintUnlock;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/FingerprintUnlock;->access$4(Lcom/android/keyguard/FingerprintUnlock;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/FingerprintHelper;->checkFingerPrinter(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    const-string v1, "FPCUnlock"

    const-string v2, "receive broadcast to register fingerprint unlock callback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock$4;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    invoke-virtual {v1}, Lcom/android/keyguard/FingerprintUnlock;->registerCallbackAgain()V

    .line 766
    :cond_0
    return-void
.end method
