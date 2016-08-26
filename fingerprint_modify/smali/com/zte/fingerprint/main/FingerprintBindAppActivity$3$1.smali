.class Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3$1;
.super Ljava/lang/Object;
.source "FingerprintBindAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;->onFingerUp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3$1;->this$1:Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3$1;->this$1:Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;

    # getter for: Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;->this$0:Lcom/zte/fingerprint/main/FingerprintBindAppActivity;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;->access$0(Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;)Lcom/zte/fingerprint/main/FingerprintBindAppActivity;

    move-result-object v0

    # getter for: Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mHighLightPreference:Lcom/zte/mifavor/preference/Preference;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->access$3(Lcom/zte/fingerprint/main/FingerprintBindAppActivity;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3$1;->this$1:Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;

    # getter for: Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;->this$0:Lcom/zte/fingerprint/main/FingerprintBindAppActivity;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;->access$0(Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;)Lcom/zte/fingerprint/main/FingerprintBindAppActivity;

    move-result-object v0

    # getter for: Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mHighLightPreference:Lcom/zte/mifavor/preference/Preference;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->access$3(Lcom/zte/fingerprint/main/FingerprintBindAppActivity;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/zte/fingerprint/main/FingerPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/main/FingerPreference;->setHighlight(Z)V

    .line 124
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3$1;->this$1:Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;

    # getter for: Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;->this$0:Lcom/zte/fingerprint/main/FingerprintBindAppActivity;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;->access$0(Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;)Lcom/zte/fingerprint/main/FingerprintBindAppActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->access$2(Lcom/zte/fingerprint/main/FingerprintBindAppActivity;Lcom/zte/mifavor/preference/Preference;)V

    .line 126
    :cond_0
    return-void
.end method
