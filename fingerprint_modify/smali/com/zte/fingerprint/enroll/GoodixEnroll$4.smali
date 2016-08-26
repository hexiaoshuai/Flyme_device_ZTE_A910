.class Lcom/zte/fingerprint/enroll/GoodixEnroll$4;
.super Ljava/lang/Object;
.source "GoodixEnroll.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/enroll/GoodixEnroll;->showReenrolFingerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/enroll/GoodixEnroll;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/enroll/GoodixEnroll;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll$4;->this$0:Lcom/zte/fingerprint/enroll/GoodixEnroll;

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 474
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll$4;->this$0:Lcom/zte/fingerprint/enroll/GoodixEnroll;

    invoke-virtual {v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->finish()V

    .line 475
    return-void
.end method
