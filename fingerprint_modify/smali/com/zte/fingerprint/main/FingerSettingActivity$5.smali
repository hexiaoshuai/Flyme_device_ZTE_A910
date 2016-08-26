.class Lcom/zte/fingerprint/main/FingerSettingActivity$5;
.super Ljava/lang/Object;
.source "FingerSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/main/FingerSettingActivity;->showAddFingerDialog(Lcom/zte/mifavor/preference/SwitchPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/main/FingerSettingActivity;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/FingerSettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerSettingActivity$5;->this$0:Lcom/zte/fingerprint/main/FingerSettingActivity;

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 526
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerSettingActivity$5;->this$0:Lcom/zte/fingerprint/main/FingerSettingActivity;

    new-instance v1, Landroid/content/Intent;

    .line 527
    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerSettingActivity$5;->this$0:Lcom/zte/fingerprint/main/FingerSettingActivity;

    invoke-virtual {v2}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 528
    const-class v3, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 526
    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/main/FingerSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 529
    return-void
.end method
