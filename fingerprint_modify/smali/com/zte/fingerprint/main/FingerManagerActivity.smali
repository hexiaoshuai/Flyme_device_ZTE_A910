.class public Lcom/zte/fingerprint/main/FingerManagerActivity;
.super Lcom/zte/fingerprint/main/AbstractActivity;
.source "FingerManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private clearBtn:Landroid/widget/ImageButton;

.field private fingerData:Lcom/zte/fingerprint/datatype/FingerData;

.field private fingerInfo:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field private nameUtils:Lcom/zte/fingerprint/utils/NameUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/zte/fingerprint/main/AbstractActivity;-><init>()V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/zte/fingerprint/main/FingerManagerActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerInfo:Landroid/widget/EditText;

    return-object v0
.end method

.method private checkFingerName()V
    .locals 5

    .prologue
    .line 134
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerInfo:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "newName":Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/fingerprint/utils/StringUtils;->hasText(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerData:Lcom/zte/fingerprint/datatype/FingerData;

    invoke-virtual {v3}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerPrintName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerData:Lcom/zte/fingerprint/datatype/FingerData;

    invoke-virtual {v3, v2}, Lcom/zte/fingerprint/datatype/FingerData;->setFingerPrintName(Ljava/lang/String;)V

    .line 138
    :try_start_0
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->TAG:Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->getManager(Ljava/lang/String;Landroid/content/Context;)Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    move-result-object v1

    .line 139
    .local v1, "mgr":Lcom/zte/fingerprint/main/ZTEFingerprintManager;
    if-eqz v1, :cond_0

    .line 140
    const-string v3, "FingerPrint"

    const-string v4, "setIdName"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerData:Lcom/zte/fingerprint/datatype/FingerData;

    invoke-virtual {v3}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerId()I

    move-result v3

    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerData:Lcom/zte/fingerprint/datatype/FingerData;

    invoke-virtual {v4}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerPrintName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->setIdName(ILjava/lang/String;)V

    .line 142
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->nameUtils:Lcom/zte/fingerprint/utils/NameUtils;

    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerData:Lcom/zte/fingerprint/datatype/FingerData;

    invoke-virtual {v4}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/zte/fingerprint/utils/NameUtils;->setName(ILjava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->releaseManager(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1    # "mgr":Lcom/zte/fingerprint/main/ZTEFingerprintManager;
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initComponent()V
    .locals 3

    .prologue
    .line 61
    const v1, 0x7f06005e

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/FingerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->clearBtn:Landroid/widget/ImageButton;

    .line 63
    const v1, 0x7f06005d

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/FingerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerInfo:Landroid/widget/EditText;

    .line 64
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerInfo:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerData:Lcom/zte/fingerprint/datatype/FingerData;

    invoke-virtual {v2}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerPrintName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerInfo:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 66
    const v1, 0x7f060060

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/FingerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 68
    .local v0, "saveButton":Landroid/widget/Button;
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->clearBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/zte/fingerprint/main/FingerManagerActivity$1;

    invoke-direct {v2, p0}, Lcom/zte/fingerprint/main/FingerManagerActivity$1;-><init>(Lcom/zte/fingerprint/main/FingerManagerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerInfo:Landroid/widget/EditText;

    new-instance v2, Lcom/zte/fingerprint/main/FingerManagerActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/zte/fingerprint/main/FingerManagerActivity$2;-><init>(Lcom/zte/fingerprint/main/FingerManagerActivity;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v1, 0x7f06005f

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/FingerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 105
    return-void
.end method

.method private showDeleteDialog()V
    .locals 5

    .prologue
    const v4, 0x7f09005c

    .line 179
    new-instance v0, Lcom/zte/mifavor/widget/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, "builder":Lcom/zte/mifavor/widget/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setTitle(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 181
    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setMessage(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v1

    .line 182
    const v2, 0x7f09005e

    new-instance v3, Lcom/zte/fingerprint/main/FingerManagerActivity$3;

    invoke-direct {v3, p0}, Lcom/zte/fingerprint/main/FingerManagerActivity$3;-><init>(Lcom/zte/fingerprint/main/FingerManagerActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v1

    .line 187
    new-instance v2, Lcom/zte/fingerprint/main/FingerManagerActivity$4;

    invoke-direct {v2, p0}, Lcom/zte/fingerprint/main/FingerManagerActivity$4;-><init>(Lcom/zte/fingerprint/main/FingerManagerActivity;)V

    invoke-virtual {v1, v4, v2}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 192
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->create()Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/AlertDialog;->show()V

    .line 193
    return-void
.end method


# virtual methods
.method public deleteFinger()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 153
    :try_start_0
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->TAG:Ljava/lang/String;

    invoke-static {v4, p0}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->getManager(Ljava/lang/String;Landroid/content/Context;)Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    move-result-object v3

    .line 154
    .local v3, "mgr":Lcom/zte/fingerprint/main/ZTEFingerprintManager;
    if-eqz v3, :cond_2

    .line 155
    const-string v4, "FingerPrint"

    const-string v5, "deleteFingerData"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerData:Lcom/zte/fingerprint/datatype/FingerData;

    invoke-virtual {v4}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->deleteFingerData(I)V

    .line 157
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->nameUtils:Lcom/zte/fingerprint/utils/NameUtils;

    iget-object v5, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerData:Lcom/zte/fingerprint/datatype/FingerData;

    invoke-virtual {v5}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zte/fingerprint/utils/NameUtils;->remove(I)V

    .line 158
    invoke-virtual {v3}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->getIds()[I

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->getIds()[I

    move-result-object v4

    array-length v2, v4

    .line 159
    .local v2, "maxCount":I
    :cond_0
    if-nez v2, :cond_1

    .line 160
    invoke-static {p0}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "lock_for_screen"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    invoke-static {p0}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "lock_for_application"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    invoke-static {p0}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "lock_for_secret_zone"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 165
    :cond_1
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->releaseManager(Ljava/lang/String;)V

    .line 167
    iget-object v4, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerData:Lcom/zte/fingerprint/datatype/FingerData;

    invoke-virtual {v4}, Lcom/zte/fingerprint/datatype/FingerData;->getFingerId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/zte/fingerprint/utils/CommonUtils;->removeBoundAppData(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.zte.fingerprint.FINGER_COUNT_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/main/FingerManagerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 172
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "maxCount":I
    :cond_2
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerManagerActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v3    # "mgr":Lcom/zte/fingerprint/main/ZTEFingerprintManager;
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 111
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerManagerActivity;->showDeleteDialog()V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerInfo:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/fingerprint/utils/StringUtils;->hasText(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerManagerActivity;->checkFingerName()V

    .line 116
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerManagerActivity;->finish()V

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x7f06005f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/zte/fingerprint/main/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v0, Lcom/zte/fingerprint/utils/NameUtils;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/utils/NameUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->nameUtils:Lcom/zte/fingerprint/utils/NameUtils;

    .line 54
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/main/FingerManagerActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "finger_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zte/fingerprint/datatype/FingerData;

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->fingerData:Lcom/zte/fingerprint/datatype/FingerData;

    .line 56
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerManagerActivity;->initComponent()V

    .line 57
    iput-object p0, p0, Lcom/zte/fingerprint/main/FingerManagerActivity;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/zte/fingerprint/main/AbstractActivity;->onDestroy()V

    .line 48
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 126
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/zte/fingerprint/main/FingerManagerActivity;->finish()V

    .line 128
    const/4 v1, 0x1

    .line 130
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/zte/fingerprint/main/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
