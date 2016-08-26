.class public Lcom/android/bluetooth/hfp/BluetoothDriverModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDriverModeReceiver.java"


# static fields
.field private static final ACTION_DRIVER_MODE_LAUNCH:Ljava/lang/String; = "zte.com.cn.driverMode.LAUNCH"

.field private static final ACTION_DRIVER_MODE_QUIT:Ljava/lang/String; = "zte.com.cn.driverMode.QUITE"

.field private static final TAG:Ljava/lang/String; = "BluetoothDriverModeReceiver"

.field private static bDriverModeLaunched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/hfp/BluetoothDriverModeReceiver;->bDriverModeLaunched:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static isDriverModeLaunched()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/bluetooth/hfp/BluetoothDriverModeReceiver;->bDriverModeLaunched:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "action":Ljava/lang/String;
    const-string v1, "BluetoothDriverModeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive::action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-string v1, "zte.com.cn.driverMode.LAUNCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/bluetooth/hfp/BluetoothDriverModeReceiver;->bDriverModeLaunched:Z

    .line 35
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string v1, "zte.com.cn.driverMode.QUITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/bluetooth/hfp/BluetoothDriverModeReceiver;->bDriverModeLaunched:Z

    goto :goto_0

    .line 33
    :cond_1
    const-string v1, "BluetoothDriverModeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
