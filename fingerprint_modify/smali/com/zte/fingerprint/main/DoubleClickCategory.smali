.class public Lcom/zte/fingerprint/main/DoubleClickCategory;
.super Ljava/lang/Object;
.source "DoubleClickCategory.java"


# instance fields
.field private mVarietyItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mVarietyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "mCategroyName"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/fingerprint/main/DoubleClickCategory;->mVarietyItem:Ljava/util/List;

    .line 16
    iput-object p1, p0, Lcom/zte/fingerprint/main/DoubleClickCategory;->mVarietyName:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public addItem(ILcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pItemName"    # Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/fingerprint/main/DoubleClickCategory;->mVarietyItem:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29
    return-void
.end method

.method public addItem(Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;)V
    .locals 1
    .param p1, "pItemName"    # Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/fingerprint/main/DoubleClickCategory;->mVarietyItem:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public getAllData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zte/fingerprint/main/DoubleClickCategory;->mVarietyItem:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "pPosition"    # I

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 42
    .end local p0    # "this":Lcom/zte/fingerprint/main/DoubleClickCategory;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/zte/fingerprint/main/DoubleClickCategory;
    :cond_0
    iget-object v0, p0, Lcom/zte/fingerprint/main/DoubleClickCategory;->mVarietyItem:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/fingerprint/main/DoubleClickCategory;->mVarietyItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getmVarietyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/zte/fingerprint/main/DoubleClickCategory;->mVarietyName:Ljava/lang/String;

    return-object v0
.end method
