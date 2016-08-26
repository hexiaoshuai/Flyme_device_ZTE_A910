.class Lcom/zte/fingerprint/main/SelectDoubleClickActivity$2;
.super Ljava/lang/Object;
.source "SelectDoubleClickActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/SelectDoubleClickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$2;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$2;->update()V

    .line 133
    iget-object v0, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$2;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$0(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    return-void
.end method

.method update()V
    .locals 3

    .prologue
    .line 137
    iget-object v2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$2;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$1(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$2;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # invokes: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->isDoubleClickChecked()Z
    invoke-static {v2}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$2(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$2;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$1(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 151
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 141
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$2;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$1(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 142
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v0    # "i":I
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$2;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$1(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/zte/fingerprint/main/SelectDoubleClickActivity$2;->this$0:Lcom/zte/fingerprint/main/SelectDoubleClickActivity;

    # getter for: Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/zte/fingerprint/main/SelectDoubleClickActivity;->access$1(Lcom/zte/fingerprint/main/SelectDoubleClickActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 147
    .restart local v1    # "view":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
