.class Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$1;
.super Ljava/lang/Object;
.source "SleepTimeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$1;->this$0:Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 101
    iget-object v4, p0, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$1;->this$0:Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;

    invoke-virtual {v4}, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 102
    const v5, 0x7f0e0001

    .line 101
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "items":[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v4, v0

    if-gt p2, v4, :cond_0

    .line 106
    const-string v4, "\\d+"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 107
    .local v3, "pattern":Ljava/util/regex/Pattern;
    aget-object v4, v0, p2

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 108
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 110
    .local v2, "minutes":I
    iget-object v4, p0, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$1;->this$0:Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;

    # getter for: Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;->mListener:Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$SleepTimeListener;
    invoke-static {v4}, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;->access$0(Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;)Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$SleepTimeListener;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$SleepTimeListener;->sleepTimeBegin(I)V

    .line 113
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "minutes":I
    .end local v3    # "pattern":Ljava/util/regex/Pattern;
    :cond_0
    return-void
.end method
