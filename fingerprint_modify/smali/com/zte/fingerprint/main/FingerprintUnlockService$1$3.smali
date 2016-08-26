.class Lcom/zte/fingerprint/main/FingerprintUnlockService$1$3;
.super Ljava/lang/Object;
.source "FingerprintUnlockService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->registerFingerActionCallback(Lcom/android/fingerprints/keyguard/IFingerActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/fingerprint/main/FingerprintUnlockService$1;

.field private final synthetic val$index:I

.field private final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/FingerprintUnlockService$1;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$3;->this$1:Lcom/zte/fingerprint/main/FingerprintUnlockService$1;

    iput p2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$3;->val$uid:I

    iput p3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$3;->val$index:I

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$3;->this$1:Lcom/zte/fingerprint/main/FingerprintUnlockService$1;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->access$0(Lcom/zte/fingerprint/main/FingerprintUnlockService$1;)Lcom/zte/fingerprint/main/FingerprintUnlockService;

    move-result-object v0

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$3(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "binderDied pkg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$3;->this$1:Lcom/zte/fingerprint/main/FingerprintUnlockService$1;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;
    invoke-static {v2}, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->access$0(Lcom/zte/fingerprint/main/FingerprintUnlockService$1;)Lcom/zte/fingerprint/main/FingerprintUnlockService;

    move-result-object v2

    iget v3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$3;->val$uid:I

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->getPackageName(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$1(Lcom/zte/fingerprint/main/FingerprintUnlockService;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$3;->this$1:Lcom/zte/fingerprint/main/FingerprintUnlockService$1;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->access$0(Lcom/zte/fingerprint/main/FingerprintUnlockService$1;)Lcom/zte/fingerprint/main/FingerprintUnlockService;

    move-result-object v0

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$4(Lcom/zte/fingerprint/main/FingerprintUnlockService;)[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v1

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$3;->this$1:Lcom/zte/fingerprint/main/FingerprintUnlockService$1;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->access$0(Lcom/zte/fingerprint/main/FingerprintUnlockService$1;)Lcom/zte/fingerprint/main/FingerprintUnlockService;

    move-result-object v0

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$4(Lcom/zte/fingerprint/main/FingerprintUnlockService;)[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v0

    iget v2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$3;->val$index:I

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 158
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$3;->this$1:Lcom/zte/fingerprint/main/FingerprintUnlockService$1;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->access$0(Lcom/zte/fingerprint/main/FingerprintUnlockService$1;)Lcom/zte/fingerprint/main/FingerprintUnlockService;

    move-result-object v0

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$4(Lcom/zte/fingerprint/main/FingerprintUnlockService;)[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v0

    iget v2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$3;->val$index:I

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .line 159
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$3;->this$1:Lcom/zte/fingerprint/main/FingerprintUnlockService$1;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->access$0(Lcom/zte/fingerprint/main/FingerprintUnlockService$1;)Lcom/zte/fingerprint/main/FingerprintUnlockService;

    move-result-object v0

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->privilegeCallback:[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$4(Lcom/zte/fingerprint/main/FingerprintUnlockService;)[Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    move-result-object v0

    iget v2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$3;->val$index:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 156
    monitor-exit v1

    .line 161
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
