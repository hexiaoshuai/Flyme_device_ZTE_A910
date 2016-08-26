.class public Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;
.super Ljava/lang/Object;
.source "SelectDoubleClickStartAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppEntry"
.end annotation


# instance fields
.field private final mInfo:Landroid/content/pm/ResolveInfo;

.field private final mLoader:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListLoader;


# direct methods
.method public constructor <init>(Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListLoader;Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .param p1, "loader"    # Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListLoader;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->mLoader:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListLoader;

    .line 118
    iput-object p2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    .line 119
    return-void
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->mLoader:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListLoader;

    iget-object v1, v1, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 128
    iget-object v2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->mLoader:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListLoader;

    iget-object v1, v1, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->mLoader:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListLoader;

    iget-object v1, v1, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    return-object v0
.end method
