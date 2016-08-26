.class Lcom/zte/fingerprint/enroll/GoodixEnroll$3;
.super Ljava/util/TimerTask;
.source "GoodixEnroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/enroll/GoodixEnroll;->showMyToast(Landroid/widget/Toast;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/enroll/GoodixEnroll;

.field private final synthetic val$timer:Ljava/util/Timer;

.field private final synthetic val$toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/enroll/GoodixEnroll;Landroid/widget/Toast;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll$3;->this$0:Lcom/zte/fingerprint/enroll/GoodixEnroll;

    iput-object p2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll$3;->val$toast:Landroid/widget/Toast;

    iput-object p3, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll$3;->val$timer:Ljava/util/Timer;

    .line 381
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll$3;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 385
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll$3;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 386
    return-void
.end method
