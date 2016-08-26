.class public Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;
.super Landroid/app/ListFragment;
.source "SelectDoubleClickStartAppActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;
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
        "Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;",
        ">;>;"
    }
.end annotation


# instance fields
.field mAdapter:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;

.field final synthetic this$0:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;


# direct methods
.method public constructor <init>(Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 703
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 714
    new-instance v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;

    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;-><init>(Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;->mAdapter:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;

    .line 716
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;->mAdapter:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 719
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 722
    invoke-virtual {p0, v3}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;->setListShown(Z)V

    .line 726
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 727
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
            "Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 752
    new-instance v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListLoader;

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 774
    sput-object v1, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mCurrentClassName:Ljava/lang/String;

    .line 775
    sput-object v1, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mCurrentPackageName:Ljava/lang/String;

    .line 776
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;->mAdapter:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->setData(Ljava/util/List;)V

    .line 778
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 779
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 731
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 733
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 736
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mSharedPreferencesEditors:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->access$0()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preference_finger_double_packagename"

    .line 737
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 736
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 738
    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mSharedPreferencesEditors:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->access$0()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preference_finger_double_classname"

    .line 739
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 738
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 740
    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mSharedPreferencesEditors:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->access$0()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 741
    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->access$3()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AppListFragment onListItemClick() preference: packagename="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 742
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

    .line 741
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :goto_0
    return-void

    .line 744
    :catch_0
    move-exception v1

    .line 745
    .local v1, "t":Ljava/lang/Throwable;
    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->access$3()Ljava/lang/String;

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

    invoke-virtual {p0, p1, p2}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

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
            "Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;>;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;>;"
    const/4 v1, 0x1

    .line 758
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;->mAdapter:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;

    invoke-virtual {v0, p2}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->setData(Ljava/util/List;)V

    .line 761
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;->setListShown(Z)V

    .line 766
    :goto_0
    return-void

    .line 764
    :cond_0
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;->setListShownNoAnimation(Z)V

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
            "Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 770
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;>;>;"
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;->mAdapter:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->setData(Ljava/util/List;)V

    .line 771
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 689
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 691
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "preference_finger_double_function"

    .line 692
    const/4 v3, 0x0

    .line 691
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 693
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 694
    const-string v1, "preference_finger_double_packagename"

    .line 695
    const-string v2, ""

    .line 694
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mCurrentPackageName:Ljava/lang/String;

    .line 696
    const-string v1, "preference_finger_double_classname"

    .line 697
    const-string v2, ""

    .line 696
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mCurrentClassName:Ljava/lang/String;

    .line 699
    :cond_0
    return-void
.end method
