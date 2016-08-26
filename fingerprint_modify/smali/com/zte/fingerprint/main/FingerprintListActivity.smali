.class public Lcom/zte/fingerprint/main/FingerprintListActivity;
.super Lcom/zte/mifavor/preference/PreferenceActivity;
.source "FingerprintListActivity.java"

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

.field private preferenceCategory:Lcom/zte/mifavor/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;-><init>()V

    .line 47
    const-string v0, "FingerprintListActivity"

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->TAG:Ljava/lang/String;

    .line 50
    const v0, 0xf69bf

    iput v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->addFingerId:I

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mHandler:Landroid/os/Handler;

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->fingerprintNames:[Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/zte/fingerprint/main/FingerprintListActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/main/FingerprintListActivity$1;-><init>(Lcom/zte/fingerprint/main/FingerprintListActivity;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mFingureprintConnection:Landroid/content/ServiceConnection;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mHighLightPreference:Lcom/zte/mifavor/preference/Preference;

    .line 75
    new-instance v0, Lcom/zte/fingerprint/main/FingerprintListActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/main/FingerprintListActivity$2;-><init>(Lcom/zte/fingerprint/main/FingerprintListActivity;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mFingerprintUnlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback$Stub;

    .line 105
    new-instance v0, Lcom/zte/fingerprint/main/FingerprintListActivity$3;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/main/FingerprintListActivity$3;-><init>(Lcom/zte/fingerprint/main/FingerprintListActivity;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mFingerprintActionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback$Stub;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/zte/fingerprint/main/FingerprintListActivity;)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->registerCallback()V

    return-void
.end method

.method static synthetic access$1(Lcom/zte/fingerprint/main/FingerprintListActivity;)Lcom/zte/mifavor/preference/PreferenceCategory;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->preferenceCategory:Lcom/zte/mifavor/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$2(Lcom/zte/fingerprint/main/FingerprintListActivity;Lcom/zte/mifavor/preference/Preference;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mHighLightPreference:Lcom/zte/mifavor/preference/Preference;

    return-void
.end method

.method static synthetic access$3(Lcom/zte/fingerprint/main/FingerprintListActivity;)Lcom/zte/mifavor/preference/Preference;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mHighLightPreference:Lcom/zte/mifavor/preference/Preference;

    return-object v0
.end method

.method static synthetic access$4(Lcom/zte/fingerprint/main/FingerprintListActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private findDataById(I)Lcom/zte/fingerprint/datatype/FingerData;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 293
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->dataInfs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 293
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/fingerprint/datatype/DataInfo;

    .local v0, "dataInfo":Lcom/zte/fingerprint/datatype/DataInfo;
    move-object v1, v0

    .line 294
    check-cast v1, Lcom/zte/fingerprint/datatype/FingerData;

    invoke-virtual {v1}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 295
    check-cast v0, Lcom/zte/fingerprint/datatype/FingerData;

    goto :goto_0
.end method

.method private initComponent()V
    .locals 2

    .prologue
    .line 189
    const v1, 0x7f03003c

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/FingerprintListActivity;->addPreferencesFromResource(I)V

    .line 190
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->getPreferenceManager()Lcom/zte/mifavor/preference/PreferenceManager;

    move-result-object v0

    .line 191
    .local v0, "manager":Lcom/zte/mifavor/preference/PreferenceManager;
    const v1, 0x7f090054

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/FingerprintListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->preferenceCategory:Lcom/zte/mifavor/preference/PreferenceCategory;

    .line 192
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->initPrefference()V

    .line 193
    return-void
.end method

.method private registerCallback()V
    .locals 4

    .prologue
    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mFingerprintUnlockService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mFingerprintUnlockService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mFingerprintUnlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback$Stub;

    invoke-interface {v1, v2}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;->registerCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    .line 305
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mFingerprintUnlockService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mFingerprintActionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback$Stub;

    invoke-interface {v1, v2}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;->registerFingerActionCallback(Lcom/android/fingerprints/keyguard/IFingerActionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintListActivity"

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
    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mFingerprintUnlockService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mFingerprintUnlockService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mFingerprintUnlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback$Stub;

    invoke-interface {v1, v2}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;->unregisterCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    .line 316
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mFingerprintUnlockService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mFingerprintActionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback$Stub;

    invoke-interface {v1, v2}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;->unregisterFingerActionCallback(Lcom/android/fingerprints/keyguard/IFingerActionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 320
    const-string v1, "FingerprintListActivity"

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

    .line 152
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 153
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 154
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 158
    return-void
.end method

.method protected initPrefference()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 196
    iget-object v10, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->dataInfs:Ljava/util/List;

    invoke-static {v10}, Lcom/zte/fingerprint/utils/StringUtils;->hasChildren(Ljava/util/Collection;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 197
    iget-object v10, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->dataInfs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 198
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v10, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->fingerprintNames:[Ljava/lang/String;

    array-length v10, v10

    if-ne v2, v10, :cond_3

    .line 204
    .end local v2    # "i":I
    :cond_0
    :try_start_0
    iget-object v10, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    if-eqz v10, :cond_7

    .line 205
    const-string v10, "FingerprintListActivity"

    const-string v11, "getIds"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v10, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    invoke-virtual {v10}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->getIds()[I

    move-result-object v4

    .line 210
    .local v4, "ids":[I
    new-instance v8, Lcom/zte/fingerprint/utils/NameUtils;

    invoke-direct {v8, p0}, Lcom/zte/fingerprint/utils/NameUtils;-><init>(Landroid/content/Context;)V

    .line 211
    .local v8, "nameUtils":Lcom/zte/fingerprint/utils/NameUtils;
    const-string v10, "pref:finger_count"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/zte/fingerprint/main/FingerprintListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "key:finger_count"

    if-nez v4, :cond_4

    move v10, v9

    :goto_1
    invoke-interface {v11, v12, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    if-eqz v4, :cond_1

    array-length v10, v4

    if-lez v10, :cond_1

    .line 213
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->dataInfs:Ljava/util/List;

    .line 214
    const/4 v5, 0x0

    .line 215
    .local v5, "index":I
    array-length v10, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v5

    .end local v5    # "index":I
    .local v6, "index":I
    :goto_2
    if-lt v9, v10, :cond_5

    .line 236
    .end local v4    # "ids":[I
    .end local v6    # "index":I
    .end local v8    # "nameUtils":Lcom/zte/fingerprint/utils/NameUtils;
    :cond_1
    :goto_3
    iget-object v9, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->dataInfs:Ljava/util/List;

    if-nez v9, :cond_2

    .line 237
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->dataInfs:Ljava/util/List;

    .line 239
    :cond_2
    new-instance v1, Lcom/zte/fingerprint/datatype/FingerData;

    const v9, 0x7f090056

    invoke-virtual {p0, v9}, Lcom/zte/fingerprint/main/FingerprintListActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/zte/fingerprint/datatype/FingerData;-><init>(Ljava/lang/String;)V

    .line 240
    .local v1, "fingerData":Lcom/zte/fingerprint/datatype/FingerData;
    iget v9, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->addFingerId:I

    invoke-virtual {v1, v9}, Lcom/zte/fingerprint/datatype/FingerData;->setFingerId(I)V

    .line 241
    iget-object v9, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->dataInfs:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-void

    .line 199
    .end local v1    # "fingerData":Lcom/zte/fingerprint/datatype/FingerData;
    .restart local v2    # "i":I
    :cond_3
    iget-object v10, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->fingerprintNames:[Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v11, v10, v2

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v2    # "i":I
    .restart local v4    # "ids":[I
    .restart local v8    # "nameUtils":Lcom/zte/fingerprint/utils/NameUtils;
    :cond_4
    :try_start_1
    array-length v10, v4

    goto :goto_1

    .line 215
    .restart local v6    # "index":I
    :cond_5
    aget v3, v4, v9

    .line 216
    .local v3, "id":I
    new-instance v1, Lcom/zte/fingerprint/datatype/FingerData;

    invoke-direct {v1}, Lcom/zte/fingerprint/datatype/FingerData;-><init>()V

    .line 217
    .restart local v1    # "fingerData":Lcom/zte/fingerprint/datatype/FingerData;
    invoke-virtual {v1, v3}, Lcom/zte/fingerprint/datatype/FingerData;->setFingerId(I)V

    .line 218
    const-string v11, "FingerprintListActivity"

    const-string v12, "getIdName"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v8, v3}, Lcom/zte/fingerprint/utils/NameUtils;->getName(I)Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_6

    .line 222
    iget-object v11, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    invoke-virtual {v11, v3}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->getIdName(I)Ljava/lang/String;

    move-result-object v7

    .line 223
    invoke-virtual {v8, v3, v7}, Lcom/zte/fingerprint/utils/NameUtils;->setName(ILjava/lang/String;)V

    .line 225
    :cond_6
    invoke-virtual {v1, v7}, Lcom/zte/fingerprint/datatype/FingerData;->setFingerPrintName(Ljava/lang/String;)V

    .line 226
    iget-object v11, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->fingerprintNames:[Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {v1}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerPrintName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    .line 227
    iget-object v11, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->dataInfs:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v9, v9, 0x1

    move v6, v5

    .end local v5    # "index":I
    .restart local v6    # "index":I
    goto :goto_2

    .line 231
    .end local v1    # "fingerData":Lcom/zte/fingerprint/datatype/FingerData;
    .end local v3    # "id":I
    .end local v4    # "ids":[I
    .end local v6    # "index":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "nameUtils":Lcom/zte/fingerprint/utils/NameUtils;
    :cond_7
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 133
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const-string v3, "FingerprintListActivity"

    invoke-static {v3, p0}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->getManager(Ljava/lang/String;Landroid/content/Context;)Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    .line 135
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "color_sb"

    .line 136
    const v5, -0x959455

    .line 135
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const v0, 4287734701

    .line 137
    .local v0, "bg":I
    const-string v3, "FingerprintListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "--------------bg = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->initActionBar()V

    .line 140
    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->setIndicatorColor(I)V

    .line 142
    new-instance v1, Landroid/content/Intent;

    .line 143
    const-string v3, "com.zte.fingerprint.main.FingerprintUnlockService"

    .line 142
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "service":Landroid/content/Intent;
    const-string v3, "com.zte.fingerprints"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mFingureprintConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v3, v4}, Lcom/zte/fingerprint/main/FingerprintListActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 147
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030046

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 148
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 149
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->unRegisterCallback()V

    .line 257
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mFingureprintConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 259
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "FingerprintListActivity"

    invoke-static {v0}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->releaseManager(Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    .line 263
    :cond_0
    invoke-super {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->onDestroy()V

    .line 264
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 246
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 247
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->finish()V

    .line 249
    const/4 v1, 0x1

    .line 251
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
    .line 183
    invoke-super {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->onPause()V

    .line 185
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->unRegisterCallback()V

    .line 186
    return-void
.end method

.method public onPreferenceClick(Lcom/zte/mifavor/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Lcom/zte/mifavor/preference/Preference;

    .prologue
    const/4 v6, 0x0

    .line 271
    invoke-virtual {p1}, Lcom/zte/mifavor/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 272
    .local v1, "id":I
    invoke-direct {p0, v1}, Lcom/zte/fingerprint/main/FingerprintListActivity;->findDataById(I)Lcom/zte/fingerprint/datatype/FingerData;

    move-result-object v0

    .line 273
    .local v0, "fingerData":Lcom/zte/fingerprint/datatype/FingerData;
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerId()I

    move-result v3

    iget v4, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->addFingerId:I

    if-ne v3, v4, :cond_2

    .line 275
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->dataInfs:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->dataInfs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090069

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 277
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 289
    :cond_0
    :goto_0
    return v6

    .line 280
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "fingerNames"

    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->fingerprintNames:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, v2}, Lcom/zte/fingerprint/main/FingerprintListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 284
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/zte/fingerprint/main/FingerManagerActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "finger_info"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 286
    invoke-virtual {p0, v2}, Lcom/zte/fingerprint/main/FingerprintListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    .line 162
    invoke-super {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->onResume()V

    .line 163
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v3

    .line 164
    .local v3, "screen":Lcom/zte/mifavor/preference/PreferenceScreen;
    if-eqz v3, :cond_0

    .line 165
    invoke-virtual {v3}, Lcom/zte/mifavor/preference/PreferenceScreen;->removeAll()V

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->initComponent()V

    .line 168
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->preferenceCategory:Lcom/zte/mifavor/preference/PreferenceCategory;

    new-instance v5, Ljava/lang/StringBuilder;

    const v6, 0x7f090054

    invoke-virtual {p0, v6}, Lcom/zte/fingerprint/main/FingerprintListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->dataInfs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/5)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/mifavor/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->dataInfs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerprintListActivity;->registerCallback()V

    .line 179
    return-void

    .line 169
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/fingerprint/datatype/DataInfo;

    .local v0, "dataInfo":Lcom/zte/fingerprint/datatype/DataInfo;
    move-object v1, v0

    .line 170
    check-cast v1, Lcom/zte/fingerprint/datatype/FingerData;

    .line 171
    .local v1, "fingerData1":Lcom/zte/fingerprint/datatype/FingerData;
    new-instance v2, Lcom/zte/fingerprint/main/FingerPreference;

    invoke-direct {v2, p0}, Lcom/zte/fingerprint/main/FingerPreference;-><init>(Landroid/content/Context;)V

    .line 172
    .local v2, "preference":Lcom/zte/mifavor/preference/Preference;
    invoke-virtual {v1}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerPrintName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/zte/mifavor/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/zte/mifavor/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v2, p0}, Lcom/zte/mifavor/preference/Preference;->setOnPreferenceClickListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;)V

    .line 175
    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerprintListActivity;->preferenceCategory:Lcom/zte/mifavor/preference/PreferenceCategory;

    invoke-virtual {v5, v2}, Lcom/zte/mifavor/preference/PreferenceCategory;->addPreference(Lcom/zte/mifavor/preference/Preference;)Z

    goto :goto_0
.end method
