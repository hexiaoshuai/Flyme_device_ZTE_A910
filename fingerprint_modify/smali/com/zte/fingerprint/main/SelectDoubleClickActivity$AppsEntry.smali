.class public Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;
.super Ljava/lang/Object;
.source "SelectDoubleClickActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/SelectDoubleClickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppsEntry"
.end annotation


# instance fields
.field private final mInfo:Landroid/content/pm/ResolveInfo;

.field private final mLoader:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;


# direct methods
.method public constructor <init>(Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .param p1, "loader"    # Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->mLoader:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;

    .line 170
    iput-object p2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    .line 171
    return-void
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->mLoader:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;

    iget-object v1, v1, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 180
    iget-object v2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->mLoader:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;

    iget-object v1, v1, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->mLoader:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;

    iget-object v1, v1, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    return-object v0
.end method
