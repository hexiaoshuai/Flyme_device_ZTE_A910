.class public Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectDoubleClickStartAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation


# static fields
.field private static final TYPE_CATEGORY_ITEM:I = 0x0

.field private static final TYPE_ITEM:I = 0x2

.field private static final TYPE_SELECTED_ITEM:I = 0x1


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;",
            ">;"
        }
    .end annotation
.end field

.field public mcontext:Landroid/content/Context;

.field final synthetic this$0:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;


# direct methods
.method public constructor <init>(Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;

    .line 490
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 491
    iput-object p2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->mcontext:Landroid/content/Context;

    .line 493
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 492
    iput-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 494
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 669
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 513
    const/4 v1, 0x0

    .line 515
    .local v1, "count":I
    iget-object v2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->mListData:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 517
    iget-object v2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->mListData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 522
    :cond_0
    return v1

    .line 517
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;

    .line 518
    .local v0, "category":Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;
    invoke-virtual {v0}, Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;->getItemCount()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 607
    iget-object v5, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->mListData:Ljava/util/List;

    if-eqz v5, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->getCount()I

    move-result v5

    if-le p1, v5, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-object v4

    .line 612
    :cond_1
    const/4 v2, 0x0

    .line 614
    .local v2, "categroyFirstIndex":I
    iget-object v5, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->mListData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;

    .line 615
    .local v0, "category":Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;
    invoke-virtual {v0}, Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;->getItemCount()I

    move-result v3

    .line 617
    .local v3, "size":I
    sub-int v1, p1, v2

    .line 619
    .local v1, "categoryIndex":I
    if-ge v1, v3, :cond_2

    .line 620
    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 624
    :cond_2
    add-int/2addr v2, v3

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 632
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 643
    iget-object v6, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->mListData:Ljava/util/List;

    if-eqz v6, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->getCount()I

    move-result v6

    if-le p1, v6, :cond_2

    :cond_0
    move v4, v5

    .line 664
    :cond_1
    :goto_0
    return v4

    .line 647
    :cond_2
    if-eq p1, v4, :cond_1

    .line 651
    const/4 v2, 0x0

    .line 653
    .local v2, "categroyFirstIndex":I
    iget-object v4, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->mListData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    move v4, v5

    .line 664
    goto :goto_0

    .line 653
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;

    .line 654
    .local v0, "category":Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;
    invoke-virtual {v0}, Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;->getItemCount()I

    move-result v3

    .line 656
    .local v3, "size":I
    sub-int v1, p1, v2

    .line 657
    .local v1, "categoryIndex":I
    if-nez v1, :cond_4

    .line 658
    const/4 v4, 0x0

    goto :goto_0

    .line 661
    :cond_4
    add-int/2addr v2, v3

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 530
    const/4 v10, 0x0

    .line 531
    .local v10, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p1}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 532
    .local v4, "data":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p1}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->getItemViewType(I)I

    move-result v7

    .line 534
    .local v7, "itemViewType":I
    packed-switch v7, :pswitch_data_0

    .line 601
    :goto_0
    return-object v10

    .line 536
    :pswitch_0
    if-nez p2, :cond_0

    .line 537
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 538
    const v12, 0x7f030043

    .line 539
    const/4 v13, 0x0

    .line 537
    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    :goto_1
    move-object v2, v4

    .line 544
    check-cast v2, Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;

    .line 545
    .local v2, "categoryData":Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;
    const v11, 0x7f06006e

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 546
    .local v3, "categoryView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mColor:I
    invoke-static {v11}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->access$9(Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 547
    invoke-virtual {v2}, Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;->getmVarietyName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 541
    .end local v2    # "categoryData":Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;
    .end local v3    # "categoryView":Landroid/widget/TextView;
    :cond_0
    move-object/from16 v10, p2

    goto :goto_1

    .line 551
    :pswitch_1
    if-nez p2, :cond_1

    .line 552
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 553
    const v12, 0x7f030045

    .line 554
    const/4 v13, 0x0

    .line 552
    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    :goto_2
    move-object v5, v4

    .line 559
    check-cast v5, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;

    .line 560
    .local v5, "itemData":Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;
    const v11, 0x7f06006f

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 561
    .local v9, "selectedView":Landroid/widget/TextView;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v11, v12, v13, v14}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 562
    const v11, 0x7f060070

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 564
    .local v1, "cancleIcon":Landroid/view/View;
    invoke-virtual {v5}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 565
    invoke-virtual {v5}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 566
    const v11, 0x7f090085

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 567
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 556
    .end local v1    # "cancleIcon":Landroid/view/View;
    .end local v5    # "itemData":Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;
    .end local v9    # "selectedView":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v10, p2

    goto :goto_2

    .line 569
    .restart local v1    # "cancleIcon":Landroid/view/View;
    .restart local v5    # "itemData":Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;
    .restart local v9    # "selectedView":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v5}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 570
    .local v8, "leftDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;

    invoke-virtual {v13}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080030

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;

    invoke-virtual {v14}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080031

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 571
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v8, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 572
    invoke-virtual {v5}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 575
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mCancleBtClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v11}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->access$10(Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;)Landroid/view/View$OnClickListener;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 580
    .end local v1    # "cancleIcon":Landroid/view/View;
    .end local v5    # "itemData":Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;
    .end local v8    # "leftDrawable":Landroid/graphics/drawable/Drawable;
    .end local v9    # "selectedView":Landroid/widget/TextView;
    :pswitch_2
    if-nez p2, :cond_3

    .line 581
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 582
    const v12, 0x7f030044

    .line 583
    const/4 v13, 0x0

    .line 581
    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    :goto_3
    move-object v5, v4

    .line 588
    check-cast v5, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;

    .line 589
    .restart local v5    # "itemData":Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;
    const v11, 0x7f06005b

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 590
    .local v6, "itemView":Landroid/widget/TextView;
    invoke-virtual {v5}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 591
    .restart local v8    # "leftDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;

    invoke-virtual {v13}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080030

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;

    invoke-virtual {v14}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080031

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 592
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6, v8, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 593
    invoke-virtual {v5}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    invoke-virtual {v5}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 585
    .end local v5    # "itemData":Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;
    .end local v6    # "itemView":Landroid/widget/TextView;
    .end local v8    # "leftDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v10, p2

    goto :goto_3

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 674
    invoke-virtual {p0, p1}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/zte/fingerprint/main/DoubleClickStartAppCategory;>;"
    if-eqz p1, :cond_0

    .line 506
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->mListData:Ljava/util/List;

    .line 507
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;->notifyDataSetChanged()V

    .line 509
    :cond_0
    return-void
.end method
