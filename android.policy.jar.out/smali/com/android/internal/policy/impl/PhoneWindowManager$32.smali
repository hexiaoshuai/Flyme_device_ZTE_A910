.class Lcom/android/internal/policy/impl/PhoneWindowManager$32;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 6262
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6264
    const-string v1, "WindowManager"

    const-string v2, "mIpoEventReceiver -- onReceive -- entry"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6265
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6266
    .local v0, "action":Ljava/lang/String;
    const-string v1, "sys.boot.reason"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6267
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsAlarmBoot:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4002(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 6268
    const-string v1, "android.intent.action.normal.shutdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6269
    const-string v1, "WindowManager"

    const-string v2, "Receive NORMAL_SHUTDOWN_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6270
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsShutDown:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4102(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 6276
    :cond_0
    :goto_0
    return-void

    .line 6271
    :cond_1
    const-string v1, "android.intent.action.normal.boot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6272
    const-string v1, "WindowManager"

    const-string v2, "Receive NORMAL_BOOT_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6273
    const-string v1, "service.bootanim.exit"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6274
    const-string v1, "ctl.start"

    const-string v2, "bootanim"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method