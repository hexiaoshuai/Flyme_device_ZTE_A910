.class Lcom/zte/fingerprint/main/FingerManagerActivity$1;
.super Ljava/lang/Object;
.source "FingerManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/main/FingerManagerActivity;->initComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/main/FingerManagerActivity;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/FingerManagerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerManagerActivity$1;->this$0:Lcom/zte/fingerprint/main/FingerManagerActivity;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerManagerActivity$1;->this$0:Lcom/zte/fingerprint/main/FingerManagerActivity;

    # getter for: Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerInfo:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/zte/fingerprint/main/FingerManagerActivity;->access$0(Lcom/zte/fingerprint/main/FingerManagerActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method
