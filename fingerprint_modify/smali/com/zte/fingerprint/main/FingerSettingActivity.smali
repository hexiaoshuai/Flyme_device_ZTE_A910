.class public Lcom/zte/fingerprint/main/FingerSettingActivity;
.super Lcom/zte/mifavor/preference/PreferenceActivity;
.source "FingerSettingActivity.java"

# interfaces
.implements Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;
.implements Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;


# instance fields
.field private final DOUBLE_CLICK_START_APPLICATION:Ljava/lang/String;

.field private final PREFERENCE_KEY_FINGERCOUNT:Ljava/lang/String;

.field private final PREFERENCE_KEY_QUICK_OPEN_APP:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private fromCreate:Z

.field private mContext:Landroid/content/Context;

.field private mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

.field private preferenceCategory:Lcom/zte/mifavor/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->TAG:Ljava/lang/String;

    .line 49
    const-string v0, "fingerCount"

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->PREFERENCE_KEY_FINGERCOUNT:Ljava/lang/String;

    .line 50
    const-string v0, "quick_open_app"

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->PREFERENCE_KEY_QUICK_OPEN_APP:Ljava/lang/String;

    .line 51
    const-string v0, "double_click_start_application"

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->DOUBLE_CLICK_START_APPLICATION:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/zte/fingerprint/main/FingerSettingActivity;Lcom/zte/mifavor/preference/SwitchPreference;)V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/main/FingerSettingActivity;->showAddFingerDialog(Lcom/zte/mifavor/preference/SwitchPreference;)V

    return-void
.end method

.method static synthetic access$1(Lcom/zte/fingerprint/main/FingerSettingActivity;)Z
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->isAppLockEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/zte/fingerprint/main/FingerSettingActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/main/FingerSettingActivity;->goHeartyService(Ljava/lang/String;)V

    return-void
.end method

