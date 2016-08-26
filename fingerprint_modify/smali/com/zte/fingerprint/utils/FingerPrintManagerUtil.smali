.class public Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;
.super Ljava/lang/Object;
.source "FingerPrintManagerUtil.java"


# static fields
.field private static failCount:I

.field private static mContext:Landroid/content/Context;

.field private static signs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->signs:Ljava/util/HashSet;

    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->failCount:I

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getManager(Ljava/lang/String;Landroid/content/Context;)Lcom/zte/fingerprint/main/ZTEFingerprintManager;
    .locals 4
    .param p0, "sign"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const-class v2, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->getManager(Landroid/content/Context;)Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    move-result-object v0

    .line 23
    .local v0, "mgr":Lcom/zte/fingerprint/main/ZTEFingerprintManager;
    sput-object p1, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->mContext:Landroid/content/Context;

    .line 24
    if-nez v0, :cond_1

    .line 26
    sget v1, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->failCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->failCount:I

    .line 27
    sget v1, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->failCount:I

    const/4 v3, 0x4

    if-lt v1, v3, :cond_0

    .line 29
    const v1, 0x7f09006b

    const/4 v3, 0x1

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :goto_0
    monitor-exit v2

    return-object v0

    .line 32
    :cond_0
    const v1, 0x7f09006a

    const/4 v3, 0x1

    :try_start_1
    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 22
    .end local v0    # "mgr":Lcom/zte/fingerprint/main/ZTEFingerprintManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 35
    .restart local v0    # "mgr":Lcom/zte/fingerprint/main/ZTEFingerprintManager;
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    sput v1, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->failCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized releaseManager(Ljava/lang/String;)V
    .locals 1
    .param p0, "sign"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method
