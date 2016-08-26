.class public Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;
.super Landroid/content/AsyncTaskLoader;
.source "SelectDoubleClickActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/SelectDoubleClickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppListLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/zte/fingerprint/main/DoubleClickCategory;",
        ">;>;"
    }
.end annotation


# instance fields
.field mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/main/DoubleClickCategory;",
            ">;"
        }
    .end annotation
.end field

.field final mLastConfig:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$InterestingConfigChanges;

.field mPackageObserver:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 294
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 287
    new-instance v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$InterestingConfigChanges;

    invoke-direct {v0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->mLastConfig:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$InterestingConfigChanges;

    .line 299
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    .line 300
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/main/DoubleClickCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/zte/fingerprint/main/DoubleClickCategory;>;"
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    if-eqz p1, :cond_0

    .line 412
    invoke-virtual {p0, p1}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 415
    :cond_0
    move-object v0, p1

    .line 416
    .local v0, "oldApps":Ljava/util/List;, "Ljava/util/List<Lcom/zte/fingerprint/main/DoubleClickCategory;>;"
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->mApps:Ljava/util/List;

    .line 418
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 427
    :cond_1
    if-eqz v0, :cond_2

    .line 428
    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 430
    :cond_2
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/main/DoubleClickCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    new-instance v7, Landroid/content/Intent;

    const-string v15, "android.intent.action.MAIN"

    invoke-direct {v7, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .local v7, "mainIntent":Landroid/content/Intent;
    const-string v15, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v15}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v7, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 313
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_0

    .line 314
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .restart local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v2, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/zte/fingerprint/main/DoubleClickCategory;>;"
    new-instance v13, Lcom/zte/fingerprint/main/DoubleClickCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f090083

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Lcom/zte/fingerprint/main/DoubleClickCategory;-><init>(Ljava/lang/String;)V

    .line 321
    .local v13, "suggestAppsVariety":Lcom/zte/fingerprint/main/DoubleClickCategory;
    new-instance v8, Lcom/zte/fingerprint/main/DoubleClickCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f090084

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Lcom/zte/fingerprint/main/DoubleClickCategory;-><init>(Ljava/lang/String;)V

    .line 323
    .local v8, "otherAppsVariety":Lcom/zte/fingerprint/main/DoubleClickCategory;
    new-instance v5, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader$1;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->FIXED_APPS_SIZE:I
    invoke-static {}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$5()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v15}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader$1;-><init>(Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;I)V

    .line 328
    .local v5, "fixedRecommendedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;>;"
    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$6()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "loadInBackground() AppListFragment.mCurrentPackageName:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v17, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 329
    const-string v17, "    AppListFragment.mCurrentClassName:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mCurrentClassName:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 328
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    if-lt v6, v15, :cond_4

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/zte/fingerprint/utils/CommonUtils;->getPrivacyStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 358
    .local v12, "privacyStatus":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->PRIVACY_SPACE_INTENT:Landroid/content/Intent;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$10()Landroid/content/Intent;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 359
    .local v11, "privacySpaceInf":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v15, "1"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 360
    if-eqz v11, :cond_2

    .line 361
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    .line 362
    new-instance v10, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;

    const/4 v15, 0x0

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v15}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;-><init>(Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;Landroid/content/pm/ResolveInfo;)V

    .line 363
    .local v10, "privacySpaceEntry":Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;
    invoke-virtual {v10}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->getPackageName()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mCurrentPackageName:Ljava/lang/String;

    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 364
    invoke-virtual {v10}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->getClassName()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mCurrentClassName:Ljava/lang/String;

    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 367
    :cond_1
    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->PRIVACY_SPACE_POSITION:I
    invoke-static {}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$11()I

    move-result v15

    invoke-virtual {v5, v15, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 372
    .end local v10    # "privacySpaceEntry":Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;
    :cond_2
    invoke-virtual {v13}, Lcom/zte/fingerprint/main/DoubleClickCategory;->getAllData()Ljava/util/List;

    move-result-object v15

    sget-object v16, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static/range {v15 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 373
    invoke-virtual {v8}, Lcom/zte/fingerprint/main/DoubleClickCategory;->getAllData()Ljava/util/List;

    move-result-object v15

    sget-object v16, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static/range {v15 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 376
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v6, v15, -0x1

    :goto_1
    if-gez v6, :cond_7

    .line 391
    invoke-virtual {v13}, Lcom/zte/fingerprint/main/DoubleClickCategory;->getItemCount()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    .line 392
    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$6()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "suggestAppsCategory.getItemCount() = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/zte/fingerprint/main/DoubleClickCategory;->getItemCount()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_3
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    return-object v2

    .line 331
    .end local v11    # "privacySpaceInf":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "privacyStatus":Ljava/lang/String;
    :cond_4
    new-instance v4, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;-><init>(Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;Landroid/content/pm/ResolveInfo;)V

    .line 339
    .local v4, "entry":Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;
    # invokes: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->constructPkgAndCls(Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;)Ljava/lang/String;
    invoke-static {v4}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$7(Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;)Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->isSuggestApp(Ljava/lang/String;)Z
    invoke-static {v15}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$8(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 340
    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->SUGGEST_APP:Ljava/util/HashMap;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$9()Ljava/util/HashMap;

    move-result-object v15

    # invokes: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->constructPkgAndCls(Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;)Ljava/lang/String;
    invoke-static {v4}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$7(Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 341
    .local v9, "position":I
    if-ltz v9, :cond_5

    .line 343
    :try_start_0
    invoke-virtual {v5, v9, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v9    # "position":I
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 344
    .restart local v9    # "position":I
    :catch_0
    move-exception v14

    .line 345
    .local v14, "t":Ljava/lang/Throwable;
    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$6()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "loadInBackground() isSuggestApp t: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {v13, v4}, Lcom/zte/fingerprint/main/DoubleClickCategory;->addItem(Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;)V

    goto :goto_2

    .line 349
    .end local v14    # "t":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v13, v4}, Lcom/zte/fingerprint/main/DoubleClickCategory;->addItem(Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;)V

    goto :goto_2

    .line 352
    .end local v9    # "position":I
    :cond_6
    invoke-virtual {v8, v4}, Lcom/zte/fingerprint/main/DoubleClickCategory;->addItem(Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;)V

    goto :goto_2

    .line 377
    .end local v4    # "entry":Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;
    .restart local v11    # "privacySpaceInf":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v12    # "privacyStatus":Ljava/lang/String;
    :cond_7
    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$6()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "fixedRecommendedApps["

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "] = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;

    .line 379
    .local v3, "e":Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;
    if-eqz v3, :cond_8

    .line 380
    const/4 v15, 0x0

    invoke-virtual {v13, v15, v3}, Lcom/zte/fingerprint/main/DoubleClickCategory;->addItem(ILcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;)V

    .line 376
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/main/DoubleClickCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/zte/fingerprint/main/DoubleClickCategory;>;"
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 478
    invoke-virtual {p0, p1}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 479
    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/main/DoubleClickCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 512
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/zte/fingerprint/main/DoubleClickCategory;>;"
    return-void
.end method

.method protected onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 486
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 489
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->onStopLoading()V

    .line 493
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 495
    iput-object v2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->mApps:Ljava/util/List;

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->mPackageObserver:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$PackageIntentReceiver;

    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->mPackageObserver:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$PackageIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 501
    iput-object v2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->mPackageObserver:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$PackageIntentReceiver;

    .line 503
    :cond_1
    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    .prologue
    .line 437
    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->deliverResult(Ljava/util/List;)V

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->mPackageObserver:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$PackageIntentReceiver;

    if-nez v1, :cond_1

    .line 445
    new-instance v1, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$PackageIntentReceiver;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$PackageIntentReceiver;-><init>(Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;)V

    iput-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->mPackageObserver:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$PackageIntentReceiver;

    .line 450
    :cond_1
    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->mLastConfig:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$InterestingConfigChanges;

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 451
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 450
    invoke-virtual {v1, v2}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 453
    .local v0, "configChange":Z
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    .line 456
    :cond_2
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->forceLoad()V

    .line 458
    :cond_3
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->cancelLoad()Z

    .line 467
    return-void
.end method
