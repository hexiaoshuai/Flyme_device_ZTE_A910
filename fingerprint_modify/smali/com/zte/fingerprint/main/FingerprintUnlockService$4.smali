.class Lcom/zte/fingerprint/main/FingerprintUnlockService$4;
.super Ljava/lang/Object;
.source "FingerprintUnlockService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/main/FingerprintUnlockService;->onIdentified(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

.field private final synthetic val$fingerId:I


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$4;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    iput p2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$4;->val$fingerId:I

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$4;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    iget v1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$4;->val$fingerId:I

    # invokes: Lcom/zte/fingerprint/main/FingerprintUnlockService;->startBoundApp(I)V
    invoke-static {v0, v1}, Lcom/zte/fingerprint/main/FingerprintUnlockService;->access$15(Lcom/zte/fingerprint/main/FingerprintUnlockService;I)V

    .line 462
    return-void
.end method
