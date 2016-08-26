.class public Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;
.super Lcom/zte/fingerprint/main/AbstractActivity;
.source "SelectDoubleClickStartAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;,
        Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListAdapter;,
        Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;,
        Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListLoader;,
        Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$InterestingConfigChanges;,
        Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$PackageIntentReceiver;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;",
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

.field public static mCurrentClassName:Ljava/lang/String;

.field public static mCurrentPackageName:Ljava/lang/String;

.field private static mSharedPreferencesEditors:Landroid/content/SharedPreferences$Editor;


# instance fields
.field private list:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;

.field private mCancleBtClickListener:Landroid/view/View$OnClickListener;

.field private mColor:I

.field private mFingerPrintKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-class v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.intent.action.ACTION_1_KEY_2_PRIVACY_SPACE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->PRIVACY_SPACE_INTENT:Landroid/content/Intent;

    .line 55
    const/4 v0, 0x1

    sput v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->PRIVACY_SPACE_POSITION:I

    .line 57
    const/4 v0, 0x2

    sput v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->FIXED_APPS_SIZE:I

    .line 58
    new-instance v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$1;-><init>(I)V

    sput-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->SUGGEST_APP:Ljava/util/HashMap;

    .line 160
    new-instance v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$2;

    invoke-direct {v0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$2;-><init>()V

    sput-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/zte/fingerprint/main/AbstractActivity;-><init>()V

    .line 71
    sget v0, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mColor:I

    .line 462
    new-instance v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$3;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$3;-><init>(Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mCancleBtClickListener:Landroid/view/View$OnClickListener;

    .line 51
    return-void
.end method

.method static synthetic access$0()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mSharedPreferencesEditors:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;)Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->list:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;

    return-object v0
.end method

.method static synthetic access$10(Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mCancleBtClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->FIXED_APPS_SIZE:I

    return v0
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    invoke-static {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->constructPkgAndCls(Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 218
    invoke-static {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->isSuggestApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->SUGGEST_APP:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$7()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->PRIVACY_SPACE_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$8()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->PRIVACY_SPACE_POSITION:I

    return v0
.end method

.method static synthetic access$9(Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mColor:I

    return v0
.end method

.method private static constructPkgAndCls(Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;)Ljava/lang/String;
    .locals 4
    .param p0, "entry"    # Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;

    .prologue
    .line 224
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppEntry;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 227
    :goto_0
    return-object v1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "constructPkgAndCls() t: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v1, ""

    goto :goto_0
.end method

.method private static isSuggestApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgAndClsName"    # Ljava/lang/String;

    .prologue
    .line 219
    sget-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->SUGGEST_APP:Ljava/util/HashMap;

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

    .line 76
    invoke-super {p0, p1}, Lcom/zte/fingerprint/main/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v1, 0x7f030042

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->setContentView(I)V

    .line 79
    const v1, 0x7f090088

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "finger_print_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mFingerPrintKey:Ljava/lang/String;

    .line 83
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 85
    const-string v2, "color_ccl"

    sget v3, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    .line 84
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mColor:I

    .line 91
    :goto_0
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 94
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;-><init>(Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;)V

    iput-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->list:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;

    .line 96
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->list:Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity$AppListFragment;

    invoke-virtual {v1, v4, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 98
    :cond_0
    const-string v1, "preference_finger_double_function"

    .line 99
    const/4 v2, 0x0

    .line 98
    invoke-virtual {p0, v1, v2}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 99
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 98
    sput-object v1, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mSharedPreferencesEditors:Landroid/content/SharedPreferences$Editor;

    .line 100
    return-void

    .line 87
    .end local v0    # "fm":Landroid/app/FragmentManager;
    :cond_1
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 88
    const-string v2, "common_controller_color"

    sget v3, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    .line 87
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mColor:I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Lcom/zte/fingerprint/main/AbstractActivity;->onDestroy()V

    .line 105
    return-void
.end method
