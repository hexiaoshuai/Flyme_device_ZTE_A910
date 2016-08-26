.class public Lcom/zte/fingerprint/main/SelectDoubleClickActivity$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SelectDoubleClickActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/SelectDoubleClickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field final mLoader:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;


# direct methods
.method public constructor <init>(Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;)V
    .locals 3
    .param p1, "loader"    # Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;

    .prologue
    .line 249
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$PackageIntentReceiver;->mLoader:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;

    .line 251
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$PackageIntentReceiver;->mLoader:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;

    invoke-virtual {v2}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 258
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$PackageIntentReceiver;->mLoader:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;

    invoke-virtual {v2}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$PackageIntentReceiver;->mLoader:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;

    invoke-virtual {v0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->onContentChanged()V

    .line 267
    return-void
.end method
