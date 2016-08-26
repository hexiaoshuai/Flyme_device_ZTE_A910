.class Lcom/zte/fingerprint/main/ZTEFingerprintManager$6;
.super Ljava/lang/Object;
.source "ZTEFingerprintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/main/ZTEFingerprintManager;->startFingerprint()V
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
    iput-object p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$6;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 854
    const-string v0, "FingerPrint"

    const-string v1, "in post startFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$6;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mService:Lcom/android/fingerprint/FingerprintDelegate;
    invoke-static {v0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$6(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/android/fingerprint/FingerprintDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$6;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mAuthCallback:Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;
    invoke-static {v1}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$8(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/fingerprint/FingerprintDelegate;->startIdentify(Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;[I)I

    .line 856
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$6;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$7(Lcom/zte/fingerprint/main/ZTEFingerprintManager;Z)V

    .line 858
    return-void
.end method
