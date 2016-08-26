.class public Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedResult;
.super Ljava/lang/Object;
.source "ZTEFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/ZTEFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GuidedResult"
.end annotation


# instance fields
.field public guidedAcceptance:I

.field public guidedImmobile:Z

.field public guidedRejectReasons:Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRejectReasons;

.field public guidedStitched:Z

.field final synthetic this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;


# direct methods
.method public constructor <init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;IZZLcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRejectReasons;)V
    .locals 0
    .param p2, "guidedAcceptance"    # I
    .param p3, "guidedStitched"    # Z
    .param p4, "guidedImmobile"    # Z
    .param p5, "guidedRejectReasons"    # Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRejectReasons;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedResult;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput p2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedResult;->guidedAcceptance:I

    .line 198
    iput-boolean p3, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedResult;->guidedStitched:Z

    .line 199
    iput-boolean p4, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedResult;->guidedImmobile:Z

    .line 200
    iput-object p5, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedResult;->guidedRejectReasons:Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRejectReasons;

    .line 201
    return-void
.end method
