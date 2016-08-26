.class Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListLoader$1;
.super Ljava/util/ArrayList;
.source "SelectDoubleClickStartAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListLoader;->loadInBackground()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListLoader;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListLoader;I)V
    .locals 1
    .param p2, "$anonymous0"    # I

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListLoader$1;->this$1:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListLoader;

    .line 271
    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 272
    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListLoader$1;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListLoader$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
