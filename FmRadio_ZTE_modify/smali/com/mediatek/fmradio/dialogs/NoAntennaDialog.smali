.class public Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;
.super Landroid/app/DialogFragment;
.source "NoAntennaDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FmRx/NoAntennaDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->mListener:Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;

    .line 63
    iput-object v0, p0, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;)Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->mListener:Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;

    return-object v0
.end method

.method public static newInstance()Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;

    invoke-direct {v0}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 91
    iput-object p1, p0, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->mContext:Landroid/content/Context;

    .line 93
    :try_start_0
    check-cast p1, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->mListener:Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    iget-object v5, p0, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 102
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030043

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 103
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f06009d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 104
    .local v3, "no_atte_info":Landroid/widget/TextView;
    const v5, 0x7f090074

    invoke-virtual {p0, v5}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const/high16 v5, -0x1000000

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    new-instance v0, Lcom/zte/mifavor/widget/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/zte/mifavor/widget/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "builder":Lcom/zte/mifavor/widget/AlertDialog$Builder;
    const v5, 0x7f090055

    invoke-virtual {v0, v5}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setTitle(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v5

    .line 110
    invoke-virtual {v5, v4}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setView(Landroid/view/View;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v5

    .line 111
    const v6, 0x104000a

    .line 112
    new-instance v7, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$1;

    invoke-direct {v7, p0}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$1;-><init>(Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;)V

    .line 111
    invoke-virtual {v5, v6, v7}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->create()Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object v1

    .line 122
    .local v1, "d":Lcom/zte/mifavor/widget/AlertDialog;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/zte/mifavor/widget/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 123
    new-instance v5, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$2;

    invoke-direct {v5, p0}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$2;-><init>(Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;)V

    invoke-virtual {v1, v5}, Lcom/zte/mifavor/widget/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 135
    return-object v1
.end method
