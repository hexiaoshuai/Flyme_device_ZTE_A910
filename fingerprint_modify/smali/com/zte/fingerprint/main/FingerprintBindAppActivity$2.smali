.class Lcom/zte/fingerprint/main/FingerprintBindAppActivity$2;
.super Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback$Stub;
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
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$2;->this$0:Lcom/zte/fingerprint/main/FingerprintBindAppActivity;

    .line 76
    invoke-direct {p0}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    return-void
.end method

.method public exposeFallback()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 0
    .param p1, "millis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    return-void
.end method

.method public reportFailedAttempt()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    return-void
.end method

.method public unlock(I)V
    .locals 3
    .param p1, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$2;->this$0:Lcom/zte/fingerprint/main/FingerprintBindAppActivity;

    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$2;->this$0:Lcom/zte/fingerprint/main/FingerprintBindAppActivity;

    # getter for: Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->preferenceCategory:Lcom/zte/mifavor/preference/PreferenceCategory;
    invoke-static {v1}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->access$1(Lcom/zte/fingerprint/main/FingerprintBindAppActivity;)Lcom/zte/mifavor/preference/PreferenceCategory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->access$2(Lcom/zte/fingerprint/main/FingerprintBindAppActivity;Lcom/zte/mifavor/preference/Preference;)V

    .line 83
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$2;->this$0:Lcom/zte/fingerprint/main/FingerprintBindAppActivity;

    # getter for: Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mHighLightPreference:Lcom/zte/mifavor/preference/Preference;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->access$3(Lcom/zte/fingerprint/main/FingerprintBindAppActivity;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$2;->this$0:Lcom/zte/fingerprint/main/FingerprintBindAppActivity;

    # getter for: Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mHighLightPreference:Lcom/zte/mifavor/preference/Preference;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->access$3(Lcom/zte/fingerprint/main/FingerprintBindAppActivity;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/zte/fingerprint/main/FingerPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/main/FingerPreference;->setHighlight(Z)V

    .line 86
    :cond_0
    return-void
.end method
