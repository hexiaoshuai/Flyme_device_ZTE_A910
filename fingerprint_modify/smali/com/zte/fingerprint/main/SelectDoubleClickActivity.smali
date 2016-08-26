.class public Lcom/zte/fingerprint/main/SelectDoubleClickActivity;
.super Lcom/zte/fingerprint/main/AbstractActivity;
.source "SelectDoubleClickActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListAdapter;,
        Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;,
        Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListLoader;,
        Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;,
        Lcom/zte/fingerprint/main/SelectDoubleClickActivity$InterestingConfigChanges;,
        Lcom/zte/fingerprint/main/SelectDoubleClickActivity$PackageIntentReceiver;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;",
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


# instance fields
.field private actionBarSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

.field private handler:Landroid/os/Handler;

.field private itemView:Landroid/widget/TextView;

.field private list:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;

.field private listView:Landroid/widget/ListView;

.field private mCancleBtClickListener:Landroid/view/View$OnClickListener;

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mFingerPrintKey:Ljava/lang/String;

.field private runnable:Ljava/lang/Runnable;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-class v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.intent.action.ACTION_1_KEY_2_PRIVACY_SPACE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->PRIVACY_SPACE_INTENT:Landroid/content/Intent;

    .line 52
    const/4 v0, 0x1

    sput v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->PRIVACY_SPACE_POSITION:I

    .line 54
    const/4 v0, 0x2

    sput v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->FIXED_APPS_SIZE:I

    .line 55
    new-instance v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$1;-><init>(I)V

    sput-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->SUGGEST_APP:Ljava/util/HashMap;

    .line 212
    new-instance v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$3;

    invoke-direct {v0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$3;-><init>()V

    sput-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/zte/fingerprint/main/AbstractActivity;-><init>()V

    .line 66
    sget v0, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mColor:I

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->handler:Landroid/os/Handler;

    .line 130
    new-instance v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$2;-><init>(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->runnable:Ljava/lang/Runnable;

    .line 515
    new-instance v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$4;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$4;-><init>(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mCancleBtClickListener:Landroid/view/View$OnClickListener;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$10()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->PRIVACY_SPACE_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$11()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->PRIVACY_SPACE_POSITION:I

    return v0
.end method

.method static synthetic access$12(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->view:Landroid/view/View;

    return-void
.end method

.method static synthetic access$13(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$14(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mColor:I

    return v0
.end method

.method static synthetic access$15(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mCancleBtClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$16(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->itemView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$17(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->itemView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->listView:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic access$2(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Z
    .locals 1

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->isDoubleClickChecked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mFingerPrintKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->list:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;

    return-object v0
.end method

.method static synthetic access$5()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->FIXED_APPS_SIZE:I

    return v0
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    invoke-static {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->constructPkgAndCls(Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 270
    invoke-static {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->isSuggestApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->SUGGEST_APP:Ljava/util/HashMap;

    return-object v0
.end method

.method private static constructPkgAndCls(Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;)Ljava/lang/String;
    .locals 4
    .param p0, "entry"    # Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;

    .prologue
    .line 276
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppsEntry;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 279
    :goto_0
    return-object v1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "constructPkgAndCls() t: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v1, ""

    goto :goto_0
.end method

.method private getFingerprintSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 862
    .line 863
    const-string v0, "com.zte.fingerprints_preferences"

    .line 864
    const/4 v1, 0x0

    .line 862
    invoke-virtual {p0, v0, v1}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private isDoubleClickChecked()Z
    .locals 3

    .prologue
    .line 850
    invoke-direct {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->getFingerprintSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "double_click_start_application"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isSuggestApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgAndClsName"    # Ljava/lang/String;

    .prologue
    .line 271
    sget-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->SUGGEST_APP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 856
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->actionBarSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    if-ne p1, v0, :cond_0

    .line 857
    invoke-direct {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->getFingerprintSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "double_click_start_application"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 859
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f06005a

    const/16 v7, 0x15

    const/16 v6, 0x10

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/zte/fingerprint/main/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v1, 0x7f03003a

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->setContentView(I)V

    .line 76
    const v1, 0x7f090088

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "finger_print_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mFingerPrintKey:Ljava/lang/String;

    .line 79
    iput-object p0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mContext:Landroid/content/Context;

    .line 80
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 82
    const-string v2, "color_ccl"

    sget v3, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    .line 81
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mColor:I

    .line 88
    :goto_0
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 91
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;-><init>(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)V

    iput-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->list:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;

    .line 93
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->list:Lcom/zte/fingerprint/main/SelectDoubleClickActivity$AppListFragment;

    invoke-virtual {v1, v8, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 96
    :cond_0
    new-instance v1, Lcom/zte/mifavor/widget/SwitchZTE;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/SwitchZTE;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->actionBarSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    .line 97
    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->actionBarSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v4, v4, v4}, Lcom/zte/mifavor/widget/SwitchZTE;->setPadding(IIII)V

    .line 98
    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->actionBarSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColor(I)V

    .line 99
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 101
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->actionBarSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    .line 103
    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v3, v5, v5, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 101
    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 106
    return-void

    .line 84
    .end local v0    # "fm":Landroid/app/FragmentManager;
    :cond_1
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 85
    const-string v2, "common_controller_color"

    sget v3, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    .line 84
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mColor:I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    invoke-super {p0}, Lcom/zte/fingerprint/main/AbstractActivity;->onDestroy()V

    .line 159
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 110
    sget-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->TAG:Ljava/lang/String;

    const-string v1, "onresume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mCurrentClassName:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->mCurrentPackageName:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    .line 113
    sget-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->TAG:Ljava/lang/String;

    const-string v1, "mCurrentClassName ==  && mCurrentPackageName == "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 119
    :goto_0
    invoke-direct {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->isDoubleClickChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->actionBarSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/widget/SwitchZTE;->setChecked(Z)V

    .line 124
    :goto_1
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->actionBarSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/widget/SwitchZTE;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    invoke-super {p0}, Lcom/zte/fingerprint/main/AbstractActivity;->onResume()V

    .line 127
    return-void

    .line 116
    :cond_0
    sget-object v0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->TAG:Ljava/lang/String;

    const-string v1, "mCurrentClassName !=  && mCurrentPackageName != "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->actionBarSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/SwitchZTE;->setChecked(Z)V

    goto :goto_1
.end method
