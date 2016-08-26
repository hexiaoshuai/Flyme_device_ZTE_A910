.class Lcom/zte/fingerprint/main/FingerprintBindAppActivity$1;
.super Ljava/lang/Object;
.source "FingerprintBindAppActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/FingerprintBindAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/main/FingerprintBindAppActivity;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/FingerprintBindAppActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$1;->this$0:Lcom/zte/fingerprint/main/FingerprintBindAppActivity;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$1;->this$0:Lcom/zte/fingerprint/main/FingerprintBindAppActivity;

    .line 63
    invoke-static {p2}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    move-result-object v1

    .line 62
    iput-object v1, v0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mFingerprintUnlockService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    .line 65
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$1;->this$0:Lcom/zte/fingerprint/main/FingerprintBindAppActivity;

    # invokes: Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->registerCallback()V
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->access$0(Lcom/zte/fingerprint/main/FingerprintBindAppActivity;)V

    .line 66
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$1;->this$0:Lcom/zte/fingerprint/main/FingerprintBindAppActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mFingerprintUnlockService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    .line 71
    return-void
.end method
