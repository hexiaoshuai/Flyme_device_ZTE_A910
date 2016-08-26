.class public Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;
.super Ljava/lang/Object;
.source "SelectAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/SelectAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppEntry"
.end annotation


# instance fields
.field private final mInfo:Landroid/content/pm/ResolveInfo;

.field private final mLoader:Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;


# direct methods
.method public constructor <init>(Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .param p1, "loader"    # Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;->mLoader:Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;

    .line 114
    iput-object p2, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    .line 115
    return-void
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;->mLoader:Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;

    iget-object v1, v1, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 124
    iget-object v2, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;->mLoader:Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;

    iget-object v1, v1, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;->mLoader:Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;

    iget-object v1, v1, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 149
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    return-object v0
.end method
