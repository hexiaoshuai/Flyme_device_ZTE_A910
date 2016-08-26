.class public Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRejectReasons;
.super Ljava/lang/Object;
.source "ZTEFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/ZTEFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GuidedRejectReasons"
.end annotation


# instance fields
.field public guidedLowCoverage:Z

.field public guidedLowQuality:Z

.field final synthetic this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;


# direct methods
.method public constructor <init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;ZZ)V
    .locals 0
    .param p2, "guidedLowCoverage"    # Z
    .param p3, "guidedLowQuality"    # Z

    .prologue
    .line 212
    iput-object p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRejectReasons;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-boolean p2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRejectReasons;->guidedLowCoverage:Z

    .line 214
    iput-boolean p3, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRejectReasons;->guidedLowQuality:Z

    .line 215
    return-void
.end method
