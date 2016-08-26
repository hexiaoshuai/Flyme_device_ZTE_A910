.class public Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;
.super Landroid/app/ListFragment;
.source "SelectAppsActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/SelectAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/zte/fingerprint/main/Category;",
        ">;>;"
    }
.end annotation


# instance fields
.field mAdapter:Lcom/zte/fingerprint/main/SelectAppsActivity$AppListAdapter;

.field final synthetic this$0:Lcom/zte/fingerprint/main/SelectAppsActivity;


# direct methods
.method public constructor <init>(Lcom/zte/fingerprint/main/SelectAppsActivity;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->this$0:Lcom/zte/fingerprint/main/SelectAppsActivity;

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 699
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 710
    new-instance v0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListAdapter;

    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->this$0:Lcom/zte/fingerprint/main/SelectAppsActivity;

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListAdapter;-><init>(Lcom/zte/fingerprint/main/SelectAppsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->mAdapter:Lcom/zte/fingerprint/main/SelectAppsActivity$AppListAdapter;

    .line 712
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->mAdapter:Lcom/zte/fingerprint/main/SelectAppsActivity$AppListAdapter;

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 715
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 718
    invoke-virtual {p0, v3}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->setListShown(Z)V

    .line 722
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 723
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/main/Category;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 743
    new-instance v0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 765
    invoke-static {v1}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$2(Ljava/lang/String;)V

    .line 766
    invoke-static {v1}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$1(Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->mAdapter:Lcom/zte/fingerprint/main/SelectAppsActivity$AppListAdapter;

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListAdapter;->setData(Ljava/util/List;)V

    .line 769
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 770
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 727
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 729
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 732
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "preference_finger_select_function"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->this$0:Lcom/zte/fingerprint/main/SelectAppsActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->mFingerPrintKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$0(Lcom/zte/fingerprint/main/SelectAppsActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "1\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 733
    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$5()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AppListFragment onListItemClick() preference:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "preference_finger_select_function"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->this$0:Lcom/zte/fingerprint/main/SelectAppsActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->mFingerPrintKey:Ljava/lang/String;
    invoke-static {v5}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$0(Lcom/zte/fingerprint/main/SelectAppsActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :goto_0
    return-void

    .line 735
    :catch_0
    move-exception v1

    .line 736
    .local v1, "t":Ljava/lang/Throwable;
    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$5()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onListItemClick() t: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/content/Loader;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/main/Category;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/main/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/zte/fingerprint/main/Category;>;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/zte/fingerprint/main/Category;>;"
    const/4 v1, 0x1

    .line 749
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->mAdapter:Lcom/zte/fingerprint/main/SelectAppsActivity$AppListAdapter;

    invoke-virtual {v0, p2}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListAdapter;->setData(Ljava/util/List;)V

    .line 752
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->setListShown(Z)V

    .line 757
    :goto_0
    return-void

    .line 755
    :cond_0
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/main/Category;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 761
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/zte/fingerprint/main/Category;>;>;"
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->mAdapter:Lcom/zte/fingerprint/main/SelectAppsActivity$AppListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListAdapter;->setData(Ljava/util/List;)V

    .line 762
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 680
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 682
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "preference_finger_select_function"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;->this$0:Lcom/zte/fingerprint/main/SelectAppsActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->mFingerPrintKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$0(Lcom/zte/fingerprint/main/SelectAppsActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, "fingerPrintDes":Ljava/lang/String;
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, "result":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 688
    const/4 v3, 0x1

    :try_start_0
    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$1(Ljava/lang/String;)V

    .line 689
    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$2(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 690
    :catch_0
    move-exception v2

    .line 691
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 692
    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$5()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AppListFragment onStart() Throwable: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
