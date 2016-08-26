.class public Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedData;
.super Ljava/lang/Object;
.source "ZTEFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/ZTEFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GuidedData"
.end annotation


# instance fields
.field public guidedLastTouch:Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;

.field public guidedMaskList:Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedMaskList;

.field public guidedNextDirection:I

.field public guidedNextTouch:Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;

.field public guidedProgress:I

.field public guidedResult:Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedResult;

.field final synthetic this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;


# direct methods
.method public constructor <init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;IILcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedResult;Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedMaskList;)V
    .locals 0
    .param p2, "guidedProgress"    # I
    .param p3, "guidedNextDirection"    # I
    .param p4, "guidedResult"    # Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedResult;
    .param p5, "guidedLastTouch"    # Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;
    .param p6, "guidedNextTouch"    # Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;
    .param p7, "guidedMaskList"    # Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedMaskList;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedData;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput p2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedData;->guidedProgress:I

    .line 162
    iput p3, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedData;->guidedNextDirection:I

    .line 163
    iput-object p4, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedData;->guidedResult:Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedResult;

    .line 164
    iput-object p5, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedData;->guidedLastTouch:Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;

    .line 165
    iput-object p6, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedData;->guidedNextTouch:Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;

    .line 166
    iput-object p7, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedData;->guidedMaskList:Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedMaskList;

    .line 167
    return-void
.end method
