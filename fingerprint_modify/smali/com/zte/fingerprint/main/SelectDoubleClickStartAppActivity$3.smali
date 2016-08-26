.class Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$3;
.super Ljava/lang/Object;
.source "SelectDoubleClickStartAppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$3;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 467
    sput-object v3, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mCurrentPackageName:Ljava/lang/String;

    .line 468
    sput-object v3, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mCurrentClassName:Ljava/lang/String;

    .line 469
    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mSharedPreferencesEditors:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->access$0()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_finger_double_packagename"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 471
    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mSharedPreferencesEditors:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->access$0()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_finger_double_classname"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 473
    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mSharedPreferencesEditors:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->access$0()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 474
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$3;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->list:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;
    invoke-static {v0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->access$1(Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;)Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$3;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->list:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;
    invoke-static {v2}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->access$1(Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;)Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 475
    return-void
.end method
