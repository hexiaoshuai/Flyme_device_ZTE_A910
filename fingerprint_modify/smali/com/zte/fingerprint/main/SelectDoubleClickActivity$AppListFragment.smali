.class public Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;
.super Landroid/app/ListFragment;
.source "SelectDoubleClickActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/SelectDoubleClickActivity;
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
        "Lcom/zte/fingerprint/main/DoubleClickCategory;",
        ">;>;"
    }
.end annotation


# instance fields
.field mAdapter:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;

.field final synthetic this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;


# direct methods
.method public constructor <init>(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 770
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 781
    new-instance v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;

    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;-><init>(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->mAdapter:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;

    .line 783
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->mAdapter:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 784
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$18(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;Landroid/widget/ListView;)V

    .line 786
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$1(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 789
    invoke-virtual {p0, v3}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->setListShown(Z)V

    .line 793
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 794
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
            "Lcom/zte/fingerprint/main/DoubleClickCategory;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 820
    new-instance v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->mAdapter:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->setData(Ljava/util/List;)V

    .line 845
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 846
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 798
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 800
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 804
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    sget-object v2, Lcom/zte/fingerprint/main/FingerSettingActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "preference_finger_double_packagename"

    .line 805
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 804
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 806
    sget-object v2, Lcom/zte/fingerprint/main/FingerSettingActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "preference_finger_double_classname"

    .line 807
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 806
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 808
    sget-object v2, Lcom/zte/fingerprint/main/FingerSettingActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 809
    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$6()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AppListFragment onListItemClick() preference: packagename="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 810
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " classname= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 809
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    :goto_0
    return-void

    .line 812
    :catch_0
    move-exception v1

    .line 813
    .local v1, "t":Ljava/lang/Throwable;
    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$6()Ljava/lang/String;

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

    invoke-virtual {p0, p1, p2}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

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
            "Lcom/zte/fingerprint/main/DoubleClickCategory;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/main/DoubleClickCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/zte/fingerprint/main/DoubleClickCategory;>;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/zte/fingerprint/main/DoubleClickCategory;>;"
    const/4 v1, 0x1

    .line 826
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->mAdapter:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;

    invoke-virtual {v0, p2}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->setData(Ljava/util/List;)V

    .line 829
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->setListShown(Z)V

    .line 834
    :goto_0
    return-void

    .line 832
    :cond_0
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->setListShownNoAnimation(Z)V

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
            "Lcom/zte/fingerprint/main/DoubleClickCategory;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 838
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/zte/fingerprint/main/DoubleClickCategory;>;>;"
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->mAdapter:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->setData(Ljava/util/List;)V

    .line 839
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 756
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 758
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "preference_finger_double_function"

    .line 759
    const/4 v3, 0x0

    .line 758
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 760
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 761
    const-string v1, "preference_finger_double_packagename"

    .line 762
    const-string v2, ""

    .line 761
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mCurrentPackageName:Ljava/lang/String;

    .line 763
    const-string v1, "preference_finger_double_classname"

    .line 764
    const-string v2, ""

    .line 763
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mCurrentClassName:Ljava/lang/String;

    .line 766
    :cond_0
    return-void
.end method
