.class Lcom/zte/fingerprint/main/FingerprintListActivity$1;
.super Ljava/lang/Object;
.source "FingerprintListActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/FingerprintListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/main/FingerprintListActivity;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/FingerprintListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerprintListActivity$1;->this$0:Lcom/zte/fingerprint/main/FingerprintListActivity;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity$1;->this$0:Lcom/zte/fingerprint/main/FingerprintListActivity;

    .line 62
    invoke-static {p2}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    move-result-object v1

    .line 61
    iput-object v1, v0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mFingerprintUnlockService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    .line 64
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity$1;->this$0:Lcom/zte/fingerprint/main/FingerprintListActivity;

    # invokes: Lcom/zte/fingerprint/main/FingerprintListActivity;->registerCallback()V
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->access$0(Lcom/zte/fingerprint/main/FingerprintListActivity;)V

    .line 65
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity$1;->this$0:Lcom/zte/fingerprint/main/FingerprintListActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mFingerprintUnlockService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    .line 70
    return-void
.end method
