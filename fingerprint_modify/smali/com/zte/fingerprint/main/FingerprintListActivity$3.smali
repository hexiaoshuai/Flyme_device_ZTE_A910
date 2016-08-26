.class Lcom/zte/fingerprint/main/FingerprintListActivity$3;
.super Lcom/android/fingerprints/keyguard/IFingerActionCallback$Stub;
.source "FingerprintListActivity.java"


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
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerprintListActivity$3;->this$0:Lcom/zte/fingerprint/main/FingerprintListActivity;

    .line 105
    invoke-direct {p0}, Lcom/android/fingerprints/keyguard/IFingerActionCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/zte/fingerprint/main/FingerprintListActivity$3;)Lcom/zte/fingerprint/main/FingerprintListActivity;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity$3;->this$0:Lcom/zte/fingerprint/main/FingerprintListActivity;

    return-object v0
.end method


# virtual methods
.method public onFingerDown(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    const-string v0, "FingerprintListActivity"

    const-string v1, "onFingerDown "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public onFingerUp(I)V
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    const-string v0, "FingerprintListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mFingerprintActionCallback onFingerUp() i = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity$3;->this$0:Lcom/zte/fingerprint/main/FingerprintListActivity;

    # getter for: Lcom/zte/fingerprint/main/FingerprintListActivity;->mHighLightPreference:Lcom/zte/mifavor/preference/Preference;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->access$3(Lcom/zte/fingerprint/main/FingerprintListActivity;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity$3;->this$0:Lcom/zte/fingerprint/main/FingerprintListActivity;

    # getter for: Lcom/zte/fingerprint/main/FingerprintListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->access$4(Lcom/zte/fingerprint/main/FingerprintListActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zte/fingerprint/main/FingerprintListActivity$3$1;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/main/FingerprintListActivity$3$1;-><init>(Lcom/zte/fingerprint/main/FingerprintListActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    :cond_0
    return-void
.end method
