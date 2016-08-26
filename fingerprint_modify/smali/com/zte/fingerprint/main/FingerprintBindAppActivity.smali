.class public Lcom/zte/fingerprint/main/FingerprintBindAppActivity;
.super Lcom/zte/mifavor/preference/PreferenceActivity;
.source "FingerprintBindAppActivity.java"

# interfaces
.implements Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private addFingerId:I

.field private dataInfs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/datatype/DataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fingerprintNames:[Ljava/lang/String;

.field private final mFingerprintActionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback$Stub;

.field private final mFingerprintUnlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback$Stub;

.field mFingerprintUnlockService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

.field private mFingureprintConnection:Landroid/content/ServiceConnection;

.field private mHandler:Landroid/os/Handler;

.field private mHighLightPreference:Lcom/zte/mifavor/preference/Preference;

.field private mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

.field private nameUtils:Lcom/zte/fingerprint/utils/NameUtils;

.field private preferenceCategory:Lcom/zte/mifavor/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;-><init>()V

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->TAG:Ljava/lang/String;

    .line 51
    const v0, 0xf69bf

    iput v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->addFingerId:I

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mHandler:Landroid/os/Handler;

    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->fingerprintNames:[Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$1;-><init>(Lcom/zte/fingerprint/main/FingerprintBindAppActivity;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mFingureprintConnection:Landroid/content/ServiceConnection;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mHighLightPreference:Lcom/zte/mifavor/preference/Preference;

    .line 76
    new-instance v0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$2;-><init>(Lcom/zte/fingerprint/main/FingerprintBindAppActivity;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mFingerprintUnlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback$Stub;

    .line 106
    new-instance v0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity$3;-><init>(Lcom/zte/fingerprint/main/FingerprintBindAppActivity;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mFingerprintActionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback$Stub;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/zte/fingerprint/main/FingerprintBindAppActivity;)V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->registerCallback()V

    return-void
.end method

.method static synthetic access$1(Lcom/zte/fingerprint/main/FingerprintBindAppActivity;)Lcom/zte/mifavor/preference/PreferenceCategory;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->preferenceCategory:Lcom/zte/mifavor/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$2(Lcom/zte/fingerprint/main/FingerprintBindAppActivity;Lcom/zte/mifavor/preference/Preference;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mHighLightPreference:Lcom/zte/mifavor/preference/Preference;

    return-void
.end method

.method static synthetic access$3(Lcom/zte/fingerprint/main/FingerprintBindAppActivity;)Lcom/zte/mifavor/preference/Preference;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mHighLightPreference:Lcom/zte/mifavor/preference/Preference;

    return-object v0
.end method

.method static synthetic access$4(Lcom/zte/fingerprint/main/FingerprintBindAppActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private findDataById(I)Lcom/zte/fingerprint/datatype/FingerData;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 341
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->dataInfs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 341
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/fingerprint/datatype/DataInfo;

    .local v0, "dataInfo":Lcom/zte/fingerprint/datatype/DataInfo;
    move-object v1, v0

    .line 342
    check-cast v1, Lcom/zte/fingerprint/datatype/FingerData;

    invoke-virtual {v1}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 343
    check-cast v0, Lcom/zte/fingerprint/datatype/FingerData;

    goto :goto_0
.end method

.method private getAppName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "in"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 164
    .local v0, "inf":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initComponent()V
    .locals 2

    .prologue
    .line 234
    const v1, 0x7f03003c

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->addPreferencesFromResource(I)V

    .line 235
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getPreferenceManager()Lcom/zte/mifavor/preference/PreferenceManager;

    move-result-object v0

    .line 236
    .local v0, "manager":Lcom/zte/mifavor/preference/PreferenceManager;
    const v1, 0x7f090054

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->preferenceCategory:Lcom/zte/mifavor/preference/PreferenceCategory;

    .line 237
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->initPrefference()V

    .line 238
    return-void
.end method

.method private registerCallback()V
    .locals 4

    .prologue
    .line 351
    :try_start_0
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mFingerprintUnlockService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mFingerprintUnlockService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mFingerprintUnlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback$Stub;

    invoke-interface {v1, v2}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;->registerCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    .line 353
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mFingerprintUnlockService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mFingerprintActionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback$Stub;

    invoke-interface {v1, v2}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;->registerFingerActionCallback(Lcom/android/fingerprints/keyguard/IFingerActionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registerCallback() e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unRegisterCallback()V
    .locals 4

    .prologue
    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mFingerprintUnlockService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mFingerprintUnlockService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mFingerprintUnlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback$Stub;

    invoke-interface {v1, v2}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;->unregisterCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    .line 364
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mFingerprintUnlockService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mFingerprintActionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback$Stub;

    invoke-interface {v1, v2}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;->unregisterFingerActionCallback(Lcom/android/fingerprints/keyguard/IFingerActionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 368
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unRegisterCallback() e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 154
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 155
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 156
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 160
    return-void
.end method

.method protected initPrefference()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 241
    iget-object v9, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->dataInfs:Ljava/util/List;

    invoke-static {v9}, Lcom/zte/fingerprint/utils/StringUtils;->hasChildren(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 242
    iget-object v9, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->dataInfs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 243
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->fingerprintNames:[Ljava/lang/String;

    array-length v9, v9

    if-ne v2, v9, :cond_3

    .line 249
    .end local v2    # "i":I
    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    if-eqz v9, :cond_7

    .line 250
    const-string v9, "FingerPrint"

    const-string v10, "getIds"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v9, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    invoke-virtual {v9}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->getIds()[I

    move-result-object v4

    .line 255
    .local v4, "ids":[I
    const-string v9, "pref:finger_count"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "key:finger_count"

    if-nez v4, :cond_4

    move v9, v8

    :goto_1
    invoke-interface {v10, v11, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 256
    if-eqz v4, :cond_1

    array-length v9, v4

    if-lez v9, :cond_1

    .line 257
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->dataInfs:Ljava/util/List;

    .line 258
    const/4 v5, 0x0

    .line 259
    .local v5, "index":I
    array-length v9, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v5

    .end local v5    # "index":I
    .local v6, "index":I
    :goto_2
    if-lt v8, v9, :cond_5

    .line 279
    .end local v4    # "ids":[I
    .end local v6    # "index":I
    :cond_1
    :goto_3
    iget-object v8, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->dataInfs:Ljava/util/List;

    if-nez v8, :cond_2

    .line 280
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->dataInfs:Ljava/util/List;

    .line 282
    :cond_2
    new-instance v1, Lcom/zte/fingerprint/datatype/FingerData;

    const v8, 0x7f090056

    invoke-virtual {p0, v8}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/zte/fingerprint/datatype/FingerData;-><init>(Ljava/lang/String;)V

    .line 283
    .local v1, "fingerData":Lcom/zte/fingerprint/datatype/FingerData;
    iget v8, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->addFingerId:I

    invoke-virtual {v1, v8}, Lcom/zte/fingerprint/datatype/FingerData;->setFingerId(I)V

    .line 284
    iget-object v8, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->dataInfs:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    return-void

    .line 244
    .end local v1    # "fingerData":Lcom/zte/fingerprint/datatype/FingerData;
    .restart local v2    # "i":I
    :cond_3
    iget-object v9, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->fingerprintNames:[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v10, v9, v2

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    .end local v2    # "i":I
    .restart local v4    # "ids":[I
    :cond_4
    :try_start_1
    array-length v9, v4

    goto :goto_1

    .line 259
    .restart local v6    # "index":I
    :cond_5
    aget v3, v4, v8

    .line 260
    .local v3, "id":I
    new-instance v1, Lcom/zte/fingerprint/datatype/FingerData;

    invoke-direct {v1}, Lcom/zte/fingerprint/datatype/FingerData;-><init>()V

    .line 261
    .restart local v1    # "fingerData":Lcom/zte/fingerprint/datatype/FingerData;
    invoke-virtual {v1, v3}, Lcom/zte/fingerprint/datatype/FingerData;->setFingerId(I)V

    .line 262
    const-string v10, "FingerPrint"

    const-string v11, "getIdName"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v10, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->nameUtils:Lcom/zte/fingerprint/utils/NameUtils;

    invoke-virtual {v10, v3}, Lcom/zte/fingerprint/utils/NameUtils;->getName(I)Ljava/lang/String;

    move-result-object v7

    .line 264
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_6

    .line 266
    iget-object v10, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    invoke-virtual {v10, v3}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->getIdName(I)Ljava/lang/String;

    move-result-object v7

    .line 268
    :cond_6
    invoke-virtual {v1, v7}, Lcom/zte/fingerprint/datatype/FingerData;->setFingerPrintName(Ljava/lang/String;)V

    .line 269
    iget-object v10, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->fingerprintNames:[Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {v1}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerPrintName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    .line 270
    iget-object v10, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->dataInfs:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v8, v8, 0x1

    move v6, v5

    .end local v5    # "index":I
    .restart local v6    # "index":I
    goto :goto_2

    .line 274
    .end local v1    # "fingerData":Lcom/zte/fingerprint/datatype/FingerData;
    .end local v3    # "id":I
    .end local v4    # "ids":[I
    .end local v6    # "index":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 135
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    new-instance v3, Lcom/zte/fingerprint/utils/NameUtils;

    invoke-direct {v3, p0}, Lcom/zte/fingerprint/utils/NameUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->nameUtils:Lcom/zte/fingerprint/utils/NameUtils;

    .line 137
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->TAG:Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->getManager(Ljava/lang/String;Landroid/content/Context;)Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    .line 138
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "color_sb"

    .line 139
    const v5, -0x959455

    .line 138
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const v0, 4287734701

    .line 140
    .local v0, "bg":I
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->initActionBar()V

    .line 142
    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->setIndicatorColor(I)V

    .line 144
    new-instance v1, Landroid/content/Intent;

    .line 145
    const-string v3, "com.zte.fingerprint.main.FingerprintUnlockService"

    .line 144
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, "service":Landroid/content/Intent;
    const-string v3, "com.zte.fingerprints"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mFingureprintConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v3, v4}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 149
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030046

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 150
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 151
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->unRegisterCallback()V

    .line 300
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mFingureprintConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 302
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->releaseManager(Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    .line 306
    :cond_0
    invoke-super {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->onDestroy()V

    .line 307
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 289
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 290
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->finish()V

    .line 292
    const/4 v1, 0x1

    .line 294
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 228
    invoke-super {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->onPause()V

    .line 230
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->unRegisterCallback()V

    .line 231
    return-void
.end method

.method public onPreferenceClick(Lcom/zte/mifavor/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Lcom/zte/mifavor/preference/Preference;

    .prologue
    const/4 v8, 0x0

    .line 314
    invoke-virtual {p1}, Lcom/zte/mifavor/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 315
    .local v2, "id":I
    invoke-direct {p0, v2}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->findDataById(I)Lcom/zte/fingerprint/datatype/FingerData;

    move-result-object v1

    .line 316
    .local v1, "fingerData":Lcom/zte/fingerprint/datatype/FingerData;
    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {v1}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerId()I

    move-result v5

    iget v6, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->addFingerId:I

    if-ne v5, v6, :cond_2

    .line 318
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->dataInfs:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->dataInfs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x6

    if-lt v5, v6, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090069

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 320
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 337
    :cond_0
    :goto_0
    return v8

    .line 323
    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "fingerNames"

    iget-object v6, p0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->fingerprintNames:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0, v4}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 327
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.zte.fingerprints"

    .line 328
    const-string v6, "com.zte.fingerprint.main.SelectAppsActivity"

    .line 327
    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .local v0, "c":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 330
    .local v3, "in":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 331
    const-string v5, "finger_print_id"

    invoke-virtual {p1}, Lcom/zte/mifavor/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v5, "finger_print_name"

    invoke-virtual {p1}, Lcom/zte/mifavor/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 334
    invoke-virtual {p0, v3}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 18

    .prologue
    .line 173
    invoke-super/range {p0 .. p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->onResume()V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v8

    .line 175
    .local v8, "screen":Lcom/zte/mifavor/preference/PreferenceScreen;
    if-eqz v8, :cond_0

    .line 176
    invoke-virtual {v8}, Lcom/zte/mifavor/preference/PreferenceScreen;->removeAll()V

    .line 178
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->initComponent()V

    .line 179
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->preferenceCategory:Lcom/zte/mifavor/preference/PreferenceCategory;

    new-instance v13, Ljava/lang/StringBuilder;

    const v14, 0x7f090054

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->dataInfs:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/5)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/zte/mifavor/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->dataInfs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 223
    invoke-direct/range {p0 .. p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->registerCallback()V

    .line 224
    return-void

    .line 180
    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/fingerprint/datatype/DataInfo;

    .local v1, "dataInfo":Lcom/zte/fingerprint/datatype/DataInfo;
    move-object v3, v1

    .line 181
    check-cast v3, Lcom/zte/fingerprint/datatype/FingerData;

    .line 182
    .local v3, "fingerData1":Lcom/zte/fingerprint/datatype/FingerData;
    new-instance v6, Lcom/zte/fingerprint/main/FingerPreference;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/zte/fingerprint/main/FingerPreference;-><init>(Landroid/content/Context;)V

    .line 183
    .local v6, "preference":Lcom/zte/mifavor/preference/Preference;
    invoke-virtual {v3}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerPrintName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/zte/mifavor/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerId()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/zte/mifavor/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 185
    const-string v12, "preference_finger_select_function"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-virtual {v6}, Lcom/zte/mifavor/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "fingerPrintDes":Ljava/lang/String;
    const-string v12, "\n"

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 187
    .local v7, "result":[Ljava/lang/String;
    array-length v14, v7

    const/4 v12, 0x0

    :goto_1
    if-lt v12, v14, :cond_4

    .line 192
    :try_start_0
    invoke-virtual {v3}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerId()I

    move-result v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->addFingerId:I

    if-eq v12, v14, :cond_3

    .line 193
    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 194
    .local v11, "type":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "FingerPrint onResume resid:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v2, 0x0

    .line 196
    .local v2, "extraStr":Ljava/lang/String;
    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 197
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v5, "in":Landroid/content/Intent;
    new-instance v12, Landroid/content/ComponentName;

    const/4 v14, 0x1

    aget-object v14, v7, v14

    const/4 v15, 0x2

    aget-object v15, v7, v15

    invoke-direct {v12, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 199
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getAppName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 201
    if-nez v2, :cond_5

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v6}, Lcom/zte/mifavor/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/zte/fingerprint/utils/CommonUtils;->removeBoundAppData(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    .end local v5    # "in":Landroid/content/Intent;
    :cond_2
    :goto_2
    if-nez v2, :cond_6

    .line 210
    const v12, 0x7f090081

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 209
    :goto_3
    invoke-virtual {v6, v12}, Lcom/zte/mifavor/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v2    # "extraStr":Ljava/lang/String;
    .end local v11    # "type":I
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/zte/mifavor/preference/Preference;->setOnPreferenceClickListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->preferenceCategory:Lcom/zte/mifavor/preference/PreferenceCategory;

    invoke-virtual {v12, v6}, Lcom/zte/mifavor/preference/PreferenceCategory;->addPreference(Lcom/zte/mifavor/preference/Preference;)Z

    goto/16 :goto_0

    .line 187
    :cond_4
    aget-object v9, v7, v12

    .line 188
    .local v9, "ss":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "FingerPrint onResume ss:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 203
    .end local v9    # "ss":Ljava/lang/String;
    .restart local v2    # "extraStr":Ljava/lang/String;
    .restart local v5    # "in":Landroid/content/Intent;
    .restart local v11    # "type":I
    :cond_5
    :try_start_1
    const-string v12, "0"

    invoke-static/range {p0 .. p0}, Lcom/zte/fingerprint/utils/CommonUtils;->getPrivacyStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 204
    const/4 v12, 0x1

    aget-object v12, v7, v12

    const/4 v14, 0x2

    aget-object v14, v7, v14

    invoke-static {v12, v14}, Lcom/zte/fingerprint/utils/CommonUtils;->isPrivacyComponent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v6}, Lcom/zte/mifavor/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/zte/fingerprint/utils/CommonUtils;->removeBoundAppData(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    const/4 v2, 0x0

    goto :goto_2

    .line 211
    .end local v5    # "in":Landroid/content/Intent;
    :cond_6
    const v12, 0x7f090087

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto :goto_3

    .line 213
    .end local v2    # "extraStr":Ljava/lang/String;
    .end local v11    # "type":I
    :catch_0
    move-exception v10

    .line 214
    .local v10, "t":Ljava/lang/Throwable;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 215
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "FingerPrint onResume Throwable: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const v12, 0x7f090081

    invoke-virtual {v6, v12}, Lcom/zte/mifavor/preference/Preference;->setSummary(I)V

    goto/16 :goto_4
.end method
