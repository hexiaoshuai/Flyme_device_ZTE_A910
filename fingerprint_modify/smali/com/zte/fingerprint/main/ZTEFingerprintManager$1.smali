.class Lcom/zte/fingerprint/main/ZTEFingerprintManager$1;
.super Ljava/lang/Object;
.source "ZTEFingerprintManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/ZTEFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$1;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 566
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$0(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)V

    .line 567
    return-void
.end method