.method private getFingerPrintCount()I
    .locals 3

    .prologue
    .line 148
    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    invoke-virtual {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->getIds()[I

    move-result-object v1

    .line 149
    .local v1, "ids":[I
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 150
    .local v0, "fingerPrintCount":I
    :goto_0
    return v0

    .line 149
    .end local v0    # "fingerPrintCount":I
    :cond_0
    array-length v0, v1

    goto :goto_0
.end method

.method private getFingerprintSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 60
    .line 61
    const-string v0, "com.zte.fingerprints_preferences"

    .line 62
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private goHeartyService(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 125
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 126
    const-string v2, "com.zte.heartyservice.intent.action.ACTION_PRIVACY_SET_FROM_SKYEYE"

    .line 125
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 128
    const-string v2, "zone_type"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    :cond_0
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/FingerSettingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private hasAppBound()Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 395
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    invoke-virtual {v4}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->getIds()[I

    move-result-object v1

    .line 396
    .local v1, "ids":[I
    if-nez v1, :cond_1

    .line 397
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->TAG:Ljava/lang/String;

    const-string v5, "hasAppBound() null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    :goto_0
    return v3

    .line 401
    :cond_1
    const-string v4, "preference_finger_select_function"

    .line 400
    invoke-virtual {p0, v4, v3}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 402
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 404
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v2, :cond_0

    .line 408
    array-length v5, v1

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget v0, v1, v4

    .line 409
    .local v0, "id":I
    iget-object v6, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "hasAppBound() id = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 411
    const/4 v3, 0x1

    goto :goto_0

    .line 408
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private initComponent()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 155
    iget-object v12, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/zte/fingerprint/utils/CommonUtils;->getAndroidDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ZTE BV0720"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 156
    const v12, 0x7f03003f

    invoke-virtual {p0, v12}, Lcom/zte/fingerprint/main/FingerSettingActivity;->addPreferencesFromResource(I)V

    .line 160
    :goto_0
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getPreferenceManager()Lcom/zte/mifavor/preference/PreferenceManager;

    move-result-object v3

    .line 162
    .local v3, "manager":Lcom/zte/mifavor/preference/PreferenceManager;
    const-string v12, "fingerprint_manage"

    invoke-virtual {v3, v12}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/zte/mifavor/preference/PreferenceCategory;

    .line 161
    iput-object v12, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->preferenceCategory:Lcom/zte/mifavor/preference/PreferenceCategory;

    .line 163
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getFingerprintSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v11

    .line 165
    .local v11, "sp":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 168
    .local v2, "fingerprintCount":I
    :try_start_0
    iget-object v12, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    if-eqz v12, :cond_5

    .line 169
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getFingerPrintCount()I

    move-result v2

    .line 170
    const-string v12, "pref:finger_count"

    .line 171
    const/4 v13, 0x0

    .line 170
    invoke-virtual {p0, v12, v13}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 172
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 173
    const-string v13, "key:finger_count"

    invoke-interface {v12, v13, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 174
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    const-string v12, "fingerCount"

    invoke-virtual {v3, v12}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v4

    .line 177
    .local v4, "managerFingerprint":Lcom/zte/mifavor/preference/Preference;
    invoke-virtual {v4, p0}, Lcom/zte/mifavor/preference/Preference;->setOnPreferenceClickListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;)V

    .line 184
    iget-boolean v12, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->fromCreate:Z

    if-eqz v12, :cond_1

    .line 185
    if-nez v2, :cond_0

    .line 186
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/zte/fingerprint/main/FingerSettingActivity;->showAddFingerDialog(Lcom/zte/mifavor/preference/SwitchPreference;)V

    .line 188
    :cond_0
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->fromCreate:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v4    # "managerFingerprint":Lcom/zte/mifavor/preference/Preference;
    :cond_1
    :goto_1
    move v0, v2

    .line 198
    .local v0, "currentCount":I
    const-string v12, "lock_for_application"

    invoke-virtual {v3, v12}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v5

    .line 197
    check-cast v5, Lcom/zte/mifavor/preference/SwitchPreference;

    .line 200
    .local v5, "prfAppLock":Lcom/zte/mifavor/preference/SwitchPreference;
    const-string v12, "lock_for_secret_zone"

    invoke-virtual {v3, v12}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v9

    .line 199
    check-cast v9, Lcom/zte/mifavor/preference/SwitchPreference;

    .line 202
    .local v9, "prfSecretZone":Lcom/zte/mifavor/preference/SwitchPreference;
    const-string v12, "lock_for_screen"

    invoke-virtual {v3, v12}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v8

    .line 201
    check-cast v8, Lcom/zte/mifavor/preference/SwitchPreference;

    .line 208
    .local v8, "prfScreenLock":Lcom/zte/mifavor/preference/SwitchPreference;
    iget-object v12, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/zte/fingerprint/utils/CommonUtils;->getAndroidDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ZTE BV0720"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 209
    const-string v12, "double_click_start_application"

    invoke-virtual {v3, v12}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/zte/mifavor/preference/PreferenceScreen;

    .line 257
    :goto_2
    new-instance v12, Lcom/zte/fingerprint/main/FingerSettingActivity$1;

    invoke-direct {v12, p0, v0, v8}, Lcom/zte/fingerprint/main/FingerSettingActivity$1;-><init>(Lcom/zte/fingerprint/main/FingerSettingActivity;ILcom/zte/mifavor/preference/SwitchPreference;)V

    invoke-virtual {v8, v12}, Lcom/zte/mifavor/preference/SwitchPreference;->setOnPreferenceClickListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;)V

    .line 266
    iget-object v12, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    if-nez v12, :cond_2

    .line 267
    iget-object v12, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->TAG:Ljava/lang/String;

    invoke-static {v12, p0}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->getManager(Ljava/lang/String;Landroid/content/Context;)Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    move-result-object v12

    iput-object v12, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    .line 269
    :cond_2
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getFingerPrintCount()I

    move-result v12

    if-gtz v12, :cond_3

    .line 270
    invoke-virtual {v8, v14}, Lcom/zte/mifavor/preference/SwitchPreference;->setChecked(Z)V

    .line 274
    :cond_3
    new-instance v12, Lcom/zte/fingerprint/main/FingerSettingActivity$2;

    invoke-direct {v12, p0, v0, v5}, Lcom/zte/fingerprint/main/FingerSettingActivity$2;-><init>(Lcom/zte/fingerprint/main/FingerSettingActivity;ILcom/zte/mifavor/preference/SwitchPreference;)V

    invoke-virtual {v5, v12}, Lcom/zte/mifavor/preference/SwitchPreference;->setOnPreferenceClickListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;)V

    .line 289
    new-instance v12, Lcom/zte/fingerprint/main/FingerSettingActivity$3;

    invoke-direct {v12, p0, v0, v9}, Lcom/zte/fingerprint/main/FingerSettingActivity$3;-><init>(Lcom/zte/fingerprint/main/FingerSettingActivity;ILcom/zte/mifavor/preference/SwitchPreference;)V

    invoke-virtual {v9, v12}, Lcom/zte/mifavor/preference/SwitchPreference;->setOnPreferenceClickListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;)V

    .line 302
    invoke-virtual {v8, p0}, Lcom/zte/mifavor/preference/SwitchPreference;->setOnPreferenceChangeListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;)V

    .line 303
    invoke-virtual {v5, p0}, Lcom/zte/mifavor/preference/SwitchPreference;->setOnPreferenceChangeListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;)V

    .line 304
    invoke-virtual {v9, p0}, Lcom/zte/mifavor/preference/SwitchPreference;->setOnPreferenceChangeListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;)V

    .line 306
    const-string v12, "quick_open_app"

    invoke-virtual {v3, v12}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v10

    .line 307
    .local v10, "quickOpenPref":Lcom/zte/mifavor/preference/Preference;
    invoke-virtual {v10, p0}, Lcom/zte/mifavor/preference/Preference;->setOnPreferenceClickListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;)V

    .line 308
    return-void

    .line 158
    .end local v0    # "currentCount":I
    .end local v2    # "fingerprintCount":I
    .end local v3    # "manager":Lcom/zte/mifavor/preference/PreferenceManager;
    .end local v5    # "prfAppLock":Lcom/zte/mifavor/preference/SwitchPreference;
    .end local v8    # "prfScreenLock":Lcom/zte/mifavor/preference/SwitchPreference;
    .end local v9    # "prfSecretZone":Lcom/zte/mifavor/preference/SwitchPreference;
    .end local v10    # "quickOpenPref":Lcom/zte/mifavor/preference/Preference;
    .end local v11    # "sp":Landroid/content/SharedPreferences;
    :cond_4
    const v12, 0x7f03003e

    invoke-virtual {p0, v12}, Lcom/zte/fingerprint/main/FingerSettingActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 191
    .restart local v2    # "fingerprintCount":I
    .restart local v3    # "manager":Lcom/zte/mifavor/preference/PreferenceManager;
    .restart local v11    # "sp":Landroid/content/SharedPreferences;
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 212
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentCount":I
    .restart local v5    # "prfAppLock":Lcom/zte/mifavor/preference/SwitchPreference;
    .restart local v8    # "prfScreenLock":Lcom/zte/mifavor/preference/SwitchPreference;
    .restart local v9    # "prfSecretZone":Lcom/zte/mifavor/preference/SwitchPreference;
    :cond_6
    const-string v12, "double_click_start_application"

    invoke-virtual {v3, v12}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v6

    .line 213
    .local v6, "prfDoubleCLickOpen":Lcom/zte/mifavor/preference/Preference;
    invoke-virtual {v6, p0}, Lcom/zte/mifavor/preference/Preference;->setOnPreferenceClickListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_2
