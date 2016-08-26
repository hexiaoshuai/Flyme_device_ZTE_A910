.class Lcom/zte/fingerprint/main/ZTEFingerprintManager$7;
.super Ljava/lang/Object;
.source "ZTEFingerprintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/main/ZTEFingerprintManager;->startEnrollment([B)V
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
    iput-object p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$7;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 870
    :try_start_0
    iget-object v1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$7;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$9(Lcom/zte/fingerprint/main/ZTEFingerprintManager;I)V

    .line 871
    iget-object v1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$7;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$10(Lcom/zte/fingerprint/main/ZTEFingerprintManager;Z)V

    .line 872
    iget-object v1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$7;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mService:Lcom/android/fingerprint/FingerprintDelegate;
    invoke-static {v1}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$6(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/android/fingerprint/FingerprintDelegate;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$7;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    # getter for: Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrollmentCallback:Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;
    invoke-static {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->access$11(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/fingerprint/FingerprintDelegate;->startEnrol(Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    :goto_0
    return-void

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerPrint"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startEnrollment e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
