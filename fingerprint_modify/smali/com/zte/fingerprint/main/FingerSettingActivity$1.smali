.class Lcom/zte/fingerprint/main/FingerSettingActivity$1;
.super Ljava/lang/Object;
.source "FingerSettingActivity.java"

# interfaces
.implements Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/main/FingerSettingActivity;->initComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/main/FingerSettingActivity;

.field private final synthetic val$currentCount:I

.field private final synthetic val$prfScreenLock:Lcom/zte/mifavor/preference/SwitchPreference;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/FingerSettingActivity;ILcom/zte/mifavor/preference/SwitchPreference;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerSettingActivity$1;->this$0:Lcom/zte/fingerprint/main/FingerSettingActivity;

    iput p2, p0, Lcom/zte/fingerprint/main/FingerSettingActivity$1;->val$currentCount:I

    iput-object p3, p0, Lcom/zte/fingerprint/main/FingerSettingActivity$1;->val$prfScreenLock:Lcom/zte/mifavor/preference/SwitchPreference;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/zte/mifavor/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Lcom/zte/mifavor/preference/Preference;

    .prologue
    .line 260
    iget v0, p0, Lcom/zte/fingerprint/main/FingerSettingActivity$1;->val$currentCount:I

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerSettingActivity$1;->this$0:Lcom/zte/fingerprint/main/FingerSettingActivity;

    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerSettingActivity$1;->val$prfScreenLock:Lcom/zte/mifavor/preference/SwitchPreference;

    # invokes: Lcom/zte/fingerprint/main/FingerSettingActivity;->showAddFingerDialog(Lcom/zte/mifavor/preference/SwitchPreference;)V
    invoke-static {v0, v1}, Lcom/zte/fingerprint/main/FingerSettingActivity;->access$0(Lcom/zte/fingerprint/main/FingerSettingActivity;Lcom/zte/mifavor/preference/SwitchPreference;)V

    .line 263
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
