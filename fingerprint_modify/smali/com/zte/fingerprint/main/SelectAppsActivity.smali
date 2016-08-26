.class public Lcom/zte/fingerprint/main/SelectAppsActivity;
.super Lcom/zte/fingerprint/main/AbstractActivity;
.source "SelectAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;,
        Lcom/zte/fingerprint/main/SelectAppsActivity$AppListAdapter;,
        Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;,
        Lcom/zte/fingerprint/main/SelectAppsActivity$AppListLoader;,
        Lcom/zte/fingerprint/main/SelectAppsActivity$InterestingConfigChanges;,
        Lcom/zte/fingerprint/main/SelectAppsActivity$PackageIntentReceiver;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static FIXED_APPS_SIZE:I

.field private static PRIVACY_SPACE_INTENT:Landroid/content/Intent;

.field private static PRIVACY_SPACE_POSITION:I

.field private static SUGGEST_APP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String;

.field private static mCurrentClassName:Ljava/lang/String;

.field private static mCurrentPackageName:Ljava/lang/String;


# instance fields
.field private list:Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;

.field private mCancleBtClickListener:Landroid/view/View$OnClickListener;

.field private mColor:I

.field private mFingerPrintKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-class v0, Lcom/zte/fingerprint/main/SelectAppsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/fingerprint/main/SelectAppsActivity;->TAG:Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.intent.action.ACTION_1_KEY_2_PRIVACY_SPACE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zte/fingerprint/main/SelectAppsActivity;->PRIVACY_SPACE_INTENT:Landroid/content/Intent;

    .line 54
    const/4 v0, 0x1

    sput v0, Lcom/zte/fingerprint/main/SelectAppsActivity;->PRIVACY_SPACE_POSITION:I

    .line 56
    const/4 v0, 0x2

    sput v0, Lcom/zte/fingerprint/main/SelectAppsActivity;->FIXED_APPS_SIZE:I

    .line 57
    new-instance v0, Lcom/zte/fingerprint/main/SelectAppsActivity$1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/zte/fingerprint/main/SelectAppsActivity$1;-><init>(I)V

    sput-object v0, Lcom/zte/fingerprint/main/SelectAppsActivity;->SUGGEST_APP:Ljava/util/HashMap;

    .line 156
    new-instance v0, Lcom/zte/fingerprint/main/SelectAppsActivity$2;

    invoke-direct {v0}, Lcom/zte/fingerprint/main/SelectAppsActivity$2;-><init>()V

    sput-object v0, Lcom/zte/fingerprint/main/SelectAppsActivity;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/zte/fingerprint/main/AbstractActivity;-><init>()V

    .line 70
    sget v0, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity;->mColor:I

    .line 458
    new-instance v0, Lcom/zte/fingerprint/main/SelectAppsActivity$3;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$3;-><init>(Lcom/zte/fingerprint/main/SelectAppsActivity;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity;->mCancleBtClickListener:Landroid/view/View$OnClickListener;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/zte/fingerprint/main/SelectAppsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity;->mFingerPrintKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    sput-object p0, Lcom/zte/fingerprint/main/SelectAppsActivity;->mCurrentPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/zte/fingerprint/main/SelectAppsActivity;->SUGGEST_APP:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$11()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/zte/fingerprint/main/SelectAppsActivity;->PRIVACY_SPACE_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$12()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/zte/fingerprint/main/SelectAppsActivity;->PRIVACY_SPACE_POSITION:I

    return v0
.end method

.method static synthetic access$13(Lcom/zte/fingerprint/main/SelectAppsActivity;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity;->mColor:I

    return v0
.end method

.method static synthetic access$14(Lcom/zte/fingerprint/main/SelectAppsActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity;->mCancleBtClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    sput-object p0, Lcom/zte/fingerprint/main/SelectAppsActivity;->mCurrentClassName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/zte/fingerprint/main/SelectAppsActivity;)Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectAppsActivity;->list:Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;

    return-object v0
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/zte/fingerprint/main/SelectAppsActivity;->FIXED_APPS_SIZE:I

    return v0
.end method

.method static synthetic access$5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/zte/fingerprint/main/SelectAppsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/zte/fingerprint/main/SelectAppsActivity;->mCurrentPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/zte/fingerprint/main/SelectAppsActivity;->mCurrentClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    invoke-static {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity;->constructPkgAndCls(Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 214
    invoke-static {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity;->isSuggestApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static constructPkgAndCls(Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;)Ljava/lang/String;
    .locals 4
    .param p0, "entry"    # Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;

    .prologue
    .line 220
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppEntry;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 223
    :goto_0
    return-object v1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/zte/fingerprint/main/SelectAppsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "constructPkgAndCls() t: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v1, ""

    goto :goto_0
.end method

.method private static isSuggestApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgAndClsName"    # Ljava/lang/String;

    .prologue
    .line 215
    sget-object v0, Lcom/zte/fingerprint/main/SelectAppsActivity;->SUGGEST_APP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f06005a

    .line 74
    invoke-super {p0, p1}, Lcom/zte/fingerprint/main/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v1, 0x7f030042

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/SelectAppsActivity;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "finger_print_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/SelectAppsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "finger_print_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity;->mFingerPrintKey:Ljava/lang/String;

    .line 81
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 83
    const-string v2, "color_ccl"

    sget v3, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    .line 82
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity;->mColor:I

    .line 89
    :goto_0
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 92
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;-><init>(Lcom/zte/fingerprint/main/SelectAppsActivity;)V

    iput-object v1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity;->list:Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;

    .line 94
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/fingerprint/main/SelectAppsActivity;->list:Lcom/zte/fingerprint/main/SelectAppsActivity$AppListFragment;

    invoke-virtual {v1, v4, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 96
    :cond_0
    return-void

    .line 85
    .end local v0    # "fm":Landroid/app/FragmentManager;
    :cond_1
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectAppsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 86
    const-string v2, "common_controller_color"

    sget v3, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    .line 85
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/fingerprint/main/SelectAppsActivity;->mColor:I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Lcom/zte/fingerprint/main/AbstractActivity;->onDestroy()V

    .line 101
    return-void
.end method
