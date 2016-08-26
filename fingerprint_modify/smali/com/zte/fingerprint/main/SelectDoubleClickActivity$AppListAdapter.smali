.class public Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectDoubleClickActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/SelectDoubleClickActivity;
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
            "Lcom/zte/fingerprint/main/DoubleClickCategory;",
            ">;"
        }
    .end annotation
.end field

.field public mcontext:Landroid/content/Context;

.field final synthetic this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;


# direct methods
.method public constructor <init>(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    .line 538
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 539
    iput-object p2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->mcontext:Landroid/content/Context;

    .line 541
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 540
    iput-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 542
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 561
    const/4 v0, 0x0

    .line 563
    .local v0, "count":I
    iget-object v2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->mListData:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 565
    iget-object v2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->mListData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 570
    :cond_0
    return v0

    .line 565
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/fingerprint/main/DoubleClickCategory;

    .line 566
    .local v1, "variety":Lcom/zte/fingerprint/main/DoubleClickCategory;
    invoke-virtual {v1}, Lcom/zte/fingerprint/main/DoubleClickCategory;->getItemCount()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 668
    iget-object v5, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->mListData:Ljava/util/List;

    if-eqz v5, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->getCount()I

    move-result v5

    if-le p1, v5, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-object v4

    .line 673
    :cond_1
    const/4 v0, 0x0

    .line 675
    .local v0, "categroyFirstIndex":I
    iget-object v5, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->mListData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/fingerprint/main/DoubleClickCategory;

    .line 676
    .local v2, "variety":Lcom/zte/fingerprint/main/DoubleClickCategory;
    invoke-virtual {v2}, Lcom/zte/fingerprint/main/DoubleClickCategory;->getItemCount()I

    move-result v1

    .line 678
    .local v1, "size":I
    sub-int v3, p1, v0

    .line 680
    .local v3, "varietyIndex":I
    if-ge v3, v1, :cond_2

    .line 681
    invoke-virtual {v2, v3}, Lcom/zte/fingerprint/main/DoubleClickCategory;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 685
    :cond_2
    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 693
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x2

    .line 704
    iget-object v5, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->mListData:Ljava/util/List;

    if-eqz v5, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->getCount()I

    move-result v5

    if-le p1, v5, :cond_1

    .line 726
    :cond_0
    :goto_0
    return v4

    .line 708
    :cond_1
    const/4 v5, 0x1

    if-eq p1, v5, :cond_0

    .line 713
    const/4 v0, 0x0

    .line 715
    .local v0, "categroyFirstIndex":I
    iget-object v5, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->mListData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/fingerprint/main/DoubleClickCategory;

    .line 716
    .local v2, "variety":Lcom/zte/fingerprint/main/DoubleClickCategory;
    invoke-virtual {v2}, Lcom/zte/fingerprint/main/DoubleClickCategory;->getItemCount()I

    move-result v1

    .line 718
    .local v1, "size":I
    sub-int v3, p1, v0

    .line 719
    .local v3, "varietyIndex":I
    if-nez v3, :cond_2

    .line 720
    const/4 v4, 0x0

    goto :goto_0

    .line 723
    :cond_2
    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 579
    iget-object v9, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$12(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;Landroid/view/View;)V

    .line 580
    invoke-virtual {p0, p1}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 581
    .local v2, "data":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->getItemViewType(I)I

    move-result v4

    .line 583
    .local v4, "itemViewType":I
    packed-switch v4, :pswitch_data_0

    .line 662
    :goto_0
    iget-object v9, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->view:Landroid/view/View;
    invoke-static {v9}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$13(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/view/View;

    move-result-object v9

    return-object v9

    .line 585
    :pswitch_0
    if-nez p2, :cond_0

    .line 586
    iget-object v9, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    iget-object v10, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 587
    const v11, 0x7f030043

    .line 588
    const/4 v12, 0x0

    .line 586
    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$12(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;Landroid/view/View;)V

    :goto_1
    move-object v7, v2

    .line 593
    check-cast v7, Lcom/zte/fingerprint/main/DoubleClickCategory;

    .line 594
    .local v7, "varietyData":Lcom/zte/fingerprint/main/DoubleClickCategory;
    iget-object v9, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->view:Landroid/view/View;
    invoke-static {v9}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$13(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f06006e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 595
    .local v8, "varietyView":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mColor:I
    invoke-static {v9}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$14(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 596
    invoke-virtual {v7}, Lcom/zte/fingerprint/main/DoubleClickCategory;->getmVarietyName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 590
    .end local v7    # "varietyData":Lcom/zte/fingerprint/main/DoubleClickCategory;
    .end local v8    # "varietyView":Landroid/widget/TextView;
    :cond_0
    iget-object v9, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$12(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;Landroid/view/View;)V

    goto :goto_1

    .line 600
    :pswitch_1
    if-nez p2, :cond_1

    .line 601
    iget-object v9, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    iget-object v10, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 602
    const v11, 0x7f030045

    .line 603
    const/4 v12, 0x0

    .line 601
    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$12(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;Landroid/view/View;)V

    :goto_2
    move-object v3, v2

    .line 608
    check-cast v3, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;

    .line 609
    .local v3, "itemData":Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;
    iget-object v9, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->view:Landroid/view/View;
    invoke-static {v9}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$13(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f06006f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 610
    .local v6, "selectedView":Landroid/widget/TextView;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 611
    iget-object v9, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->view:Landroid/view/View;
    invoke-static {v9}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$13(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f060070

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 613
    .local v1, "cancleIcon":Landroid/view/View;
    invoke-virtual {v3}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 614
    invoke-virtual {v3}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 615
    const v9, 0x7f090085

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 616
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 605
    .end local v1    # "cancleIcon":Landroid/view/View;
    .end local v3    # "itemData":Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;
    .end local v6    # "selectedView":Landroid/widget/TextView;
    :cond_1
    iget-object v9, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$12(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;Landroid/view/View;)V

    goto :goto_2

    .line 618
    .restart local v1    # "cancleIcon":Landroid/view/View;
    .restart local v3    # "itemData":Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;
    .restart local v6    # "selectedView":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v3}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 619
    .local v5, "leftDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    invoke-virtual {v11}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080030

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iget-object v12, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    invoke-virtual {v12}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080031

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 620
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v5, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 621
    invoke-virtual {v3}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 624
    iget-object v9, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mCancleBtClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v9}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$15(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/view/View$OnClickListener;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 629
    .end local v1    # "cancleIcon":Landroid/view/View;
    .end local v3    # "itemData":Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;
    .end local v5    # "leftDrawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "selectedView":Landroid/widget/TextView;
    :pswitch_2
    if-nez p2, :cond_4

    .line 630
    iget-object v9, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    iget-object v10, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 631
    const v11, 0x7f03003b

    .line 632
    const/4 v12, 0x0

    .line 630
    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$12(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;Landroid/view/View;)V

    :goto_3
    move-object v3, v2

    .line 637
    check-cast v3, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;

    .line 638
    .restart local v3    # "itemData":Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;
    iget-object v10, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    iget-object v9, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->view:Landroid/view/View;
    invoke-static {v9}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$13(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/view/View;

    move-result-object v9

    const v11, 0x7f06005b

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-static {v10, v9}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$16(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;Landroid/widget/TextView;)V

    .line 639
    invoke-virtual {v3}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 640
    .restart local v5    # "leftDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    invoke-virtual {v11}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080030

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iget-object v12, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    invoke-virtual {v12}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080031

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 641
    iget-object v9, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->itemView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$17(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/widget/TextView;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v5, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 642
    iget-object v9, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->itemView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$17(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v3}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    iget-object v9, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->view:Landroid/view/View;
    invoke-static {v9}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$13(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v3}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 645
    invoke-virtual {v3}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->getPackageName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mCurrentPackageName:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 646
    invoke-virtual {v3}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->getClassName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mCurrentClassName:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 647
    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$6()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "isCheched SelectDoubleClickActivity.mCurrentPackageName = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 648
    const-string v11, ";  SelectDoubleClickActivity.mCurrentClassName ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mCurrentClassName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 647
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v9, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->listView:Landroid/widget/ListView;
    invoke-static {v9}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$1(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/widget/ListView;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, p1, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 652
    :cond_3
    iget-object v9, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # invokes: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->isDoubleClickChecked()Z
    invoke-static {v9}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$2(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 653
    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$6()Ljava/lang/String;

    move-result-object v9

    const-string v10, "!------isDoubleClickChecked()"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v9, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->view:Landroid/view/View;
    invoke-static {v9}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$13(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 634
    .end local v3    # "itemData":Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;
    .end local v5    # "leftDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v9, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$12(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;Landroid/view/View;)V

    goto/16 :goto_3

    .line 656
    .restart local v3    # "itemData":Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;
    .restart local v5    # "leftDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$6()Ljava/lang/String;

    move-result-object v9

    const-string v10, "isDoubleClickChecked()"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v9, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->view:Landroid/view/View;
    invoke-static {v9}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$13(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 583
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
    .line 698
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 737
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # invokes: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->isDoubleClickChecked()Z
    invoke-static {v0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$2(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    const/4 v0, 0x1

    .line 740
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
            "Lcom/zte/fingerprint/main/DoubleClickCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 553
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/zte/fingerprint/main/DoubleClickCategory;>;"
    if-eqz p1, :cond_0

    .line 554
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->mListData:Ljava/util/List;

    .line 555
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;->notifyDataSetChanged()V

    .line 557
    :cond_0
    return-void
.end method
