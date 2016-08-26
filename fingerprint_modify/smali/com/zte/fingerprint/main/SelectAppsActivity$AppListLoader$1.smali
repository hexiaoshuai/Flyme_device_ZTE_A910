.class Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader$1;
.super Ljava/util/ArrayList;
.source "SelectAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->loadInBackground()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;I)V
    .locals 1
    .param p2, "$anonymous0"    # I

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader$1;->this$1:Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;

    .line 267
    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 268
    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader$1;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
