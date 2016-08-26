.class public Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedMaskList;
.super Ljava/lang/Object;
.source "ZTEFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/ZTEFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GuidedMaskList"
.end annotation


# instance fields
.field public guidedMaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;",
            ">;"
        }
    .end annotation
.end field

.field public guidedNumberOfMask:I

.field final synthetic this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;


# direct methods
.method public constructor <init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;Ljava/util/ArrayList;I)V
    .locals 0
    .param p3, "guidedNumberOfMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p2, "guidedMaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;>;"
    iput-object p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedMaskList;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedMaskList;->guidedMaskList:Ljava/util/ArrayList;

    .line 180
    iput p3, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedMaskList;->guidedNumberOfMask:I

    .line 181
    return-void
.end method
