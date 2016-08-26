.class public Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.super Ljava/lang/Object;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    }
.end annotation


# static fields
.field public static final ACTION_MESSAGE_DELIVERY:Ljava/lang/String; = "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_DELIVERY"

.field public static final ACTION_MESSAGE_SENT:Ljava/lang/String; = "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

.field private static final CONVERT_MMS_TO_SMS_PART_COUNT:I = 0xa

.field private static final D:Z = true

.field public static final DELETED_THREAD_ID:I = -0x1

.field static final EMAIL_PROJECTION_SHORT:[Ljava/lang/String;

.field private static final EVENT_TYPE_DELETE:Ljava/lang/String; = "MessageDeleted"

.field private static final EVENT_TYPE_DELEVERY_SUCCESS:Ljava/lang/String; = "DeliverySuccess"

.field private static final EVENT_TYPE_DELIVERY_FAILURE:Ljava/lang/String; = "DeliveryFailure"

.field private static final EVENT_TYPE_NEW:Ljava/lang/String; = "NewMessage"

.field private static final EVENT_TYPE_SENDING_FAILURE:Ljava/lang/String; = "SendingFailure"

.field private static final EVENT_TYPE_SENDING_SUCCESS:Ljava/lang/String; = "SendingSuccess"

.field private static final EVENT_TYPE_SHIFT:Ljava/lang/String; = "MessageShift"

.field public static final EXTRA_MESSAGE_SENT_HANDLE:Ljava/lang/String; = "HANDLE"

.field public static final EXTRA_MESSAGE_SENT_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_MESSAGE_SENT_RETRY:Ljava/lang/String; = "retry"

.field public static final EXTRA_MESSAGE_SENT_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final EXTRA_MESSAGE_SENT_TRANSPARENT:Ljava/lang/String; = "transparent"

.field public static final EXTRA_MESSAGE_SENT_URI:Ljava/lang/String; = "uri"

.field public static final MESSAGE_TYPE_RETRIEVE_CONF:I = 0x84

.field static final MMS_PROJECTION_SHORT:[Ljava/lang/String;

.field private static final PROVIDER_ANR_TIMEOUT:J = 0x4e20L

.field static final SMS_PROJECTION:[Ljava/lang/String;

.field static final SMS_PROJECTION_SHORT:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "[MAP]BluetoothMapContentObserver"

.field private static final V:Z = true

.field private static final folderMms:[Ljava/lang/String;

.field private static final folderSms:[Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

.field private mAuthority:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEnableSmsMms:Z

.field private mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

.field private mInitialized:Z

.field private mMasId:I

.field private mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

.field private mMessageUri:Landroid/net/Uri;

.field private mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

.field private mMsgListEmail:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListMms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListSms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/database/ContentObserver;

.field private mObserverRegistered:Z

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mProviderClient:Landroid/content/ContentProviderClient;

.field private mPushMsgList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

.field private mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sub_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    .line 156
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION_SHORT:[Ljava/lang/String;

    .line 162
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "m_type"

    aput-object v1, v0, v5

    const-string v1, "msg_box"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT:[Ljava/lang/String;

    .line 169
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "folder_id"

    aput-object v1, v0, v4

    const-string v1, "flag_read"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->EMAIL_PROJECTION_SHORT:[Ljava/lang/String;

    .line 240
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "inbox"

    aput-object v1, v0, v4

    const-string v1, "sent"

    aput-object v1, v0, v5

    const-string v1, "draft"

    aput-object v1, v0, v6

    const-string v1, "outbox"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "outbox"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "outbox"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "inbox"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "inbox"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    .line 252
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "inbox"

    aput-object v1, v0, v4

    const-string v1, "sent"

    aput-object v1, v0, v5

    const-string v1, "draft"

    aput-object v1, v0, v6

    const-string v1, "outbox"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "outbox"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMnsObexClient;Lcom/android/bluetooth/map/BluetoothMapMasInstance;Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mnsClient"    # Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    .param p3, "masInstance"    # Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    .param p4, "account"    # Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    .param p5, "enableSmsMms"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 114
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 116
    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    .line 117
    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    .line 119
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string v1, "DUMMY"

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;-><init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 123
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    .line 225
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    .line 380
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    .line 382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    .line 384
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListEmail:Ljava/util/Map;

    .line 1190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    .line 1753
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    invoke-direct {v0, p0, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    .line 1755
    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mInitialized:Z

    .line 2064
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$2;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 181
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    .line 182
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    .line 183
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 184
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 185
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMasId()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    .line 186
    if-eqz p4, :cond_1

    .line 187
    iget-object v0, p4, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mBase_uri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p4, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    .line 189
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 190
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to acquire provider for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 196
    :cond_1
    iput-boolean p5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    .line 197
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 198
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChanges(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    .param p1, "x1"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->resendPendingMessages()V

    return-void
.end method

.method public static actionMessageSentDisconnected(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "result"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 1947
    const-string v5, "android.permission.WRITE_SMS"

    invoke-virtual {p0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 1949
    const-string v5, "[MAP]BluetoothMapContentObserver"

    const-string v6, "actionMessageSentDisconnected: Not allowed to delete SMS/MMS messages"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    const v5, 0x534e4554

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "b/22343270"

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, ""

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1999
    :cond_0
    :goto_0
    return-void

    .line 1954
    :cond_1
    const/4 v0, 0x0

    .line 1956
    .local v0, "delete":Z
    const-string v5, "transparent"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1957
    .local v2, "transparent":I
    const-string v5, "uri"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1958
    .local v4, "uriString":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1962
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1964
    .local v3, "uri":Landroid/net/Uri;
    const/4 v5, -0x1

    if-ne p2, v5, :cond_4

    .line 1965
    const-string v5, "[MAP]BluetoothMapContentObserver"

    const-string v6, "actionMessageSentDisconnected: result OK"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    if-nez v2, :cond_3

    .line 1967
    invoke-static {p0, v3, v9, v8}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1969
    const-string v5, "[MAP]BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to move "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to SENT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 1992
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1993
    .local v1, "resolver":Landroid/content/ContentResolver;
    if-eqz v1, :cond_6

    .line 1994
    invoke-virtual {v1, v3, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1972
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 1979
    :cond_4
    if-nez v2, :cond_5

    .line 1980
    const/4 v5, 0x5

    invoke-static {p0, v3, v5, v8}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1982
    const-string v5, "[MAP]BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to move "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to FAILED"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1985
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 1996
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_6
    const-string v5, "[MAP]BluetoothMapContentObserver"

    const-string v6, "Unable to get resolver"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 137
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private deleteMessageMms(J)Z
    .locals 11
    .param p1, "handle"    # J

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x0

    .line 937
    const/4 v8, 0x0

    .line 938
    .local v8, "res":Z
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 939
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 942
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 944
    const-string v0, "thread_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 945
    .local v9, "threadId":I
    const-string v0, "[MAP]BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[deleteMessageMms] threadId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    if-eq v9, v10, :cond_2

    .line 948
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 949
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 950
    .local v7, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    if-eqz v7, :cond_0

    .line 951
    const/4 v0, -0x1

    iput v0, v7, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    .line 953
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 954
    :try_start_2
    const-string v0, "thread_id"

    const-wide/16 v2, -0x1

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->updateThreadId(Landroid/net/Uri;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 963
    .end local v7    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :goto_0
    const/4 v8, 0x1

    .line 966
    .end local v9    # "threadId":I
    :cond_1
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    .line 969
    return v8

    .line 953
    .restart local v9    # "threadId":I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 966
    .end local v9    # "threadId":I
    :catchall_1
    move-exception v0

    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    throw v0

    .line 957
    .restart local v9    # "threadId":I
    :cond_2
    :try_start_5
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 958
    :try_start_6
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 961
    :try_start_7
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 959
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method

.method private deleteMessageSms(J)Z
    .locals 11
    .param p1, "handle"    # J

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x0

    .line 1017
    const/4 v8, 0x0

    .line 1018
    .local v8, "res":Z
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1019
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1022
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1024
    const-string v0, "thread_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1025
    .local v9, "threadId":I
    const-string v0, "[MAP]BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[deleteMessageSms] threadId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    if-eq v9, v10, :cond_2

    .line 1027
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1028
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 1029
    .local v7, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    if-eqz v7, :cond_0

    .line 1030
    const/4 v0, -0x1

    iput v0, v7, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    .line 1032
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1034
    :try_start_2
    const-string v0, "thread_id"

    const-wide/16 v2, -0x1

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->updateThreadId(Landroid/net/Uri;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1043
    .end local v7    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :goto_0
    const/4 v8, 0x1

    .line 1046
    .end local v9    # "threadId":I
    :cond_1
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    .line 1049
    return v8

    .line 1032
    .restart local v9    # "threadId":I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1046
    .end local v9    # "threadId":I
    :catchall_1
    move-exception v0

    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    throw v0

    .line 1037
    .restart local v9    # "threadId":I
    :cond_2
    :try_start_5
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1038
    :try_start_6
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1041
    :try_start_7
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 1039
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method

.method private failPendingMessages()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 2038
    const-string v3, "type = 4"

    .line 2039
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2040
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 2056
    :goto_0
    return-void

    .line 2043
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2044
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2045
    .local v8, "id":J
    const-string v0, "body"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2046
    .local v7, "msgBody":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    .line 2047
    .local v10, "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    if-eqz v10, :cond_0

    iget-boolean v0, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->resend:Z

    if-eqz v0, :cond_0

    .line 2050
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    iget-object v1, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    const/4 v2, 0x5

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2054
    .end local v7    # "msgBody":Ljava/lang/String;
    .end local v8    # "id":J
    .end local v10    # "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    goto :goto_0
.end method

.method private getSmsType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 4

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "smsType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 213
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 214
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 222
    :goto_0
    return-object v0

    .line 215
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 216
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 219
    :cond_1
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0
.end method

.method private handleMsgListChanges(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 835
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 837
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesEmail(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_0
    return-void

    .line 838
    :catch_0
    move-exception v0

    .line 839
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    .line 840
    const-string v1, "[MAP]BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problems contacting the ContentProvider in mas Instance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " restaring ObexServerSession"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 844
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesSms()V

    .line 845
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesMms()V

    goto :goto_0
.end method

.method private handleMsgListChangesEmail(Landroid/net/Uri;)V
    .locals 32
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 718
    const-string v3, "[MAP]BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMsgListChangesEmail uri: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 724
    .local v28, "msgListEmail":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->EMAIL_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 726
    .local v23, "c":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListEmail:Ljava/util/Map;

    move-object/from16 v31, v0

    monitor-enter v31

    .line 728
    :goto_0
    if-eqz v23, :cond_7

    :try_start_0
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 729
    const-string v3, "_id"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 730
    .local v4, "id":J
    const-string v3, "folder_id"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 732
    .local v26, "folderId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListEmail:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 733
    .local v2, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move/from16 v0, v26

    int-to-long v8, v0

    invoke-virtual {v3, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v25

    .line 735
    .local v25, "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz v25, :cond_0

    .line 736
    invoke-virtual/range {v25 .. v25}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v12

    .line 744
    .local v12, "newFolder":Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_1

    .line 746
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    move/from16 v0, v26

    int-to-long v6, v0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JJ)V

    .line 747
    .restart local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    new-instance v7, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v9, "NewMessage"

    const/4 v13, 0x0

    sget-object v14, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v8, p0

    move-wide v10, v4

    invoke-direct/range {v7 .. v14}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 750
    .local v7, "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 798
    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v4    # "id":J
    .end local v7    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v12    # "newFolder":Ljava/lang/String;
    .end local v25    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v26    # "folderId":I
    :catchall_0
    move-exception v3

    :try_start_1
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    throw v3

    .line 831
    :catchall_1
    move-exception v3

    monitor-exit v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 738
    .restart local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .restart local v4    # "id":J
    .restart local v25    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .restart local v26    # "folderId":I
    :cond_0
    :try_start_2
    const-string v12, "unknown"

    .restart local v12    # "newFolder":Ljava/lang/String;
    goto :goto_1

    .line 753
    :cond_1
    move/from16 v0, v26

    int-to-long v8, v0

    iget-wide v10, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    cmp-long v3, v8, v10

    if-eqz v3, :cond_2

    .line 754
    const-string v3, "[MAP]BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new folderId: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " old folderId: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-wide v8, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    invoke-virtual {v3, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v29

    .line 757
    .local v29, "oldFolderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz v29, :cond_3

    .line 758
    invoke-virtual/range {v29 .. v29}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v13

    .line 763
    .local v13, "oldFolder":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string v6, "deleted"

    invoke-virtual {v3, v6}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v24

    .line 765
    .local v24, "deletedFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string v6, "sent"

    invoke-virtual {v3, v6}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v30

    .line 772
    .local v30, "sentFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz v24, :cond_4

    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderId()J

    move-result-wide v8

    move/from16 v0, v26

    int-to-long v10, v0

    cmp-long v3, v8, v10

    if-nez v3, :cond_4

    .line 773
    new-instance v7, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v9, "MessageDeleted"

    iget-wide v10, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    sget-object v14, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 775
    .restart local v7    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 792
    .end local v7    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :goto_3
    move/from16 v0, v26

    int-to-long v8, v0

    iput-wide v8, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    .line 794
    .end local v13    # "oldFolder":Ljava/lang/String;
    .end local v24    # "deletedFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v29    # "oldFolderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v30    # "sentFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 761
    .restart local v29    # "oldFolderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_3
    const-string v13, "unknown"

    .restart local v13    # "oldFolder":Ljava/lang/String;
    goto :goto_2

    .line 776
    .restart local v24    # "deletedFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .restart local v30    # "sentFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_4
    if-eqz v30, :cond_6

    invoke-virtual/range {v30 .. v30}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderId()J

    move-result-wide v8

    move/from16 v0, v26

    int-to-long v10, v0

    cmp-long v3, v8, v10

    if-nez v3, :cond_6

    iget-boolean v3, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_6

    .line 779
    iget-boolean v3, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    if-eqz v3, :cond_5

    .line 780
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 782
    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 783
    new-instance v7, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v17, "SendingSuccess"

    iget-wide v0, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v18, v0

    const/16 v21, 0x0

    sget-object v22, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v15, v7

    move-object/from16 v16, p0

    move-object/from16 v20, v13

    invoke-direct/range {v15 .. v22}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 785
    .restart local v7    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_3

    .line 788
    .end local v7    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_6
    new-instance v7, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v9, "MessageShift"

    sget-object v14, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v8, p0

    move-wide v10, v4

    invoke-direct/range {v7 .. v14}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 790
    .restart local v7    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 798
    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v4    # "id":J
    .end local v7    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v12    # "newFolder":Ljava/lang/String;
    .end local v13    # "oldFolder":Ljava/lang/String;
    .end local v24    # "deletedFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v25    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v26    # "folderId":I
    .end local v29    # "oldFolderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v30    # "sentFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_7
    :try_start_3
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    .line 802
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListEmail:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 803
    .restart local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-wide v8, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    invoke-virtual {v3, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v29

    .line 805
    .restart local v29    # "oldFolderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz v29, :cond_b

    .line 806
    invoke-virtual/range {v29 .. v29}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v13

    .line 813
    .restart local v13    # "oldFolder":Ljava/lang/String;
    :goto_5
    iget-boolean v3, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_a

    .line 814
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 816
    iget-boolean v3, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    if-eqz v3, :cond_9

    .line 817
    const/4 v13, 0x0

    .line 818
    :cond_9
    new-instance v7, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v17, "SendingSuccess"

    iget-wide v0, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v18, v0

    const/16 v21, 0x0

    sget-object v22, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v15, v7

    move-object/from16 v16, p0

    move-object/from16 v20, v13

    invoke-direct/range {v15 .. v22}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 819
    .restart local v7    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 824
    .end local v7    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_a
    iget-boolean v3, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    if-nez v3, :cond_8

    .line 826
    new-instance v7, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v17, "MessageDeleted"

    iget-wide v0, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    sget-object v22, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v15, v7

    move-object/from16 v16, p0

    move-object/from16 v21, v13

    invoke-direct/range {v15 .. v22}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 827
    .restart local v7    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_4

    .line 808
    .end local v7    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v13    # "oldFolder":Ljava/lang/String;
    :cond_b
    const-string v13, "unknown"

    .restart local v13    # "oldFolder":Ljava/lang/String;
    goto :goto_5

    .line 830
    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v13    # "oldFolder":Ljava/lang/String;
    .end local v29    # "oldFolderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_c
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListEmail:Ljava/util/Map;

    .line 831
    monitor-exit v31
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 832
    return-void
.end method

.method private handleMsgListChangesMms()V
    .locals 21

    .prologue
    .line 629
    const-string v3, "[MAP]BluetoothMapContentObserver"

    const-string v10, "[handleMsgListChangesMms] enter"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 633
    .local v18, "msgListMms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 636
    .local v8, "c":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 638
    :goto_0
    if-eqz v8, :cond_6

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 639
    const-string v3, "_id"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 640
    .local v4, "id":J
    const-string v3, "msg_box"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 641
    .local v6, "type":I
    const-string v3, "m_type"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 642
    .local v19, "mtype":I
    const-string v3, "thread_id"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 644
    .local v7, "threadId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 649
    .local v2, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    if-nez v2, :cond_1

    .line 651
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    aget-object v3, v3, v6

    const-string v10, "inbox"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x84

    move/from16 v0, v19

    if-eq v0, v3, :cond_0

    .line 653
    const-string v3, "[MAP]BluetoothMapContentObserver"

    const-string v10, "[handleMsgListChangesMms] continue"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 704
    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v4    # "id":J
    .end local v6    # "type":I
    .end local v7    # "threadId":I
    .end local v19    # "mtype":I
    :catchall_0
    move-exception v3

    :try_start_1
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    throw v3

    .line 714
    :catchall_1
    move-exception v3

    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 657
    .restart local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .restart local v4    # "id":J
    .restart local v6    # "type":I
    .restart local v7    # "threadId":I
    .restart local v19    # "mtype":I
    :cond_0
    :try_start_2
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JII)V

    .line 658
    .restart local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v11, "NewMessage"

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    aget-object v14, v3, v6

    const/4 v15, 0x0

    sget-object v16, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v10, p0

    move-wide v12, v4

    invoke-direct/range {v9 .. v16}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 663
    .local v9, "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto/16 :goto_0

    .line 666
    .end local v9    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_1
    iget v3, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    if-eq v6, v3, :cond_4

    .line 667
    const-string v3, "[MAP]BluetoothMapContentObserver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[handleMsgListChangesMms] MessageShift new type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " old type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-boolean v3, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    if-nez v3, :cond_2

    .line 672
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v11, "MessageShift"

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    aget-object v14, v3, v6

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    iget v10, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    aget-object v15, v3, v10

    sget-object v16, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v10, p0

    move-wide v12, v4

    invoke-direct/range {v9 .. v16}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 674
    .restart local v9    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 676
    .end local v9    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_2
    iput v6, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 678
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    aget-object v3, v3, v6

    const-string v10, "sent"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    const/4 v10, 0x1

    if-ne v3, v10, :cond_3

    .line 680
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 681
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v11, "SendingSuccess"

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    aget-object v14, v3, v6

    const/4 v15, 0x0

    sget-object v16, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v10, p0

    move-wide v12, v4

    invoke-direct/range {v9 .. v16}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 683
    .restart local v9    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 700
    .end local v9    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_3
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 685
    :cond_4
    iget v3, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    if-eq v7, v3, :cond_3

    .line 686
    const-string v3, "[MAP]BluetoothMapContentObserver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Message delete change: type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " old type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n    threadId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " old threadId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v3, -0x1

    if-ne v7, v3, :cond_5

    .line 689
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v11, "MessageDeleted"

    const-string v14, "deleted"

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    iget v10, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    aget-object v15, v3, v10

    sget-object v16, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v10, p0

    move-wide v12, v4

    invoke-direct/range {v9 .. v16}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 691
    .restart local v9    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 692
    iput v7, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    goto :goto_1

    .line 694
    .end local v9    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_5
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v11, "MessageShift"

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    iget v10, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    aget-object v14, v3, v10

    const-string v15, "deleted"

    sget-object v16, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v10, p0

    move-wide v12, v4

    invoke-direct/range {v9 .. v16}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 696
    .restart local v9    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 697
    iput v7, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 704
    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v4    # "id":J
    .end local v6    # "type":I
    .end local v7    # "threadId":I
    .end local v9    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v19    # "mtype":I
    :cond_6
    :try_start_3
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 708
    .restart local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v11, "MessageDeleted"

    iget-wide v12, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    const-string v14, "deleted"

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    iget v10, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    aget-object v15, v3, v10

    sget-object v16, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v16}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 711
    .restart local v9    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_2

    .line 713
    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v9    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_7
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    .line 714
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 715
    return-void
.end method

.method private handleMsgListChangesSms()V
    .locals 29

    .prologue
    .line 550
    const-string v3, "[MAP]BluetoothMapContentObserver"

    const-string v10, "[handleMsgListChangesSms] enter"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 554
    .local v26, "msgListSms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 557
    .local v8, "c":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 559
    :goto_0
    if-eqz v8, :cond_5

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 560
    const-string v3, "_id"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 561
    .local v4, "id":J
    const-string v3, "type"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 562
    .local v6, "type":I
    const-string v3, "thread_id"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 564
    .local v7, "threadId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 569
    .local v2, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    if-nez v2, :cond_0

    .line 571
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JII)V

    .line 572
    .restart local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v11, "NewMessage"

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    aget-object v14, v3, v6

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v16, v0

    move-object/from16 v10, p0

    move-wide v12, v4

    invoke-direct/range {v9 .. v16}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 577
    .local v9, "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 612
    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v4    # "id":J
    .end local v6    # "type":I
    .end local v7    # "threadId":I
    .end local v9    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :catchall_0
    move-exception v3

    :try_start_1
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    throw v3

    .line 625
    :catchall_1
    move-exception v3

    monitor-exit v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 580
    .restart local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .restart local v4    # "id":J
    .restart local v6    # "type":I
    .restart local v7    # "threadId":I
    :cond_0
    :try_start_2
    iget v3, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    if-eq v6, v3, :cond_3

    .line 581
    const-string v3, "[MAP]BluetoothMapContentObserver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[handleMsgListChangesSms] MessageShift new type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " old type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    iget v10, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    aget-object v15, v3, v10

    .line 584
    .local v15, "oldFolder":Ljava/lang/String;
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    aget-object v27, v3, v6

    .line 586
    .local v27, "newFolder":Ljava/lang/String;
    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 587
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v11, "MessageShift"

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    aget-object v14, v3, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v16, v0

    move-object/from16 v10, p0

    move-wide v12, v4

    invoke-direct/range {v9 .. v16}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 589
    .restart local v9    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 591
    .end local v9    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_1
    iput v6, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 607
    .end local v15    # "oldFolder":Ljava/lang/String;
    .end local v27    # "newFolder":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 592
    :cond_3
    iget v3, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    if-eq v7, v3, :cond_2

    .line 593
    const-string v3, "[MAP]BluetoothMapContentObserver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Message delete change: type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " old type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n    threadId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " old threadId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v3, -0x1

    if-ne v7, v3, :cond_4

    .line 596
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v19, "MessageDeleted"

    const-string v22, "deleted"

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    iget v10, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    aget-object v23, v3, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v24, v0

    move-object/from16 v17, v9

    move-object/from16 v18, p0

    move-wide/from16 v20, v4

    invoke-direct/range {v17 .. v24}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 598
    .restart local v9    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 599
    iput v7, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    goto :goto_1

    .line 601
    .end local v9    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_4
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v19, "MessageShift"

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    iget v10, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    aget-object v22, v3, v10

    const-string v23, "deleted"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v24, v0

    move-object/from16 v17, v9

    move-object/from16 v18, p0

    move-wide/from16 v20, v4

    invoke-direct/range {v17 .. v24}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 603
    .restart local v9    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 604
    iput v7, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 612
    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v4    # "id":J
    .end local v6    # "type":I
    .end local v7    # "threadId":I
    .end local v9    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_5
    :try_start_3
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 618
    .restart local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v19, "MessageDeleted"

    iget-wide v0, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v20, v0

    const-string v22, "deleted"

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    iget v10, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    aget-object v23, v3, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v24, v0

    move-object/from16 v17, v9

    move-object/from16 v18, p0

    invoke-direct/range {v17 .. v24}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 621
    .restart local v9    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_2

    .line 624
    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v9    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_6
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    .line 625
    monitor-exit v28
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 626
    return-void
.end method

.method private initMsgList()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 475
    const-string v3, "[MAP]BluetoothMapContentObserver"

    const-string v8, "[initMsgList]"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    if-eqz v3, :cond_2

    .line 479
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 481
    .local v19, "msgListSms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 485
    .local v16, "c":Landroid/database/Cursor;
    :goto_0
    if-eqz v16, :cond_0

    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 486
    const-string v3, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 487
    .local v4, "id":J
    const-string v3, "type"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 488
    .local v6, "type":I
    const-string v3, "thread_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 490
    .local v7, "threadId":I
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JII)V

    .line 491
    .local v2, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 494
    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v4    # "id":J
    .end local v6    # "type":I
    .end local v7    # "threadId":I
    :catchall_0
    move-exception v3

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    throw v3

    :cond_0
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    monitor-enter v8

    .line 498
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 499
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    .line 500
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 502
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 504
    .local v18, "msgListMms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 507
    :goto_1
    if-eqz v16, :cond_1

    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 508
    const-string v3, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 509
    .restart local v4    # "id":J
    const-string v3, "msg_box"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 510
    .restart local v6    # "type":I
    const-string v3, "thread_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 512
    .restart local v7    # "threadId":I
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JII)V

    .line 513
    .restart local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 516
    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v4    # "id":J
    .end local v6    # "type":I
    .end local v7    # "threadId":I
    :catchall_1
    move-exception v3

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    throw v3

    .line 500
    .end local v18    # "msgListMms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    :catchall_2
    move-exception v3

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v3

    .line 516
    .restart local v18    # "msgListMms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    :cond_1
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    monitor-enter v8

    .line 520
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 521
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    .line 522
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 525
    .end local v16    # "c":Landroid/database/Cursor;
    .end local v18    # "msgListMms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    .end local v19    # "msgListSms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    if-eqz v3, :cond_4

    .line 526
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 527
    .local v17, "msgListEmail":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    .line 528
    .local v9, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->EMAIL_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 531
    .restart local v16    # "c":Landroid/database/Cursor;
    :goto_2
    if-eqz v16, :cond_3

    :try_start_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 532
    const-string v3, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 533
    .restart local v4    # "id":J
    const-string v3, "folder_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v14, v3

    .line 535
    .local v14, "folderId":J
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object v10, v2

    move-object/from16 v11, p0

    move-wide v12, v4

    invoke-direct/range {v10 .. v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JJ)V

    .line 536
    .restart local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    .line 539
    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v4    # "id":J
    .end local v14    # "folderId":J
    :catchall_3
    move-exception v3

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    throw v3

    .line 522
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v17    # "msgListEmail":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    .restart local v18    # "msgListMms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    .restart local v19    # "msgListSms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    :catchall_4
    move-exception v3

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v3

    .line 539
    .end local v18    # "msgListMms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    .end local v19    # "msgListSms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    .restart local v9    # "uri":Landroid/net/Uri;
    .restart local v17    # "msgListEmail":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    :cond_3
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListEmail:Ljava/util/Map;

    monitor-enter v8

    .line 543
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListEmail:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 544
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListEmail:Ljava/util/Map;

    .line 545
    monitor-exit v8

    .line 547
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v16    # "c":Landroid/database/Cursor;
    .end local v17    # "msgListEmail":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    :cond_4
    return-void

    .line 545
    .restart local v9    # "uri":Landroid/net/Uri;
    .restart local v16    # "c":Landroid/database/Cursor;
    .restart local v17    # "msgListEmail":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    :catchall_5
    move-exception v3

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v3
.end method

.method private moveDraftToOutbox(JJ)V
    .locals 11
    .param p1, "handle"    # J
    .param p3, "subId"    # J

    .prologue
    const/4 v2, 0x0

    .line 1408
    const-wide/16 v4, -0x1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_1

    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " _id= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1410
    .local v3, "whereClause":Ljava/lang/String;
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 1411
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1412
    .local v8, "queryResult":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 1413
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1414
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1415
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1417
    .local v7, "data":Landroid/content/ContentValues;
    const-string v0, "msg_box"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1418
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v7, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 1419
    .local v6, "count":I
    const-string v0, "[MAP]BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moved draft MMS to outbox "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    const/4 v0, 0x1

    if-ne v6, v0, :cond_0

    .line 1421
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1422
    .local v9, "value":Landroid/content/ContentValues;
    const-string v0, "pending_sub_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1423
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "msg_id="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v9, v5, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 1425
    const-string v0, "[MAP]BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[moveDraftToOutbox] setPendingMessa count = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    .end local v6    # "count":I
    .end local v7    # "data":Landroid/content/ContentValues;
    .end local v9    # "value":Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1433
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v8    # "queryResult":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 1430
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v3    # "whereClause":Ljava/lang/String;
    .restart local v8    # "queryResult":Landroid/database/Cursor;
    :cond_2
    const-string v0, "[MAP]BluetoothMapContentObserver"

    const-string v2, "Could not move draft to outbox "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pushMmsToFolder(ILjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMms;J)J
    .locals 22
    .param p1, "folder"    # I
    .param p2, "to_address"    # Ljava/lang/String;
    .param p3, "msg"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMms;
    .param p4, "subId"    # J

    .prologue
    .line 1444
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1445
    .local v18, "values":Landroid/content/ContentValues;
    const-string v2, "msg_box"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1446
    const-string v2, "read"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1447
    const-string v2, "seen"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1448
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->getSubject()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1449
    const-string v2, "sub"

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->getSubject()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->getSubject()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1455
    const-string v2, "sub_cs"

    const/16 v5, 0x6a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1458
    :cond_0
    const-string v2, "ct_t"

    const-string v5, "application/vnd.wap.multipart.related"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    const-string v2, "exp"

    const v5, 0x93a80

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1460
    const-string v2, "m_cls"

    const-string v5, "personal"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    const-string v2, "m_type"

    const/16 v5, 0x80

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1462
    const-string v2, "v"

    const/16 v5, 0x12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1463
    const-string v2, "pri"

    const/16 v5, 0x81

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1464
    const-string v2, "rr"

    const/16 v5, 0x81

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1465
    const-string v2, "tr_id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "T"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    const-string v2, "d_rpt"

    const/16 v5, 0x81

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1467
    const-string v2, "locked"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1469
    const-string v2, "sub_id"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1470
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->getTextOnly()Z

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 1471
    const-string v2, "text_only"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1472
    :cond_1
    const-string v2, "m_size"

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->getSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1475
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 1476
    .local v17, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1477
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1478
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 1480
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1481
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1483
    if-nez v3, :cond_4

    .line 1485
    const-string v2, "[MAP]BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unabled to insert MMS "

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v20, "Uri: "

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    const-wide/16 v14, -0x1

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1626
    :cond_2
    :goto_1
    return-wide v14

    .line 1451
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v17    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const-string v2, "sub"

    const-string v5, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1491
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v17    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v10

    .line 1493
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_5

    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1494
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1495
    .local v6, "id":J
    const-string v2, "msg_box"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1496
    .local v8, "type":I
    const-string v2, "thread_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1501
    .local v9, "threadId":I
    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JII)V

    .line 1502
    .local v4, "newMsg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 1503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1506
    .end local v4    # "newMsg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v6    # "id":J
    .end local v8    # "type":I
    .end local v9    # "threadId":I
    :cond_5
    :try_start_3
    invoke-static {v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    .line 1508
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1510
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 1511
    .local v14, "handle":J
    const-string v2, "[MAP]BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " NEW URI "

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    :try_start_4
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->getMimeParts()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1516
    const-string v2, "[MAP]BluetoothMapContentObserver"

    const-string v5, "No MMS parts present..."

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1603
    :cond_6
    :goto_2
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 1604
    const-string v2, "contact_id"

    const-string v5, "null"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    const-string v2, "address"

    const-string v5, "insert-address-token"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    const-string v2, "type"

    const/16 v5, 0x89

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1607
    const-string v2, "charset"

    const/16 v5, 0x6a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/addr"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1611
    if-eqz v3, :cond_7

    .line 1612
    const-string v2, "[MAP]BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[pushMmsToFolder] NEW URI "

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    :cond_7
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 1616
    const-string v2, "contact_id"

    const-string v5, "null"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    const-string v2, "address"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    const-string v2, "type"

    const/16 v5, 0x97

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1619
    const-string v2, "charset"

    const/16 v5, 0x6a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/addr"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1623
    if-eqz v3, :cond_2

    .line 1624
    const-string v2, "[MAP]BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[pushMmsToFolder] NEW URI "

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1506
    .end local v14    # "handle":J
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-static {v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    throw v2

    .line 1508
    .end local v10    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 1518
    .restart local v10    # "c":Landroid/database/Cursor;
    .restart local v14    # "handle":J
    :cond_8
    :try_start_6
    const-string v2, "[MAP]BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Adding "

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->getMimeParts()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v19, " parts to the data base."

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    const/4 v11, 0x0

    .line 1520
    .local v11, "count":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->getMimeParts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;

    .line 1521
    .local v16, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
    add-int/lit8 v11, v11, 0x1

    .line 1522
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 1523
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v2, :cond_10

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "TEXT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1524
    const-string v2, "ct"

    const-string v5, "text/plain"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    const-string v2, "chset"

    const/16 v5, 0x6a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1526
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 1527
    const-string v2, "fn"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mPartName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    const-string v2, "name"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mPartName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    :goto_4
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentId:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 1535
    const-string v2, "cid"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentId:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    :goto_5
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentLocation:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 1545
    const-string v2, "cl"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentLocation:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    :goto_6
    const-string v2, "[MAP]BluetoothMapContentObserver"

    const-string v5, "[pushMmsToFolder] Added TEXT part"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentDisposition:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 1556
    const-string v2, "cd"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentDisposition:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    :cond_a
    const-string v2, "text"

    invoke-virtual/range {v16 .. v16}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->getDataAsString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/part"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1561
    const-string v2, "[MAP]BluetoothMapContentObserver"

    const-string v5, "Added TEXT part"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :goto_7
    if-eqz v3, :cond_9

    .line 1593
    const-string v2, "[MAP]BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Added part with content-type: "

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v19, " to Uri: "

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 1597
    .end local v11    # "count":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
    :catch_0
    move-exception v12

    .line 1598
    .local v12, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "[MAP]BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[pushMmsToFolder] "

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1530
    .end local v12    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v11    # "count":I
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v16    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
    :cond_b
    :try_start_7
    const-string v2, "fn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "text_"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v19, ".txt"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    const-string v2, "name"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "text_"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v19, ".txt"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4

    .line 1599
    .end local v11    # "count":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
    :catch_1
    move-exception v12

    .line 1600
    .local v12, "e":Ljava/io/IOException;
    const-string v2, "[MAP]BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[pushMmsToFolder] "

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1537
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v11    # "count":I
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v16    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
    :cond_c
    :try_start_8
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 1538
    const-string v2, "cid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mPartName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v19, ">"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1540
    :cond_d
    const-string v2, "cid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<text_"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v19, ">"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1547
    :cond_e
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1548
    const-string v2, "cl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mPartName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v19, ".txt"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1550
    :cond_f
    const-string v2, "cl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "text_"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v19, ".txt"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1563
    :cond_10
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v2, :cond_14

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "SMIL"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1565
    const-string v2, "seq"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1566
    const-string v2, "ct"

    const-string v5, "application/smil"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentId:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 1568
    const-string v2, "cid"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentId:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    :goto_8
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentLocation:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 1573
    const-string v2, "cl"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentLocation:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    :goto_9
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentDisposition:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 1579
    const-string v2, "cd"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentDisposition:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    :cond_11
    const-string v2, "fn"

    const-string v5, "smil.xml"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    const-string v2, "name"

    const-string v5, "smil.xml"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    const-string v2, "text"

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mData:[B

    move-object/from16 v19, v0

    const-string v20, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/part"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1586
    const-string v2, "[MAP]BluetoothMapContentObserver"

    const-string v5, "Added SMIL part"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1570
    :cond_12
    const-string v2, "cid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<smil_"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v19, ">"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1575
    :cond_13
    const-string v2, "cl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "smil_"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v19, ".xml"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1589
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v15, v1, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->writeMmsDataPart(JLcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;I)V

    .line 1590
    const-string v2, "[MAP]BluetoothMapContentObserver"

    const-string v5, "Added OTHER part"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_7
.end method

.method private queryNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 2099
    const-string v8, ""

    .line 2100
    .local v8, "number":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v9, v8

    .line 2141
    .end local v8    # "number":Ljava/lang/String;
    .local v9, "number":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 2105
    .end local v9    # "number":Ljava/lang/String;
    .restart local v8    # "number":Ljava/lang/String;
    :cond_0
    const-string v6, ""

    .line 2106
    .local v6, "contactId":Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 2107
    .local v1, "contactUri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimetype=\'vnd.android.cursor.item/name\' AND data1=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2111
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "raw_contact_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2114
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2115
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 2118
    :cond_1
    if-eqz v7, :cond_2

    .line 2119
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2125
    :cond_2
    const-string v3, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND raw_contact_id=?"

    .line 2129
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data1"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2133
    if-eqz v7, :cond_3

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2134
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 2137
    :cond_3
    if-eqz v7, :cond_4

    .line 2138
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v8

    .line 2141
    .end local v8    # "number":Ljava/lang/String;
    .restart local v9    # "number":Ljava/lang/String;
    goto :goto_0

    .line 2118
    .end local v9    # "number":Ljava/lang/String;
    .restart local v8    # "number":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 2119
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 2137
    :catchall_1
    move-exception v0

    if-eqz v7, :cond_6

    .line 2138
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private registerPhoneServiceStateListener()V
    .locals 3

    .prologue
    .line 2002
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2003
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2004
    return-void
.end method

.method private removeDeletedMessages()V
    .locals 4

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "thread_id = -1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2062
    return-void
.end method

.method private resendPendingMessages()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 2013
    const-string v3, "type = 4"

    .line 2014
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2017
    .local v6, "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2018
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2019
    .local v8, "id":J
    const-string v0, "body"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2020
    .local v7, "msgBody":Ljava/lang/String;
    const-string v0, "sub_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2021
    .local v12, "subId":J
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    .line 2022
    .local v10, "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    if-eqz v10, :cond_0

    iget-boolean v0, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->resend:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->sendInProgress:Z

    if-eq v0, v11, :cond_0

    .line 2025
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->sendInProgress:Z

    .line 2026
    invoke-virtual {p0, v10, v7, v12, v13}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendMessage(Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2030
    .end local v7    # "msgBody":Ljava/lang/String;
    .end local v8    # "id":J
    .end local v10    # "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    .end local v12    # "subId":J
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    .line 2033
    return-void
.end method

.method private sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    .locals 6
    .param p1, "evt"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    .prologue
    .line 458
    const-string v1, "[MAP]BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sendEvent]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 462
    :cond_0
    const-string v1, "[MAP]BluetoothMapContentObserver"

    const-string v2, "[sendEvent]: No MNS client registered or connected- don\'t send event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_0
    return-void

    .line 467
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->encode()[B

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->sendEvent([BI)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 470
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v1, "[MAP]BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sendEvent]: UnsupportedEncodingException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setEmailMessageStatusDelete(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;JI)Z
    .locals 23
    .param p1, "mCurrentFolder"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .param p2, "uriStr"    # Ljava/lang/String;
    .param p3, "handle"    # J
    .param p5, "status"    # I

    .prologue
    .line 851
    const/4 v12, 0x0

    .line 852
    .local v12, "res":Z
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "Message"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 854
    .local v14, "uri":Landroid/net/Uri;
    const/4 v13, 0x0

    .line 855
    .local v13, "updateCount":I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 856
    .local v4, "contentValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string v16, "deleted"

    invoke-virtual/range {v15 .. v16}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v5

    .line 858
    .local v5, "deleteFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    const-string v15, "_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListEmail:Ljava/util/Map;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 860
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListEmail:Ljava/util/Map;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 861
    .local v11, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    const/4 v15, 0x1

    move/from16 v0, p5

    if-ne v0, v15, :cond_6

    .line 863
    const-wide/16 v8, -0x1

    .line 864
    .local v8, "folderId":J
    if-eqz v5, :cond_0

    .line 865
    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderId()J

    move-result-wide v8

    .line 867
    :cond_0
    const-string v15, "folder_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v14, v4, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 871
    if-lez v13, :cond_5

    .line 872
    const/4 v12, 0x1

    .line 873
    if-eqz v11, :cond_1

    .line 874
    iget-wide v0, v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->oldFolderId:J

    .line 876
    iput-wide v8, v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    .line 878
    :cond_1
    const-string v15, "[MAP]BluetoothMapContentObserver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Deleted MSG: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " from folderId: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    .end local v8    # "folderId":J
    :cond_2
    :goto_0
    const-string v7, "unknown"

    .line 914
    .local v7, "folderName":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 915
    iget-wide v0, v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v6

    .line 916
    .local v6, "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz v6, :cond_3

    .line 917
    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v7

    .line 920
    .end local v6    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_3
    const-string v15, "[MAP]BluetoothMapContentObserver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setEmailMessageStatusDelete: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " from "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " status: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    if-nez v12, :cond_4

    .line 925
    const-string v15, "[MAP]BluetoothMapContentObserver"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Set delete status "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " failed."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_4
    return v12

    .line 880
    .end local v7    # "folderName":Ljava/lang/String;
    .restart local v8    # "folderId":J
    :cond_5
    :try_start_1
    const-string v15, "[MAP]BluetoothMapContentObserver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Msg: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " - Set delete status "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " failed for folderId "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 923
    .end local v8    # "folderId":J
    .end local v11    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .line 883
    .restart local v11    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :cond_6
    if-nez p5, :cond_2

    .line 886
    if-eqz v11, :cond_2

    if-eqz v5, :cond_2

    :try_start_2
    iget-wide v0, v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    move-wide/from16 v18, v0

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderId()J

    move-result-wide v20

    cmp-long v15, v18, v20

    if-nez v15, :cond_2

    .line 889
    const-wide/16 v8, -0x1

    .line 890
    .restart local v8    # "folderId":J
    if-eqz v11, :cond_7

    iget-wide v0, v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->oldFolderId:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v15, v18, v20

    if-eqz v15, :cond_7

    .line 891
    iget-wide v8, v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->oldFolderId:J

    .line 900
    :goto_1
    const-string v15, "folder_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 901
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v14, v4, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 902
    if-lez v13, :cond_9

    .line 903
    const/4 v12, 0x1

    .line 905
    iput-wide v8, v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    goto/16 :goto_0

    .line 893
    :cond_7
    const-string v15, "inbox"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v10

    .line 895
    .local v10, "inboxFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz v10, :cond_8

    .line 896
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderId()J

    move-result-wide v8

    .line 898
    :cond_8
    const-string v15, "[MAP]BluetoothMapContentObserver"

    const-string v17, "We did not delete the message, hence the old folder is unknown. Moving to inbox."

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 907
    .end local v10    # "inboxFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_9
    const-string v15, "[MAP]BluetoothMapContentObserver"

    const-string v17, "We did not delete the message, hence the old folder is unknown. Moving to inbox."

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private unDeleteMessageMms(J)Z
    .locals 19
    .param p1, "handle"    # J

    .prologue
    .line 973
    const/16 v16, 0x0

    .line 974
    .local v16, "res":Z
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 975
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 978
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 979
    const-string v2, "thread_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 980
    .local v17, "threadId":I
    const-string v2, "[MAP]BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[unDeleteMessageMms] threadId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    .line 985
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 986
    .local v10, "id":J
    const-string v2, "msg_box"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 987
    .local v13, "msgBox":I
    const/4 v2, 0x1

    if-ne v13, v2, :cond_2

    .line 988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/16 v4, 0x89

    invoke-static {v2, v10, v11, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v8

    .line 994
    .local v8, "address":Ljava/lang/String;
    :goto_0
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 995
    .local v15, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v8, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v2, v15}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 997
    .local v14, "oldThreadId":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 998
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 999
    .local v12, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    if-eqz v12, :cond_0

    .line 1000
    invoke-virtual {v14}, Ljava/lang/Long;->intValue()I

    move-result v2

    iput v2, v12, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    .line 1002
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1003
    :try_start_2
    const-string v2, "thread_id"

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->updateThreadId(Landroid/net/Uri;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1008
    .end local v8    # "address":Ljava/lang/String;
    .end local v10    # "id":J
    .end local v12    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v13    # "msgBox":I
    .end local v14    # "oldThreadId":Ljava/lang/Long;
    .end local v15    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    const/16 v16, 0x1

    .line 1011
    .end local v17    # "threadId":I
    :cond_1
    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    .line 1013
    return v16

    .line 991
    .restart local v10    # "id":J
    .restart local v13    # "msgBox":I
    .restart local v17    # "threadId":I
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/16 v4, 0x97

    invoke-static {v2, v10, v11, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v8

    .restart local v8    # "address":Ljava/lang/String;
    goto :goto_0

    .line 1002
    .restart local v14    # "oldThreadId":Ljava/lang/Long;
    .restart local v15    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1011
    .end local v8    # "address":Ljava/lang/String;
    .end local v10    # "id":J
    .end local v13    # "msgBox":I
    .end local v14    # "oldThreadId":Ljava/lang/Long;
    .end local v15    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "threadId":I
    :catchall_1
    move-exception v2

    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    throw v2

    .line 1005
    .restart local v17    # "threadId":I
    :cond_3
    :try_start_6
    const-string v2, "[MAP]BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message not in deleted folder: handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " threadId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method

.method private unDeleteMessageSms(J)Z
    .locals 13
    .param p1, "handle"    # J

    .prologue
    const/4 v2, 0x0

    .line 1053
    const/4 v11, 0x0

    .line 1054
    .local v11, "res":Z
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1055
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1057
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1058
    const-string v0, "thread_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1059
    .local v12, "threadId":I
    const-string v0, "[MAP]BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[unDeleteMessageSms] threadId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/4 v0, -0x1

    if-ne v12, v0, :cond_2

    .line 1061
    const-string v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1062
    .local v6, "address":Ljava/lang/String;
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1063
    .local v10, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v6, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1064
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v0, v10}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 1065
    .local v9, "oldThreadId":Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1066
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 1067
    .local v8, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    if-eqz v8, :cond_0

    .line 1068
    invoke-virtual {v9}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    .line 1070
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1071
    :try_start_2
    const-string v0, "thread_id"

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->updateThreadId(Landroid/net/Uri;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1076
    .end local v6    # "address":Ljava/lang/String;
    .end local v8    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v9    # "oldThreadId":Ljava/lang/Long;
    .end local v10    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    const/4 v11, 0x1

    .line 1079
    .end local v12    # "threadId":I
    :cond_1
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    .line 1082
    return v11

    .line 1070
    .restart local v6    # "address":Ljava/lang/String;
    .restart local v9    # "oldThreadId":Ljava/lang/Long;
    .restart local v10    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "threadId":I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1079
    .end local v6    # "address":Ljava/lang/String;
    .end local v9    # "oldThreadId":Ljava/lang/Long;
    .end local v10    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "threadId":I
    :catchall_1
    move-exception v0

    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    throw v0

    .line 1073
    .restart local v12    # "threadId":I
    :cond_2
    :try_start_5
    const-string v0, "[MAP]BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message not in deleted folder: handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threadId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method private unRegisterPhoneServiceStateListener()V
    .locals 3

    .prologue
    .line 2007
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2008
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2009
    return-void
.end method

.method private updateThreadId(Landroid/net/Uri;Ljava/lang/String;J)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "valueString"    # Ljava/lang/String;
    .param p3, "threadId"    # J

    .prologue
    const/4 v2, 0x0

    .line 931
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 932
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 933
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 934
    return-void
.end method

.method private writeMmsDataPart(JLcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;I)V
    .locals 7
    .param p1, "handle"    # J
    .param p3, "part"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1631
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1632
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "mid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1633
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1634
    const-string v4, "ct"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    :goto_0
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentId:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1639
    const-string v4, "cid"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    :goto_1
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentLocation:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1649
    const-string v4, "cl"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    :goto_2
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentDisposition:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1658
    const-string v4, "cd"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentDisposition:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    :cond_0
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 1660
    const-string v4, "fn"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    const-string v4, "name"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1668
    .local v1, "partUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1671
    .local v2, "res":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 1672
    .local v0, "os":Ljava/io/OutputStream;
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mData:[B

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 1673
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1674
    return-void

    .line 1636
    .end local v0    # "os":Ljava/io/OutputStream;
    .end local v1    # "partUri":Landroid/net/Uri;
    .end local v2    # "res":Landroid/net/Uri;
    :cond_1
    const-string v4, "[MAP]BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS has no CONTENT_TYPE for part "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1641
    :cond_2
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1642
    const-string v4, "cid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1644
    :cond_3
    const-string v4, "cid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<part_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1651
    :cond_4
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1652
    const-string v4, "cl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1654
    :cond_5
    const-string v4, "cl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "part_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1664
    :cond_6
    const-string v4, "fn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "part_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    const-string v4, "name"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "part_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public deinit()V
    .locals 1

    .prologue
    .line 2081
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mInitialized:Z

    .line 2082
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unregisterObserver()V

    .line 2083
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->unregister()V

    .line 2084
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unRegisterPhoneServiceStateListener()V

    .line 2085
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->failPendingMessages()V

    .line 2086
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->removeDeletedMessages()V

    .line 2087
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2088
    return-void
.end method

.method public handleSmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2091
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 2092
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2093
    const/4 v0, 0x1

    .line 2095
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->register()V

    .line 2076
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->registerPhoneServiceStateListener()V

    .line 2077
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mInitialized:Z

    .line 2078
    return-void
.end method

.method public pushMessage(Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;J)J
    .locals 59
    .param p1, "msg"    # Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .param p2, "folderElement"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p4, "emailBaseUri"    # Ljava/lang/String;
    .param p5, "subId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1196
    const-string v7, "[MAP]BluetoothMapContentObserver"

    const-string v12, "pushMessage"

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getRecipients()Ljava/util/ArrayList;

    move-result-object v53

    .line 1198
    .local v53, "recipientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v7

    const/4 v12, -0x1

    if-ne v7, v12, :cond_0

    const/16 v36, 0x0

    .line 1200
    .local v36, "transparent":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getRetry()I

    move-result v37

    .line 1201
    .local v37, "retry":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v41

    .line 1202
    .local v41, "charset":I
    const-wide/16 v8, -0x1

    .line 1203
    .local v8, "handle":J
    const-wide/16 v10, -0x1

    .line 1205
    .local v10, "folderId":J
    if-nez v53, :cond_1

    .line 1206
    const-string v7, "[MAP]BluetoothMapContentObserver"

    const-string v12, "empty recipient list"

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const-wide/16 v20, -0x1

    .line 1374
    .end local p1    # "msg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    :goto_1
    return-wide v20

    .line 1198
    .end local v8    # "handle":J
    .end local v10    # "folderId":J
    .end local v36    # "transparent":I
    .end local v37    # "retry":I
    .end local v41    # "charset":I
    .restart local p1    # "msg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v36

    goto :goto_0

    .line 1210
    .restart local v8    # "handle":J
    .restart local v10    # "folderId":J
    .restart local v36    # "transparent":I
    .restart local v37    # "retry":I
    .restart local v41    # "charset":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    sget-object v12, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v7, v12}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1212
    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;

    .end local p1    # "msg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->getEmailBody()Ljava/lang/String;

    move-result-object v19

    .line 1214
    .local v19, "msgBody":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v47

    .line 1215
    .local v47, "length":I
    const-string v7, "[MAP]BluetoothMapContentObserver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "pushMessage: message string length = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v47

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const-string v7, "\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v48

    .line 1217
    .local v48, "messages":[Ljava/lang/String;
    const-string v7, "[MAP]BluetoothMapContentObserver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "pushMessage: messages count="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v48

    array-length v15, v0

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const/16 v45, 0x0

    .local v45, "i":I
    :goto_2
    move-object/from16 v0, v48

    array-length v7, v0

    move/from16 v0, v45

    if-ge v0, v7, :cond_2

    .line 1219
    const-string v7, "[MAP]BluetoothMapContentObserver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "part "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v45

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, ":"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v15, v48, v45

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    add-int/lit8 v45, v45, 0x1

    goto :goto_2

    .line 1222
    :cond_2
    const/16 v49, 0x0

    .line 1223
    .local v49, "os":Ljava/io/FileOutputStream;
    const/16 v44, 0x0

    .line 1224
    .local v44, "fdOut":Landroid/os/ParcelFileDescriptor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "Message"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v56

    .line 1225
    .local v56, "uriInsert":Landroid/net/Uri;
    const-string v7, "[MAP]BluetoothMapContentObserver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "pushMessage - uriInsert= "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {v56 .. v56}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, ", intoFolder id="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderId()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListEmail:Ljava/util/Map;

    monitor-enter v12

    .line 1230
    :try_start_0
    new-instance v58, Landroid/content/ContentValues;

    invoke-direct/range {v58 .. v58}, Landroid/content/ContentValues;-><init>()V

    .line 1231
    .local v58, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderId()J

    move-result-wide v10

    .line 1232
    const-string v7, "folder_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, v58

    invoke-virtual {v0, v7, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1233
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v57

    .line 1234
    .local v57, "uriNew":Landroid/net/Uri;
    const-string v7, "[MAP]BluetoothMapContentObserver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pushMessage - uriNew= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {v57 .. v57}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v7, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    invoke-virtual/range {v57 .. v57}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-wide v8

    .line 1238
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    const-string v15, "w"

    move-object/from16 v0, v57

    invoke-virtual {v7, v0, v15}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v44

    .line 1239
    new-instance v50, Ljava/io/FileOutputStream;

    invoke-virtual/range {v44 .. v44}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    move-object/from16 v0, v50

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1241
    .end local v49    # "os":Ljava/io/FileOutputStream;
    .local v50, "os":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v15, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v50

    move/from16 v1, v16

    invoke-virtual {v0, v7, v15, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 1250
    if-eqz v50, :cond_3

    .line 1251
    :try_start_3
    invoke-virtual/range {v50 .. v50}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1254
    :cond_3
    :goto_3
    if-eqz v44, :cond_4

    .line 1255
    :try_start_4
    invoke-virtual/range {v44 .. v44}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1261
    :cond_4
    :goto_4
    :try_start_5
    new-instance v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JJ)V

    .line 1262
    .local v6, "newMsg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    const/4 v7, 0x1

    move/from16 v0, v36

    if-ne v0, v7, :cond_9

    const/4 v7, 0x1

    :goto_5
    iput-boolean v7, v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    .line 1263
    const-string v7, "outbox"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderId()J

    move-result-wide v20

    cmp-long v7, v10, v20

    if-nez v7, :cond_5

    .line 1265
    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 1267
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListEmail:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v7, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    monitor-exit v12

    .end local v6    # "newMsg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v19    # "msgBody":Ljava/lang/String;
    .end local v44    # "fdOut":Landroid/os/ParcelFileDescriptor;
    .end local v45    # "i":I
    .end local v47    # "length":I
    .end local v48    # "messages":[Ljava/lang/String;
    .end local v50    # "os":Ljava/io/FileOutputStream;
    .end local v56    # "uriInsert":Landroid/net/Uri;
    .end local v57    # "uriNew":Landroid/net/Uri;
    .end local v58    # "values":Landroid/content/ContentValues;
    :cond_6
    move-wide/from16 v20, v8

    .line 1374
    goto/16 :goto_1

    .line 1252
    .restart local v19    # "msgBody":Ljava/lang/String;
    .restart local v44    # "fdOut":Landroid/os/ParcelFileDescriptor;
    .restart local v45    # "i":I
    .restart local v47    # "length":I
    .restart local v48    # "messages":[Ljava/lang/String;
    .restart local v50    # "os":Ljava/io/FileOutputStream;
    .restart local v56    # "uriInsert":Landroid/net/Uri;
    .restart local v57    # "uriNew":Landroid/net/Uri;
    .restart local v58    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v42

    .local v42, "e":Ljava/io/IOException;
    const-string v7, "[MAP]BluetoothMapContentObserver"

    move-object/from16 v0, v42

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 1268
    .end local v42    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    move-object/from16 v49, v50

    .end local v50    # "os":Ljava/io/FileOutputStream;
    .end local v57    # "uriNew":Landroid/net/Uri;
    .end local v58    # "values":Landroid/content/ContentValues;
    .restart local v49    # "os":Ljava/io/FileOutputStream;
    :goto_6
    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v7

    .line 1256
    .end local v49    # "os":Ljava/io/FileOutputStream;
    .restart local v50    # "os":Ljava/io/FileOutputStream;
    .restart local v57    # "uriNew":Landroid/net/Uri;
    .restart local v58    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v42

    .restart local v42    # "e":Ljava/io/IOException;
    :try_start_7
    const-string v7, "[MAP]BluetoothMapContentObserver"

    move-object/from16 v0, v42

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 1242
    .end local v42    # "e":Ljava/io/IOException;
    .end local v50    # "os":Ljava/io/FileOutputStream;
    .restart local v49    # "os":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v42

    .line 1243
    .local v42, "e":Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_8
    const-string v7, "[MAP]BluetoothMapContentObserver"

    move-object/from16 v0, v42

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1244
    new-instance v7, Ljava/io/IOException;

    const-string v15, "Unable to open file stream"

    invoke-direct {v7, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1249
    .end local v42    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v7

    .line 1250
    :goto_8
    if-eqz v49, :cond_7

    .line 1251
    :try_start_9
    invoke-virtual/range {v49 .. v49}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1254
    :cond_7
    :goto_9
    if-eqz v44, :cond_8

    .line 1255
    :try_start_a
    invoke-virtual/range {v44 .. v44}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1256
    :cond_8
    :goto_a
    :try_start_b
    throw v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1268
    .end local v57    # "uriNew":Landroid/net/Uri;
    .end local v58    # "values":Landroid/content/ContentValues;
    :catchall_2
    move-exception v7

    goto :goto_6

    .line 1245
    .restart local v57    # "uriNew":Landroid/net/Uri;
    .restart local v58    # "values":Landroid/content/ContentValues;
    :catch_3
    move-exception v42

    .line 1246
    .local v42, "e":Ljava/lang/NullPointerException;
    :goto_b
    :try_start_c
    const-string v7, "[MAP]BluetoothMapContentObserver"

    move-object/from16 v0, v42

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1247
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v15, "Unable to parse message."

    invoke-direct {v7, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1252
    .end local v42    # "e":Ljava/lang/NullPointerException;
    :catch_4
    move-exception v42

    .local v42, "e":Ljava/io/IOException;
    :try_start_d
    const-string v15, "[MAP]BluetoothMapContentObserver"

    move-object/from16 v0, v42

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1256
    .end local v42    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v42

    .restart local v42    # "e":Ljava/io/IOException;
    const-string v15, "[MAP]BluetoothMapContentObserver"

    move-object/from16 v0, v42

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_a

    .line 1262
    .end local v42    # "e":Ljava/io/IOException;
    .end local v49    # "os":Ljava/io/FileOutputStream;
    .restart local v6    # "newMsg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .restart local v50    # "os":Ljava/io/FileOutputStream;
    :cond_9
    const/4 v7, 0x0

    goto :goto_5

    .line 1270
    .end local v6    # "newMsg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v19    # "msgBody":Ljava/lang/String;
    .end local v44    # "fdOut":Landroid/os/ParcelFileDescriptor;
    .end local v45    # "i":I
    .end local v47    # "length":I
    .end local v48    # "messages":[Ljava/lang/String;
    .end local v50    # "os":Ljava/io/FileOutputStream;
    .end local v56    # "uriInsert":Landroid/net/Uri;
    .end local v57    # "uriNew":Landroid/net/Uri;
    .end local v58    # "values":Landroid/content/ContentValues;
    .restart local p1    # "msg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    :cond_a
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v46

    .local v46, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_c
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .line 1271
    .local v52, "recipient":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    invoke-virtual/range {v52 .. v52}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getEnvLevel()I

    move-result v7

    if-nez v7, :cond_b

    .line 1274
    invoke-virtual/range {v52 .. v52}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getFirstPhoneNumber()Ljava/lang/String;

    move-result-object v14

    .line 1277
    .local v14, "phone":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1278
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual/range {v52 .. v52}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->queryNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1279
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1280
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual/range {v52 .. v52}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getFormatName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->queryNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1283
    :cond_c
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1284
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v12, "No Phone number"

    invoke-direct {v7, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1288
    :cond_d
    invoke-virtual/range {v52 .. v52}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getFirstEmail()Ljava/lang/String;

    move-result-object v43

    .line 1289
    .local v43, "email":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1290
    .local v13, "folder":Ljava/lang/String;
    const/16 v22, 0x0

    .line 1291
    .local v22, "read":Z
    const/16 v23, 0x1

    .line 1292
    .local v23, "deliveryReport":Z
    const/16 v19, 0x0

    .line 1297
    .restart local v19    # "msgBody":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    sget-object v12, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v7, v12}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    move-object/from16 v7, p1

    check-cast v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;

    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->getTextOnly()Z

    move-result v7

    const/4 v12, 0x1

    if-ne v7, v12, :cond_e

    move-object/from16 v7, p1

    .line 1299
    check-cast v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;

    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->getMessageAsText()Ljava/lang/String;

    move-result-object v19

    .line 1300
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v54

    .line 1301
    .local v54, "smsMng":Landroid/telephony/SmsManager;
    move-object/from16 v0, v54

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v51

    .line 1302
    .local v51, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v55

    .line 1303
    .local v55, "smsParts":I
    const/16 v7, 0xa

    move/from16 v0, v55

    if-gt v0, v7, :cond_f

    .line 1304
    const-string v7, "[MAP]BluetoothMapContentObserver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "pushMessage - converting MMS to SMS, sms parts="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v55

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1313
    .end local v51    # "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v54    # "smsMng":Landroid/telephony/SmsManager;
    .end local v55    # "smsParts":I
    :cond_e
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    sget-object v12, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v7, v12}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    move-object/from16 v15, p1

    .line 1315
    check-cast v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;

    move-object/from16 v12, p0

    move-wide/from16 v16, p5

    invoke-virtual/range {v12 .. v17}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendMmsMessage(Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMms;J)J

    move-result-wide v8

    goto/16 :goto_c

    .line 1307
    .restart local v51    # "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v54    # "smsMng":Landroid/telephony/SmsManager;
    .restart local v55    # "smsParts":I
    :cond_f
    const-string v7, "[MAP]BluetoothMapContentObserver"

    const-string v12, "pushMessage - MMS text only but to big to convert to SMS"

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const/16 v19, 0x0

    goto :goto_d

    .line 1316
    .end local v51    # "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v54    # "smsMng":Landroid/telephony/SmsManager;
    .end local v55    # "smsParts":I
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    sget-object v12, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v7, v12}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    sget-object v12, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v7, v12}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1319
    :cond_11
    if-nez v19, :cond_12

    move-object/from16 v7, p1

    .line 1320
    check-cast v7, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;

    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->getSmsBody()Ljava/lang/String;

    move-result-object v19

    .line 1324
    :cond_12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "/"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 1326
    .local v17, "contentUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    monitor-enter v12

    .line 1327
    move-wide/from16 v0, p5

    long-to-int v15, v0

    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    const-string v20, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v18, v14

    invoke-static/range {v15 .. v23}, Landroid/provider/Telephony$Sms;->addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;

    move-result-object v25

    .line 1330
    .local v25, "uri":Landroid/net/Uri;
    const-string v7, "[MAP]BluetoothMapContentObserver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Sms.addMessageToUri() returned: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v7, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    if-nez v25, :cond_13

    .line 1332
    const-string v7, "[MAP]BluetoothMapContentObserver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pushMessage - failure on add to uri "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v7, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    const-wide/16 v20, -0x1

    monitor-exit v12

    goto/16 :goto_1

    .line 1364
    .end local v25    # "uri":Landroid/net/Uri;
    :catchall_3
    move-exception v7

    monitor-exit v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v7

    .line 1335
    .restart local v25    # "uri":Landroid/net/Uri;
    :cond_13
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v24, v0

    sget-object v26, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v24 .. v29}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-result-object v40

    .line 1339
    .local v40, "c":Landroid/database/Cursor;
    if-eqz v40, :cond_15

    :try_start_10
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1340
    const-string v7, "_id"

    move-object/from16 v0, v40

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v40

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 1341
    .local v28, "id":J
    const-string v7, "type"

    move-object/from16 v0, v40

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v40

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 1342
    .local v30, "type":I
    const-string v7, "thread_id"

    move-object/from16 v0, v40

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v40

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 1343
    .local v31, "threadId":I
    new-instance v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object/from16 v26, v6

    move-object/from16 v27, p0

    invoke-direct/range {v26 .. v31}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JII)V

    .line 1344
    .restart local v6    # "newMsg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v7, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1349
    :try_start_11
    invoke-static/range {v40 .. v40}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    .line 1352
    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1355
    const-string v7, "outbox"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1356
    new-instance v32, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    move-object/from16 v33, p0

    move-wide/from16 v34, v8

    move-object/from16 v38, v14

    move-object/from16 v39, v25

    invoke-direct/range {v32 .. v39}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIILjava/lang/String;Landroid/net/Uri;)V

    .line 1358
    .local v32, "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, v32

    invoke-interface {v7, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v19

    move-wide/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendMessage(Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;Ljava/lang/String;J)V

    .line 1360
    const-string v7, "[MAP]BluetoothMapContentObserver"

    const-string v15, "sendMessage returned..."

    invoke-static {v7, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    .end local v32    # "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    :cond_14
    monitor-exit v12

    goto/16 :goto_c

    .line 1346
    .end local v6    # "newMsg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v28    # "id":J
    .end local v30    # "type":I
    .end local v31    # "threadId":I
    :cond_15
    const-wide/16 v20, -0x1

    .line 1349
    invoke-static/range {v40 .. v40}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    monitor-exit v12

    goto/16 :goto_1

    :catchall_4
    move-exception v7

    invoke-static/range {v40 .. v40}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->close(Ljava/io/Closeable;)V

    throw v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1366
    .end local v17    # "contentUri":Landroid/net/Uri;
    .end local v25    # "uri":Landroid/net/Uri;
    .end local v40    # "c":Landroid/database/Cursor;
    :cond_16
    const-string v7, "[MAP]BluetoothMapContentObserver"

    const-string v12, "pushMessage - failure on type "

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    const-wide/16 v20, -0x1

    goto/16 :goto_1

    .line 1249
    .end local v13    # "folder":Ljava/lang/String;
    .end local v14    # "phone":Ljava/lang/String;
    .end local v22    # "read":Z
    .end local v23    # "deliveryReport":Z
    .end local v43    # "email":Ljava/lang/String;
    .end local v46    # "i$":Ljava/util/Iterator;
    .end local v52    # "recipient":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    .end local p1    # "msg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .restart local v44    # "fdOut":Landroid/os/ParcelFileDescriptor;
    .restart local v45    # "i":I
    .restart local v47    # "length":I
    .restart local v48    # "messages":[Ljava/lang/String;
    .restart local v50    # "os":Ljava/io/FileOutputStream;
    .restart local v56    # "uriInsert":Landroid/net/Uri;
    .restart local v57    # "uriNew":Landroid/net/Uri;
    .restart local v58    # "values":Landroid/content/ContentValues;
    :catchall_5
    move-exception v7

    move-object/from16 v49, v50

    .end local v50    # "os":Ljava/io/FileOutputStream;
    .restart local v49    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_8

    .line 1245
    .end local v49    # "os":Ljava/io/FileOutputStream;
    .restart local v50    # "os":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v42

    move-object/from16 v49, v50

    .end local v50    # "os":Ljava/io/FileOutputStream;
    .restart local v49    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_b

    .line 1242
    .end local v49    # "os":Ljava/io/FileOutputStream;
    .restart local v50    # "os":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v42

    move-object/from16 v49, v50

    .end local v50    # "os":Ljava/io/FileOutputStream;
    .restart local v49    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_7
.end method

.method public registerObserver()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 413
    const-string v1, "[MAP]BluetoothMapContentObserver"

    const-string v2, "registerObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    if-eqz v1, :cond_0

    .line 445
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    if-eqz v1, :cond_1

    .line 421
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 422
    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    .line 424
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    if-eqz v1, :cond_3

    .line 426
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 427
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    if-nez v1, :cond_2

    .line 428
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to acquire provider for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 430
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mBase_uri_no_account:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 434
    .local v0, "uri":Landroid/net/Uri;
    const-string v1, "[MAP]BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering observer for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 440
    const-string v1, "[MAP]BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering observer for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 442
    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    .line 444
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->initMsgList()V

    goto/16 :goto_0
.end method

.method public sendMessage(Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;Ljava/lang/String;J)V
    .locals 17
    .param p1, "msgInfo"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    .param p2, "msgBody"    # Ljava/lang/String;
    .param p3, "subId"    # J

    .prologue
    .line 1678
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->getSubInfoNumber()I

    move-result v3

    if-gtz v3, :cond_0

    .line 1679
    const-string v3, "[MAP]BluetoothMapContentObserver"

    const-string v4, "sendMessage empty subid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    :goto_0
    return-void

    .line 1683
    :cond_0
    move-wide/from16 v0, p3

    long-to-int v3, v0

    invoke-static {v3}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v2

    .line 1685
    .local v2, "smsMng":Landroid/telephony/SmsManager;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1686
    .local v5, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    .line 1688
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->timestamp:J

    .line 1689
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsDelivered:I

    .line 1690
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    .line 1692
    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1693
    .local v7, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1702
    .local v6, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    if-ge v8, v3, :cond_1

    .line 1705
    new-instance v9, Landroid/content/Intent;

    const-string v3, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_DELIVERY"

    const/4 v4, 0x0

    invoke-direct {v9, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1710
    .local v9, "intentDelivery":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->timestamp:J

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1711
    const-string v3, "HANDLE"

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-virtual {v9, v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1712
    const-string v3, "timestamp"

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->timestamp:J

    invoke-virtual {v9, v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1713
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v3, v4, v9, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 1716
    .local v11, "pendingIntentDelivery":Landroid/app/PendingIntent;
    new-instance v10, Landroid/content/Intent;

    const-string v3, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    const/4 v4, 0x0

    invoke-direct {v10, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1721
    .local v10, "intentSent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->timestamp:J

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1722
    const-string v3, "HANDLE"

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-virtual {v10, v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1723
    const-string v3, "uri"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1724
    const-string v3, "retry"

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->retry:I

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1725
    const-string v3, "transparent"

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->transparent:I

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1727
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v3, v4, v10, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 1731
    .local v12, "pendingIntentSent":Landroid/app/PendingIntent;
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1732
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1702
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1735
    .end local v9    # "intentDelivery":Landroid/content/Intent;
    .end local v10    # "intentSent":Landroid/content/Intent;
    .end local v11    # "pendingIntentDelivery":Landroid/app/PendingIntent;
    .end local v12    # "pendingIntentSent":Landroid/app/PendingIntent;
    :cond_1
    const-string v3, "[MAP]BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendMessage to "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->phone:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->phone:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public sendMmsMessage(Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMms;J)J
    .locals 10
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "to_address"    # Ljava/lang/String;
    .param p3, "msg"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMms;
    .param p4, "subId"    # J

    .prologue
    .line 1389
    if-eqz p1, :cond_2

    const-string v0, "outbox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "draft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1391
    :cond_0
    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->pushMmsToFolder(ILjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMms;J)J

    move-result-wide v6

    .line 1393
    .local v6, "handle":J
    const-wide/16 v0, -0x1

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    const-string v0, "outbox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1394
    invoke-direct {p0, v6, v7, p4, p5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->moveDraftToOutbox(JJ)V

    .line 1395
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.MMS_SEND_OUTBOX_MSG"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1396
    .local v8, "sendIntent":Landroid/content/Intent;
    const-string v0, "[MAP]BluetoothMapContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcasting intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1399
    .end local v8    # "sendIntent":Landroid/content/Intent;
    :cond_1
    return-wide v6

    .line 1402
    .end local v6    # "handle":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot push message to other folders than outbox/draft"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFolderStructure(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 0
    .param p1, "folderStructure"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 207
    return-void
.end method

.method public setMessageStatusDeleted(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "handle"    # J
    .param p3, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .param p4, "mCurrentFolder"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .param p5, "uriStr"    # Ljava/lang/String;
    .param p6, "statusValue"    # I

    .prologue
    .line 1087
    const/4 v0, 0x0

    .line 1088
    .local v0, "res":Z
    const-string v1, "[MAP]BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setMessageStatusDeleted]: msgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_1

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move v6, p6

    .line 1092
    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setEmailMessageStatusDelete(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;JI)Z

    move-result v0

    .line 1109
    :cond_0
    :goto_0
    return v0

    .line 1094
    :cond_1
    const/4 v1, 0x1

    if-ne p6, v1, :cond_4

    .line 1095
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p3, v1, :cond_2

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_3

    .line 1096
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deleteMessageSms(J)Z

    move-result v0

    goto :goto_0

    .line 1097
    :cond_3
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_0

    .line 1098
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deleteMessageMms(J)Z

    move-result v0

    goto :goto_0

    .line 1100
    :cond_4
    if-nez p6, :cond_0

    .line 1101
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p3, v1, :cond_5

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_6

    .line 1102
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unDeleteMessageSms(J)Z

    move-result v0

    goto :goto_0

    .line 1103
    :cond_6
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_0

    .line 1104
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unDeleteMessageMms(J)Z

    move-result v0

    goto :goto_0
.end method

.method public setMessageStatusRead(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "handle"    # J
    .param p3, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .param p4, "uriStr"    # Ljava/lang/String;
    .param p5, "statusValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1121
    const/4 v1, 0x0

    .line 1123
    .local v1, "count":I
    const-string v5, "[MAP]BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setMessageStatusRead]: handle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p3, v5, :cond_0

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v5, :cond_3

    .line 1130
    :cond_0
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 1132
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1133
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v5, "read"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1134
    const-string v5, "seen"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1136
    .local v4, "where":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1137
    .local v3, "values":Ljava/lang/String;
    const-string v5, "[MAP]BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " -> SMS Uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Where "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " values "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v2, v0, v4, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1139
    const-string v5, "[MAP]BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rows updated!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "values":Ljava/lang/String;
    .end local v4    # "where":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v5, :cond_2

    .line 1150
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    .line 1151
    .restart local v2    # "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1152
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    const-string v5, "flag_read"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1153
    const-string v5, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1154
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v5, v2, v0, v8, v8}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1157
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    if-lez v1, :cond_4

    const/4 v5, 0x1

    :goto_1
    return v5

    .line 1141
    :cond_3
    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v5, :cond_1

    .line 1142
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1143
    .restart local v2    # "uri":Landroid/net/Uri;
    const-string v5, "[MAP]BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " -> MMS Uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1145
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    const-string v5, "read"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1146
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v2, v0, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1147
    const-string v5, "[MAP]BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rows updated!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1157
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public setNotificationRegistration(I)I
    .locals 5
    .param p1, "notificationStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 388
    const-string v2, "[MAP]BluetoothMapContentObserver"

    const-string v3, "setNotificationRegistration() enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->getMessageHandler()Landroid/os/Handler;

    move-result-object v0

    .line 390
    .local v0, "mns":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 392
    .local v1, "msg":Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 393
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 394
    iput p1, v1, Landroid/os/Message;->arg2:I

    .line 395
    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 398
    const-string v2, "[MAP]BluetoothMapContentObserver"

    const-string v3, "setNotificationRegistration() MSG_MNS_NOTIFICATION_REGISTRATION send to MNS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    if-ne p1, v4, :cond_1

    .line 405
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->registerObserver()V

    .line 409
    :goto_0
    const/16 v2, 0xa0

    .end local v1    # "msg":Landroid/os/Message;
    :goto_1
    return v2

    .line 401
    :cond_0
    const-string v2, "[MAP]BluetoothMapContentObserver"

    const-string v3, "setNotificationRegistration() Unable to send registration request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/16 v2, 0xd3

    goto :goto_1

    .line 407
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unregisterObserver()V

    goto :goto_0
.end method

.method public unregisterObserver()V
    .locals 2

    .prologue
    .line 448
    const-string v0, "[MAP]BluetoothMapContentObserver"

    const-string v1, "[unregisterObserver]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    .line 451
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 455
    :cond_0
    return-void
.end method
