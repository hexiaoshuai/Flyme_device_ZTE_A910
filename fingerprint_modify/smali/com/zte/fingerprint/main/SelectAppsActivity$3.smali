.class Lcom/zte/fingerprint/main/SelectAppsActivity$3;
.super Ljava/lang/Object;
.source "SelectAppsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/SelectAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/main/SelectAppsActivity;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/SelectAppsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$3;->this$0:Lcom/zte/fingerprint/main/SelectAppsActivity;

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 462
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$3;->this$0:Lcom/zte/fingerprint/main/SelectAppsActivity;

    invoke-virtual {v0}, Lcom/zte/fingerprint/main/SelectAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$3;->this$0:Lcom/zte/fingerprint/main/SelectAppsActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->mFingerPrintKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$0(Lcom/zte/fingerprint/main/SelectAppsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/fingerprint/utils/CommonUtils;->removeBoundAppData(Landroid/content/Context;Ljava/lang/String;)V

    .line 463
    invoke-static {v3}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$1(Ljava/lang/String;)V

    .line 464
    invoke-static {v3}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$2(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$3;->this$0:Lcom/zte/fingerprint/main/SelectAppsActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->list:Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;
    invoke-static {v0}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$3(Lcom/zte/fingerprint/main/SelectAppsActivity;)Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$3;->this$0:Lcom/zte/fingerprint/main/SelectAppsActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->list:Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;
    invoke-static {v2}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$3(Lcom/zte/fingerprint/main/SelectAppsActivity;)Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 466
    return-void
.end method
