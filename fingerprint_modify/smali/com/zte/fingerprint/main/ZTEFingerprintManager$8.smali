.class Lcom/zte/fingerprint/main/ZTEFingerprintManager$8;
.super Ljava/lang/Object;
.source "ZTEFingerprintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/main/ZTEFingerprintManager;->cancelEnrollment()V
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
    iput-object p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$8;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 888
    :try_start_0
    const-string v1, "FingerPrint"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in post cancelEnrollment threadname"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$8;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mService:Lcom/android/fingerprint/FingerprintDelegate;
    invoke-static {v1}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$6(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/android/fingerprint/FingerprintDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fingerprint/FingerprintDelegate;->cancelEnrol()V

    .line 890
    iget-object v1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$8;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$9(Lcom/zte/fingerprint/main/ZTEFingerprintManager;I)V

    .line 891
    iget-object v1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$8;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$10(Lcom/zte/fingerprint/main/ZTEFingerprintManager;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :goto_0
    return-void

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerPrint"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception E="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
