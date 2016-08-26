.class Landroid/net/wifi/WifiManager$1;
.super Landroid/net/wifi/IWifiOffListener$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiManager;->addWifiOffListener(Landroid/net/wifi/WifiManager$WifiOffListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiManager;

.field final synthetic val$listener:Landroid/net/wifi/WifiManager$WifiOffListener;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiManager$WifiOffListener;)V
    .locals 0

    .prologue
    .line 3688
    iput-object p1, p0, Landroid/net/wifi/WifiManager$1;->this$0:Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$1;->val$listener:Landroid/net/wifi/WifiManager$WifiOffListener;

    invoke-direct {p0}, Landroid/net/wifi/IWifiOffListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onWifiOff(I)V
    .locals 1
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3691
    iget-object v0, p0, Landroid/net/wifi/WifiManager$1;->val$listener:Landroid/net/wifi/WifiManager$WifiOffListener;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$WifiOffListener;->onWifiOff(I)V

    .line 3692
    return-void
.end method
