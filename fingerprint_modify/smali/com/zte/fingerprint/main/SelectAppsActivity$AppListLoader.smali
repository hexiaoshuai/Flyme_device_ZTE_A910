.class public Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;
.super Landroid/content/AsyncTaskLoader;
.source "SelectAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/SelectAppsActivity;
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
        "Lcom/zte/fingerprint/main/Category;",
        ">;>;"
    }
.end annotation


# instance fields
.field mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/main/Category;",
            ">;"
        }
    .end annotation
.end field

.field final mLastConfig:Lcom/zte/fingerprint/main/SelectAppsActivity$InterestingConfigChanges;

.field mPackageObserver:Lcom/zte/fingerprint/main/SelectAppsActivity$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 231
    new-instance v0, Lcom/zte/fingerprint/main/SelectAppsActivity$InterestingConfigChanges;

    invoke-direct {v0}, Lcom/zte/fingerprint/main/SelectAppsActivity$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->mLastConfig:Lcom/zte/fingerprint/main/SelectAppsActivity$InterestingConfigChanges;

    .line 243
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    .line 244
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/main/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/zte/fingerprint/main/Category;>;"
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p0, p1}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 358
    :cond_0
    move-object v0, p1

    .line 359
    .local v0, "oldApps":Ljava/util/List;, "Ljava/util/List<Lcom/zte/fingerprint/main/Category;>;"
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->mApps:Ljava/util/List;

    .line 361
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 370
    :cond_1
    if-eqz v0, :cond_2

    .line 371
    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 373
    :cond_2
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/main/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v9, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v9, "mainIntent":Landroid/content/Intent;
    const-string v18, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 257
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_0

    .line 258
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .restart local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v3, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/zte/fingerprint/main/Category;>;"
    new-instance v15, Lcom/zte/fingerprint/main/Category;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f090082

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lcom/zte/fingerprint/main/Category;-><init>(Ljava/lang/String;)V

    .line 264
    .local v15, "selectedAppCategory":Lcom/zte/fingerprint/main/Category;
    new-instance v16, Lcom/zte/fingerprint/main/Category;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f090083

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/zte/fingerprint/main/Category;-><init>(Ljava/lang/String;)V

    .line 265
    .local v16, "suggestAppsCategory":Lcom/zte/fingerprint/main/Category;
    new-instance v10, Lcom/zte/fingerprint/main/Category;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f090084

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Lcom/zte/fingerprint/main/Category;-><init>(Ljava/lang/String;)V

    .line 267
    .local v10, "otherAppsCategory":Lcom/zte/fingerprint/main/Category;
    new-instance v7, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader$1;

    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->FIXED_APPS_SIZE:I
    invoke-static {}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$4()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v7, v0, v1}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader$1;-><init>(Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;I)V

    .line 272
    .local v7, "fixedRecommendedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;>;"
    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$5()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "loadInBackground() AppListFragment.mCurrentPackageName:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->mCurrentPackageName:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$6()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 273
    const-string v20, "    AppListFragment.mCurrentClassName:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->mCurrentClassName:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$7()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 272
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v8, v0, :cond_4

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/zte/fingerprint/utils/CommonUtils;->getPrivacyStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 301
    .local v14, "privacyStatus":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->PRIVACY_SPACE_INTENT:Landroid/content/Intent;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$11()Landroid/content/Intent;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 302
    .local v13, "privacySpaceInf":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v18, "1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 303
    if-eqz v13, :cond_1

    .line 304
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_1

    .line 305
    new-instance v12, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v12, v0, v1}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;-><init>(Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;Landroid/content/pm/ResolveInfo;)V

    .line 306
    .local v12, "privacySpaceEntry":Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;
    invoke-virtual {v12}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v18

    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->mCurrentPackageName:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$6()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 307
    invoke-virtual {v12}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;->getClassName()Ljava/lang/String;

    move-result-object v18

    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->mCurrentClassName:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$7()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 308
    invoke-virtual {v15, v12}, Lcom/zte/fingerprint/main/Category;->addItem(Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;)V

    .line 315
    .end local v12    # "privacySpaceEntry":Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;
    :cond_1
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/zte/fingerprint/main/Category;->getAllData()Ljava/util/List;

    move-result-object v18

    sget-object v19, Lcom/zte/fingerprint/main/SelectAppsActivity;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static/range {v18 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 316
    invoke-virtual {v10}, Lcom/zte/fingerprint/main/Category;->getAllData()Ljava/util/List;

    move-result-object v18

    sget-object v19, Lcom/zte/fingerprint/main/SelectAppsActivity;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static/range {v18 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 319
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v8, v18, -0x1

    :goto_2
    if-gez v8, :cond_9

    .line 327
    invoke-virtual {v15}, Lcom/zte/fingerprint/main/Category;->getItemCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    .line 328
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 329
    .local v5, "emptyResolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v18, Landroid/content/pm/ActivityInfo;

    invoke-direct/range {v18 .. v18}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 330
    new-instance v18, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;-><init>(Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/zte/fingerprint/main/Category;->addItem(Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;)V

    .line 333
    .end local v5    # "emptyResolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-virtual/range {v16 .. v16}, Lcom/zte/fingerprint/main/Category;->getItemCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 335
    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$5()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "suggestAppsCategory.getItemCount() = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/zte/fingerprint/main/Category;->getItemCount()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_3
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    return-object v3

    .line 275
    .end local v13    # "privacySpaceInf":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14    # "privacyStatus":Ljava/lang/String;
    :cond_4
    new-instance v6, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;-><init>(Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;Landroid/content/pm/ResolveInfo;)V

    .line 279
    .local v6, "entry":Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;
    invoke-virtual {v6}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v18

    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->mCurrentPackageName:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$6()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 280
    invoke-virtual {v6}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;->getClassName()Ljava/lang/String;

    move-result-object v18

    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->mCurrentClassName:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$7()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 281
    invoke-virtual {v15, v6}, Lcom/zte/fingerprint/main/Category;->addItem(Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;)V

    .line 274
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 282
    :cond_5
    # invokes: Lcom/zte/fingerprint/main/SelectAppsActivity;->constructPkgAndCls(Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;)Ljava/lang/String;
    invoke-static {v6}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$8(Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;)Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/zte/fingerprint/main/SelectAppsActivity;->isSuggestApp(Ljava/lang/String;)Z
    invoke-static/range {v18 .. v18}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$9(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 283
    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->SUGGEST_APP:Ljava/util/HashMap;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$10()Ljava/util/HashMap;

    move-result-object v18

    # invokes: Lcom/zte/fingerprint/main/SelectAppsActivity;->constructPkgAndCls(Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;)Ljava/lang/String;
    invoke-static {v6}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$8(Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 284
    .local v11, "position":I
    if-ltz v11, :cond_6

    .line 286
    :try_start_0
    invoke-virtual {v7, v11, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 287
    :catch_0
    move-exception v17

    .line 288
    .local v17, "t":Ljava/lang/Throwable;
    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$5()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "loadInBackground() isSuggestApp t: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/zte/fingerprint/main/Category;->addItem(Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;)V

    goto :goto_3

    .line 292
    .end local v17    # "t":Ljava/lang/Throwable;
    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/zte/fingerprint/main/Category;->addItem(Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;)V

    goto :goto_3

    .line 295
    .end local v11    # "position":I
    :cond_7
    invoke-virtual {v10, v6}, Lcom/zte/fingerprint/main/Category;->addItem(Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;)V

    goto :goto_3

    .line 310
    .end local v6    # "entry":Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;
    .restart local v12    # "privacySpaceEntry":Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;
    .restart local v13    # "privacySpaceInf":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v14    # "privacyStatus":Ljava/lang/String;
    :cond_8
    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->PRIVACY_SPACE_POSITION:I
    invoke-static {}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$12()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v7, v0, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 320
    .end local v12    # "privacySpaceEntry":Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;
    :cond_9
    # getter for: Lcom/zte/fingerprint/main/SelectAppsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectAppsActivity;->access$5()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "fixedRecommendedApps["

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;

    .line 322
    .local v4, "e":Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;
    if-eqz v4, :cond_a

    .line 323
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/zte/fingerprint/main/Category;->addItem(ILcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;)V

    .line 319
    :cond_a
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_2
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/main/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/zte/fingerprint/main/Category;>;"
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 421
    invoke-virtual {p0, p1}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 422
    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/main/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/zte/fingerprint/main/Category;>;"
    return-void
.end method

.method protected onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 429
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 432
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->onStopLoading()V

    .line 436
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 438
    iput-object v2, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->mApps:Ljava/util/List;

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->mPackageObserver:Lcom/zte/fingerprint/main/SelectAppsActivity$PackageIntentReceiver;

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->mPackageObserver:Lcom/zte/fingerprint/main/SelectAppsActivity$PackageIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 444
    iput-object v2, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->mPackageObserver:Lcom/zte/fingerprint/main/SelectAppsActivity$PackageIntentReceiver;

    .line 446
    :cond_1
    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    .prologue
    .line 380
    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->deliverResult(Ljava/util/List;)V

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->mPackageObserver:Lcom/zte/fingerprint/main/SelectAppsActivity$PackageIntentReceiver;

    if-nez v1, :cond_1

    .line 388
    new-instance v1, Lcom/zte/fingerprint/main/SelectAppsActivity$PackageIntentReceiver;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$PackageIntentReceiver;-><init>(Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;)V

    iput-object v1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->mPackageObserver:Lcom/zte/fingerprint/main/SelectAppsActivity$PackageIntentReceiver;

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->mLastConfig:Lcom/zte/fingerprint/main/SelectAppsActivity$InterestingConfigChanges;

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 394
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 393
    invoke-virtual {v1, v2}, Lcom/zte/fingerprint/main/SelectAppsActivity$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 396
    .local v0, "configChange":Z
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    .line 399
    :cond_2
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->forceLoad()V

    .line 401
    :cond_3
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->cancelLoad()Z

    .line 410
    return-void
.end method
