.class Lcom/zte/fingerprint/main/FingerSettingActivity$7;
.super Ljava/lang/Object;
.source "FingerSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/main/FingerSettingActivity;->showDisableUnlockDialog()V
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
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerSettingActivity$7;->this$0:Lcom/zte/fingerprint/main/FingerSettingActivity;

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 547
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerSettingActivity$7;->this$0:Lcom/zte/fingerprint/main/FingerSettingActivity;

    const-string v2, "lock_for_screen"

    invoke-virtual {v1, v2}, Lcom/zte/fingerprint/main/FingerSettingActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/preference/SwitchPreference;

    .line 548
    .local v0, "lock_for_screen":Lcom/zte/mifavor/preference/SwitchPreference;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/SwitchPreference;->setChecked(Z)V

    .line 549
    return-void
.end method
