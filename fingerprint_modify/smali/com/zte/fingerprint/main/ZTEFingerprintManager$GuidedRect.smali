.class public Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;
.super Ljava/lang/Object;
.source "ZTEFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/ZTEFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GuidedRect"
.end annotation


# instance fields
.field public guidedBottomLeft:Landroid/graphics/Point;

.field public guidedBottomRight:Landroid/graphics/Point;

.field public guidedTopLeft:Landroid/graphics/Point;

.field public guidedTopRight:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;


# direct methods
.method public constructor <init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p2, "guidedBottomLeft"    # Landroid/graphics/Point;
    .param p3, "guidedBottomRight"    # Landroid/graphics/Point;
    .param p4, "guidedTopLeft"    # Landroid/graphics/Point;
    .param p5, "guidedTopRight"    # Landroid/graphics/Point;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;->this$0:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p2, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;->guidedBottomLeft:Landroid/graphics/Point;

    .line 234
    iput-object p3, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;->guidedBottomRight:Landroid/graphics/Point;

    .line 235
    iput-object p4, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;->guidedTopLeft:Landroid/graphics/Point;

    .line 236
    iput-object p5, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;->guidedTopRight:Landroid/graphics/Point;

    .line 237
    return-void
.end method