.end method

.method private isAppLockEnabled()Z
    .locals 6

    .prologue
    .line 112
    const-string v3, "content://com.zte.heartyservice.privacy.provider/auth_exist_lookup/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 113
    .local v2, "realUri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 115
    .local v1, "enabled":Z
    :try_start_0
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getContentResolver().getType(realUri) = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v3, "1"

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 120
    :goto_0
    return v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isDobuleClickChecked()Z
    .locals 3

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getFingerprintSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 312
    const-string v1, "double_click_start_application"

    .line 313
    const/4 v2, 0x0

    .line 311
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setSettingOn(ZLjava/lang/String;)V
    .locals 3
    .param p1, "enabling"    # Z
    .param p2, "KEY"    # Ljava/lang/String;

    .prologue
    .line 494
    invoke-virtual {p0, p0, p2}, Lcom/zte/fingerprint/main/FingerSettingActivity;->isSettingOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 495
    .local v0, "bOldState":Z
    if-ne p1, v0, :cond_0

    .line 496
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->TAG:Ljava/lang/String;

    const-string v2, "state is same"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :goto_0
    return-void

    .line 500
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, p2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 502
    :catch_0
    move-exception v1

    goto :goto_0

    .line 501
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private showAddFingerDialog(Lcom/zte/mifavor/preference/SwitchPreference;)V
    .locals 4
    .param p1, "witch"    # Lcom/zte/mifavor/preference/SwitchPreference;

    .prologue
    .line 512
    new-instance v0, Lcom/zte/mifavor/widget/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 513
    .local v0, "builder":Lcom/zte/mifavor/widget/AlertDialog$Builder;
    const v1, 0x7f090057

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setTitle(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 514
    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setMessage(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v1

    .line 515
    const v2, 0x7f090058

    .line 516
    new-instance v3, Lcom/zte/fingerprint/main/FingerSettingActivity$4;

    invoke-direct {v3, p0, p1}, Lcom/zte/fingerprint/main/FingerSettingActivity$4;-><init>(Lcom/zte/fingerprint/main/FingerSettingActivity;Lcom/zte/mifavor/preference/SwitchPreference;)V

    .line 515
    invoke-virtual {v1, v2, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v1

    .line 523
    const v2, 0x7f090059

    .line 524
    new-instance v3, Lcom/zte/fingerprint/main/FingerSettingActivity$5;

    invoke-direct {v3, p0}, Lcom/zte/fingerprint/main/FingerSettingActivity$5;-><init>(Lcom/zte/fingerprint/main/FingerSettingActivity;)V

    .line 523
    invoke-virtual {v1, v2, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 531
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->create()Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/AlertDialog;->show()V

    .line 532
    return-void
.end method

.method private showDisableUnlockDialog()V
    .locals 4

    .prologue
    .line 535
    new-instance v0, Lcom/zte/mifavor/widget/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 536
    .local v0, "builder":Lcom/zte/mifavor/widget/AlertDialog$Builder;
    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setTitle(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 537
    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setMessage(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v1

    .line 538
    const v2, 0x7f09005e

    .line 539
    new-instance v3, Lcom/zte/fingerprint/main/FingerSettingActivity$6;

    invoke-direct {v3, p0}, Lcom/zte/fingerprint/main/FingerSettingActivity$6;-><init>(Lcom/zte/fingerprint/main/FingerSettingActivity;)V

    .line 538
    invoke-virtual {v1, v2, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v1

    .line 544
    const v2, 0x7f09005d

    .line 545
    new-instance v3, Lcom/zte/fingerprint/main/FingerSettingActivity$7;

    invoke-direct {v3, p0}, Lcom/zte/fingerprint/main/FingerSettingActivity$7;-><init>(Lcom/zte/fingerprint/main/FingerSettingActivity;)V

    .line 544
    invoke-virtual {v1, v2, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 551
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->create()Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/AlertDialog;->show()V

    .line 552
    return-void
.end method


# virtual methods
.method protected initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 103
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 108
    return-void
.end method

.method public isSettingOn(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "KEY"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 508
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 471
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    .line 472
    .local v1, "buttonId":I
    const/4 v0, 0x0

    .line 473
    .local v0, "KEY":Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onCheckedChanged, buttonId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    packed-switch v1, :pswitch_data_0

    .line 481
    :goto_0
    const-string v2, "double_click_start_application"

    .line 482
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setVoiceSenseEnabled bChecked="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-direct {p0, p2, v0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->setSettingOn(ZLjava/lang/String;)V

    .line 485
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getFingerprintSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 486
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 488
    const-string v3, "double_click_start_application"

    .line 487
    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 489
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 491
    :cond_0
    return-void

    .line 476
    :pswitch_0
    const-string v0, "double_click_start_application"

    .line 477
    goto :goto_0

    .line 474
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 67
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getFingerprintSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 69
    .local v1, "sp":Landroid/content/SharedPreferences;
    iput-object p0, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mContext:Landroid/content/Context;

    .line 70
    const-string v3, "fingerprint_enabled"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 72
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 73
    const-string v4, "fingerprint_enabled"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 74
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    :cond_0
    iput-boolean v5, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->fromCreate:Z

    .line 77
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->TAG:Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->getManager(Ljava/lang/String;Landroid/content/Context;)Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    .line 78
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 79
    const-string v4, "color_sb"

    const v5, -0x959455

    .line 78
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 85
    .local v0, "bg":I
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/zte/fingerprint/utils/CommonUtils;->getAndroidDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ZTE BV0720"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 87
    const v4, 0x7f030048

    .line 88
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 86
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 94
    .local v2, "v":Landroid/view/View;
    :goto_0
    const-string v3, "preference_finger_double_function"

    invoke-virtual {p0, v3, v6}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 95
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 94
    sput-object v3, Lcom/zte/fingerprint/main/FingerSettingActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 97
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->initActionBar()V

    .line 98
    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->setIndicatorColor(I)V

    .line 99
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/zte/fingerprint/main/FingerprintUnlockService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/zte/fingerprint/main/FingerSettingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 100
    return-void

    .line 90
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 91
    const v4, 0x7f030047

    .line 92
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 90
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 319
    invoke-static {p0}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 320
    .local v0, "sp":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lock_for_screen:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "lock_for_screen"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->TAG:Ljava/lang/String;

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lock_for_application:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    const-string v3, "lock_for_screen"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 322
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->TAG:Ljava/lang/String;

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lock_for_secret_zone:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    const-string v3, "lock_for_screen"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 325
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v1, "lock_for_screen"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    const-string v1, "lock_for_application"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    const-string v1, "lock_for_secret_zone"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->TAG:Ljava/lang/String;

    const-string v2, "STOP SERVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/zte/fingerprint/main/FingerprintUnlockService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/FingerSettingActivity;->stopService(Landroid/content/Intent;)Z

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->releaseManager(Ljava/lang/String;)V

    .line 335
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    .line 337
    :cond_1
    invoke-super {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->onDestroy()V

    .line 338
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 139
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->finish()V

    .line 141
    const/4 v1, 0x1

    .line 143
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Lcom/zte/mifavor/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Lcom/zte/mifavor/preference/Preference;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 421
    invoke-virtual {p1}, Lcom/zte/mifavor/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "key":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.zte.fingerprints.SETTING_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    if-nez v3, :cond_0

    .line 424
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->TAG:Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->getManager(Ljava/lang/String;Landroid/content/Context;)Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    .line 426
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 465
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 466
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 426
    :sswitch_0
    const-string v3, "lock_for_application"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 446
    const-string v3, "SETTING_CHANGED_ITEM"

    .line 447
    const-string v4, "lock_for_application"

    .line 446
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string v3, "SETTING_CHANGED_VALUE"

    .line 449
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 448
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 426
    :sswitch_1
    const-string v3, "lock_for_secret_zone"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 452
    const-string v3, "SETTING_CHANGED_ITEM"

    .line 453
    const-string v4, "lock_for_secret_zone"

    .line 452
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const-string v3, "SETTING_CHANGED_VALUE"

    .line 455
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 454
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 426
    :sswitch_2
    const-string v3, "lock_for_screen"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, p2

    .line 428
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 429
    .local v2, "newValue":Z
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onPreferenceChange() newValue: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->hasAppBound()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->showDisableUnlockDialog()V

    .line 438
    const/4 v3, 0x0

    goto :goto_1

    .line 440
    :cond_2
    const-string v3, "SETTING_CHANGED_ITEM"

    .line 441
    const-string v4, "lock_for_screen"

    .line 440
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string v3, "SETTING_CHANGED_VALUE"

    .line 443
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 442
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 426
    :sswitch_data_0
    .sparse-switch
        -0x7fcd903a -> :sswitch_0
        -0x55c359af -> :sswitch_1
        -0x26efdbca -> :sswitch_2
    .end sparse-switch
.end method

.method public onPreferenceClick(Lcom/zte/mifavor/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Lcom/zte/mifavor/preference/Preference;

    .prologue
    .line 370
    invoke-virtual {p1}, Lcom/zte/mifavor/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 391
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 372
    :sswitch_0
    const-string v2, "fingerCount"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 375
    const-class v3, Lcom/zte/fingerprint/main/FingerprintListActivity;

    .line 374
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 372
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    const-string v2, "double_click_start_application"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 387
    const-class v3, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;

    .line 386
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 372
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_2
    const-string v2, "quick_open_app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 381
    const-class v3, Lcom/zte/fingerprint/main/FingerprintBindAppActivity;

    .line 380
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 382
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 372
    :sswitch_data_0
    .sparse-switch
        -0x547e68da -> :sswitch_0
        0x177c5f8e -> :sswitch_1
        0x731e00be -> :sswitch_2
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 342
    invoke-super {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->onResume()V

    .line 343
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v0

    .line 344
    .local v0, "screen":Lcom/zte/mifavor/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceScreen;->removeAll()V

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerSettingActivity;->initComponent()V

    .line 348
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerSettingActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SelectDoubleClickStartAppActivity.mCurrentClassName = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mCurrentClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 349
    const-string v3, "  ;SelectDoubleClickStartAppActivity.mCurrentPackageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/zte/fingerprint/main/SelectDoubleClickStartAppActivity;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void
.end method
