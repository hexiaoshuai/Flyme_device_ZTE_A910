.class Lcom/zte/fingerprint/main/SelectDoubleClickActivity$4;
.super Ljava/lang/Object;
.source "SelectDoubleClickActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/SelectDoubleClickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$4;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$4;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    invoke-virtual {v0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$4;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mFingerPrintKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$3(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/fingerprint/utils/CommonUtils;->removeBoundAppData(Landroid/content/Context;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$4;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->list:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;
    invoke-static {v0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$4(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$4;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->list:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;
    invoke-static {v3}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$4(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 523
    return-void
.end method
