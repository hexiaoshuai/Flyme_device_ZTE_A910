.class public Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;
.super Landroid/app/DialogFragment;
.source "SearchChannelsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog$CancelSearchListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog$CancelSearchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;->mListener:Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog$CancelSearchListener;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;)Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog$CancelSearchListener;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;->mListener:Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog$CancelSearchListener;

    return-object v0
.end method

.method public static newInstance()Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;

    invoke-direct {v0}, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 80
    :try_start_0
    check-cast p1, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog$CancelSearchListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;->mListener:Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog$CancelSearchListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;->mListener:Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog$CancelSearchListener;

    invoke-interface {v0}, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog$CancelSearchListener;->cancelSearch()V

    .line 109
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09005b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lcom/zte/mifavor/widget/ProgressDialog;

    invoke-virtual {p0}, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zte/mifavor/widget/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 90
    .local v1, "searchDialog":Lcom/zte/mifavor/widget/ProgressDialog;
    invoke-virtual {v1, v4}, Lcom/zte/mifavor/widget/ProgressDialog;->setProgressStyle(I)V

    .line 91
    invoke-virtual {v1, v0}, Lcom/zte/mifavor/widget/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 92
    const v2, 0x7f09005a

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/ProgressDialog;->setTitle(I)V

    .line 93
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/ProgressDialog;->setCancelable(Z)V

    .line 95
    invoke-virtual {v1, v4}, Lcom/zte/mifavor/widget/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 96
    const/4 v2, -0x1

    const v3, 0x7f090059

    invoke-virtual {p0, v3}, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    new-instance v4, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog$1;

    invoke-direct {v4, p0}, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog$1;-><init>(Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;)V

    .line 96
    invoke-virtual {v1, v2, v3, v4}, Lcom/zte/mifavor/widget/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 103
    return-object v1
.end method