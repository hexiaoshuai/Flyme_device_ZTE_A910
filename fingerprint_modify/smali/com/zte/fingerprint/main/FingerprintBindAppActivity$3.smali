.class Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;
.super Lcom/android/fingerprints/keyguard/IFingerActionCallback$Stub;
.source "FingerprintBindAppActivity.java"


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
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;->this$0:Lcom/zte/fingerprint/main/FingerprintBindAppActivity;

    .line 106
    invoke-direct {p0}, Lcom/android/fingerprints/keyguard/IFingerActionCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;)Lcom/zte/fingerprint/main/FingerprintBindAppActivity;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;->this$0:Lcom/zte/fingerprint/main/FingerprintBindAppActivity;

    return-object v0
.end method


# virtual methods
.method public onFingerDown(I)V
    .locals 0
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    return-void
.end method

.method public onFingerUp(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;->this$0:Lcom/zte/fingerprint/main/FingerprintBindAppActivity;

    # getter for: Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mHighLightPreference:Lcom/zte/mifavor/preference/Preference;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->access$3(Lcom/zte/fingerprint/main/FingerprintBindAppActivity;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;->this$0:Lcom/zte/fingerprint/main/FingerprintBindAppActivity;

    # getter for: Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->access$4(Lcom/zte/fingerprint/main/FingerprintBindAppActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3$1;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3$1;-><init>(Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    :cond_0
    return-void
.end method
