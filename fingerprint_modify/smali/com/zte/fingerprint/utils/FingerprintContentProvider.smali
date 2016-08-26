.class public Lcom/zte/fingerprint/utils/FingerprintContentProvider;
.super Landroid/content/ContentProvider;
.source "FingerprintContentProvider.java"


# static fields
.field public static final CODE_DOUBLE_CLICK_START_APPLICATION:I = 0xa

.field public static final CODE_FINGERPRINT_ENABLED:I = 0x7

.field private static final CODE_LOCK_FOR_APPLICATION:I = 0x2

.field private static final CODE_LOCK_FOR_SCREEN:I = 0x1

.field private static final CODE_LOCK_FOR_SECRET_ZONE:I = 0x3

.field public static final CODE_TOUCH_FOR_ANSWER_CALL:I = 0x6

.field public static final CODE_TOUCH_FOR_TAKE_PHOTO:I = 0x5

.field public static final CODE_VIEW_NOTIFICATION:I = 0xb

.field public static final CODE_VIEW_PHOTOS:I = 0xd

.field public static final CODE_VIEW_RECENT_APPLICATIONS:I = 0xc

.field public static final DOUBLE_CLICK_START_APPLICATION:Ljava/lang/String; = "double_click_start_application"

.field public static final FINGERPRINT_ENABLED:Ljava/lang/String; = "fingerprint_enabled"

.field public static final FINGERPRINT_SHARED_PREFERENCE:Ljava/lang/String; = "com.zte.fingerprints_preferences"

.field private static final FINGER_INFO:I = 0x4

.field public static final LOCK_FOR_APPLICATION:Ljava/lang/String; = "lock_for_application"

.field public static final LOCK_FOR_SCREEN:Ljava/lang/String; = "lock_for_screen"

.field public static final LOCK_FOR_SECRET_ZONE:Ljava/lang/String; = "lock_for_secret_zone"

.field public static final LONG_PRESS_BACK:Ljava/lang/String; = "long_press_back"

.field private static final MATCHER:Landroid/content/UriMatcher;

.field public static final TOUCH_FOR_ANSWER_CALL:Ljava/lang/String; = "touch_for_answer_call"

.field public static final TOUCH_FOR_TAKE_PHOTO:Ljava/lang/String; = "touch_for_take_photo"

.field public static final VIEW_NOTIFICATION:Ljava/lang/String; = "view_notification"

.field public static final VIEW_PHOTOS:Ljava/lang/String; = "view_photos"

.field public static final VIEW_RECENT_APPLICATIONS:Ljava/lang/String; = "view_recent_applications"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    .line 50
    sget-object v0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.zte.fingerprints"

    const-string v2, "screen"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    sget-object v0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.zte.fingerprints"

    const-string v2, "application"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    sget-object v0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.zte.fingerprints"

    const-string v2, "zone"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    sget-object v0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.zte.fingerprints"

    const-string v2, "fingerquery"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    sget-object v0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.zte.fingerprints"

    const-string v2, "photo"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.zte.fingerprints"

    const-string v2, "call"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.zte.fingerprints"

    const-string v2, "enabled"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.zte.fingerprints"

    const-string v2, "doubleclick"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.zte.fingerprints"

    const-string v2, "notification"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.zte.fingerprints"

    const-string v2, "recentapp"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.zte.fingerprints"

    const-string v2, "viewphotos"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 16
    const-string v0, "FingerprintContentProvider"

    iput-object v0, p0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->TAG:Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method

.method private clearFigers()V
    .locals 6

    .prologue
    .line 188
    const-string v3, "FingerprintContentProvider"

    iget-object v4, p0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->getManager(Ljava/lang/String;Landroid/content/Context;)Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    move-result-object v2

    .line 189
    .local v2, "mFingerprintManager":Lcom/zte/fingerprint/main/ZTEFingerprintManager;
    invoke-virtual {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->getIds()[I

    move-result-object v1

    .line 190
    .local v1, "mFingerIds":[I
    if-eqz v1, :cond_0

    .line 191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    .line 196
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "lock_for_screen"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    return-void

    .line 192
    .restart local v0    # "i":I
    :cond_1
    aget v3, v1, v0

    invoke-direct {p0, v3}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->deleteFinger(I)V

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private deleteFinger(I)V
    .locals 5
    .param p1, "fingerId"    # I

    .prologue
    .line 200
    const-string v2, "FingerprintContentProvider"

    iget-object v3, p0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->getManager(Ljava/lang/String;Landroid/content/Context;)Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    move-result-object v1

    .line 202
    .local v1, "mgr":Lcom/zte/fingerprint/main/ZTEFingerprintManager;
    if-eqz v1, :cond_0

    .line 203
    :try_start_0
    const-string v2, "FingerprintContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fingerId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v1, p1}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->deleteFingerData(I)V

    .line 205
    iget-object v2, p0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->mContext:Landroid/content/Context;

    const-string v3, "pref:fingerprint"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 207
    iget-object v2, p0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/fingerprint/utils/CommonUtils;->removeBoundAppData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getFingerprintPreference()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 137
    const-string v1, "com.zte.fingerprints_preferences"

    const/4 v2, 0x0

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->clearFigers()V

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "fingerprint_enabled"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 143
    .local v0, "value":Z
    sget-object v3, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 183
    :goto_0
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 145
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "lock_for_screen"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 146
    goto :goto_0

    .line 148
    :pswitch_2
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "lock_for_application"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 149
    goto :goto_0

    .line 151
    :pswitch_3
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "lock_for_secret_zone"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 152
    goto :goto_0

    .line 154
    :pswitch_4
    invoke-virtual {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "pref:finger_count"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "key:finger_count"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 155
    :goto_1
    goto :goto_0

    :cond_0
    move v0, v2

    .line 154
    goto :goto_1

    .line 157
    :pswitch_5
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "touch_for_answer_call"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 158
    goto :goto_0

    .line 160
    :pswitch_6
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "touch_for_take_photo"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 161
    const-string v1, "FingerprintContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CODE_TOUCH_FOR_TAKE_PHOTO  value = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :pswitch_7
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "double_click_start_application"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 168
    const-string v1, "FingerprintContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CODE_DOUBLE_CLICK_START_APPLICATION  value = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 171
    :pswitch_8
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "view_notification"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 172
    const-string v1, "FingerprintContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CODE_VIEW_NOTIFICATION  value = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 175
    :pswitch_9
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "view_recent_applications"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 176
    const-string v1, "FingerprintContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CODE_VIEW_RECENT_APPLICATIONS  value = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 179
    :pswitch_a
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "view_photos"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 180
    const-string v1, "FingerprintContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CODE_VIEW_PHOTOS  value = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "a111"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 94
    .local v1, "flag":I
    :try_start_0
    const-string v3, "isOpen"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 95
    .local v2, "isOpen":Z
    sget-object v3, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 127
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    .line 131
    .end local v2    # "isOpen":Z
    :goto_1
    return v1

    .line 97
    .restart local v2    # "isOpen":Z
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "lock_for_screen"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v2    # "isOpen":Z
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "isOpen":Z
    :pswitch_2
    :try_start_1
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "lock_for_application"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 103
    :pswitch_3
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "lock_for_secret_zone"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 106
    :pswitch_4
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "touch_for_answer_call"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 109
    :pswitch_5
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "touch_for_take_photo"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 112
    :pswitch_6
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "fingerprint_enabled"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 115
    :pswitch_7
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "double_click_start_application"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 118
    :pswitch_8
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "view_notification"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 121
    :pswitch_9
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "view_recent_applications"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 124
    :pswitch_a
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "view_photos"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
