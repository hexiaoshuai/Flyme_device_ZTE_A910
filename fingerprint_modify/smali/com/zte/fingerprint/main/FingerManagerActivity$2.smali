.class Lcom/zte/fingerprint/main/FingerManagerActivity$2;
.super Ljava/lang/Object;
.source "FingerManagerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field private final synthetic val$saveButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/FingerManagerActivity;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerManagerActivity$2;->this$0:Lcom/zte/fingerprint/main/FingerManagerActivity;

    iput-object p2, p0, Lcom/zte/fingerprint/main/FingerManagerActivity$2;->val$saveButton:Landroid/widget/Button;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 100
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 79
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/16 v4, 0x14

    const/4 v1, 0x0

    .line 83
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    if-le v3, v4, :cond_0

    .line 84
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "newString":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    if-gt v3, v4, :cond_2

    .line 88
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerManagerActivity$2;->this$0:Lcom/zte/fingerprint/main/FingerManagerActivity;

    # getter for: Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerInfo:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/zte/fingerprint/main/FingerManagerActivity;->access$0(Lcom/zte/fingerprint/main/FingerManagerActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerManagerActivity$2;->this$0:Lcom/zte/fingerprint/main/FingerManagerActivity;

    # getter for: Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerInfo:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/zte/fingerprint/main/FingerManagerActivity;->access$0(Lcom/zte/fingerprint/main/FingerManagerActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 90
    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 92
    .end local v0    # "editable":Landroid/text/Editable;
    .end local v2    # "newString":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v1, 0x1

    .line 93
    .local v1, "hasChars":Z
    :cond_1
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerManagerActivity$2;->val$saveButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerManagerActivity$2;->val$saveButton:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerManagerActivity$2;->this$0:Lcom/zte/fingerprint/main/FingerManagerActivity;

    invoke-virtual {v3}, Lcom/zte/fingerprint/main/FingerManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070027

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 95
    return-void

    .line 86
    .end local v1    # "hasChars":Z
    .restart local v2    # "newString":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 94
    .end local v2    # "newString":Ljava/lang/String;
    .restart local v1    # "hasChars":Z
    :cond_3
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerManagerActivity$2;->this$0:Lcom/zte/fingerprint/main/FingerManagerActivity;

    invoke-virtual {v3}, Lcom/zte/fingerprint/main/FingerManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070028

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_1
.end method
