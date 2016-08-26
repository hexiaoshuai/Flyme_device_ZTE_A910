.class Lcom/zte/fingerprint/main/FingerprintUnlockService$1$2;
.super Ljava/lang/Object;
.source "FingerprintUnlockService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->registerCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/fingerprint/main/FingerprintUnlockService$1;

.field private final synthetic val$pair:Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/FingerprintUnlockService$1;Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$2;->this$1:Lcom/zte/fingerprint/main/FingerprintUnlockService$1;

    iput-object p2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$2;->val$pair:Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$2;->val$pair:Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    iput-object v1, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 108
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$2;->val$pair:Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    iput-object v1, v0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .line 109
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$2;->this$1:Lcom/zte/fingerprint/main/FingerprintUnlockService$1;

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintUnlockService$1;->access$0(Lcom/zte/fingerprint/main/FingerprintUnlockService$1;)Lcom/zte/fingerprint/main/FingerprintUnlockService;

    move-result-object v0

    # getter for: Lcom/zte/fingerprint/main/FingerprintUnlockService;->callbackList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$5(Lcom/zte/fingerprint/main/FingerprintUnlockService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$1$2;->val$pair:Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method
