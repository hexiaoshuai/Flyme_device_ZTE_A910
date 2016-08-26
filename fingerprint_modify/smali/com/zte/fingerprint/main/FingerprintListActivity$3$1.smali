.class Lcom/zte/fingerprint/main/FingerprintListActivity$3$1;
.super Ljava/lang/Object;
.source "FingerprintListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/main/FingerprintListActivity$3;->onFingerUp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/fingerprint/main/FingerprintListActivity$3;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/FingerprintListActivity$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerprintListActivity$3$1;->this$1:Lcom/zte/fingerprint/main/FingerprintListActivity$3;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "FingerprintListActivity"

    const-string v1, "onFingerUp "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity$3$1;->this$1:Lcom/zte/fingerprint/main/FingerprintListActivity$3;

    # getter for: Lcom/zte/fingerprint/main/FingerprintListActivity$3;->this$0:Lcom/zte/fingerprint/main/FingerprintListActivity;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintListActivity$3;->access$0(Lcom/zte/fingerprint/main/FingerprintListActivity$3;)Lcom/zte/fingerprint/main/FingerprintListActivity;

    move-result-object v0

    # getter for: Lcom/zte/fingerprint/main/FingerprintListActivity;->mHighLightPreference:Lcom/zte/mifavor/preference/Preference;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->access$3(Lcom/zte/fingerprint/main/FingerprintListActivity;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity$3$1;->this$1:Lcom/zte/fingerprint/main/FingerprintListActivity$3;

    # getter for: Lcom/zte/fingerprint/main/FingerprintListActivity$3;->this$0:Lcom/zte/fingerprint/main/FingerprintListActivity;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintListActivity$3;->access$0(Lcom/zte/fingerprint/main/FingerprintListActivity$3;)Lcom/zte/fingerprint/main/FingerprintListActivity;

    move-result-object v0

    # getter for: Lcom/zte/fingerprint/main/FingerprintListActivity;->mHighLightPreference:Lcom/zte/mifavor/preference/Preference;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->access$3(Lcom/zte/fingerprint/main/FingerprintListActivity;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/zte/fingerprint/main/FingerPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/main/FingerPreference;->setHighlight(Z)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity$3$1;->this$1:Lcom/zte/fingerprint/main/FingerprintListActivity$3;

    # getter for: Lcom/zte/fingerprint/main/FingerprintListActivity$3;->this$0:Lcom/zte/fingerprint/main/FingerprintListActivity;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintListActivity$3;->access$0(Lcom/zte/fingerprint/main/FingerprintListActivity$3;)Lcom/zte/fingerprint/main/FingerprintListActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/fingerprint/main/FingerprintListActivity;->access$2(Lcom/zte/fingerprint/main/FingerprintListActivity;Lcom/zte/mifavor/preference/Preference;)V

    .line 124
    return-void
.end method
