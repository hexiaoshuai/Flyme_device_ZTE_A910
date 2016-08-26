.class Lcom/zte/fingerprint/main/FingerSettingActivity$4;
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

.field private final synthetic val$witch:Lcom/zte/mifavor/preference/SwitchPreference;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/FingerSettingActivity;Lcom/zte/mifavor/preference/SwitchPreference;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerSettingActivity$4;->this$0:Lcom/zte/fingerprint/main/FingerSettingActivity;

    iput-object p2, p0, Lcom/zte/fingerprint/main/FingerSettingActivity$4;->val$witch:Lcom/zte/mifavor/preference/SwitchPreference;

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 518
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerSettingActivity$4;->val$witch:Lcom/zte/mifavor/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerSettingActivity$4;->val$witch:Lcom/zte/mifavor/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/SwitchPreference;->setChecked(Z)V

    .line 521
    :cond_0
    return-void
.end method
