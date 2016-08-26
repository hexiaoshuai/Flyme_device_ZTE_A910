.class Lcom/zte/fingerprint/main/SelectDoubleClickActivity$3;
.super Ljava/lang/Object;
.source "SelectDoubleClickActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/SelectDoubleClickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$3;->sCollator:Ljava/text/Collator;

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;)I
    .locals 3
    .param p1, "object1"    # Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;
    .param p2, "object2"    # Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$3;->sCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;

    check-cast p2, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;

    invoke-virtual {p0, p1, p2}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$3;->compare(Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;)I

    move-result v0

    return v0
.end method
