.class Lcom/zte/fingerprint/main/FingerManagerActivity$4;
.super Ljava/lang/Object;
.source "FingerManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/main/FingerManagerActivity;->showDeleteDialog()V
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
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerManagerActivity$4;->this$0:Lcom/zte/fingerprint/main/FingerManagerActivity;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerManagerActivity$4;->this$0:Lcom/zte/fingerprint/main/FingerManagerActivity;

    invoke-virtual {v0}, Lcom/zte/fingerprint/main/FingerManagerActivity;->deleteFinger()V

    .line 190
    return-void
.end method
