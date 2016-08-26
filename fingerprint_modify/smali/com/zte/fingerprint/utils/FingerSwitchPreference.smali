.class public Lcom/zte/fingerprint/utils/FingerSwitchPreference;
.super Lcom/zte/mifavor/preference/Preference;
.source "FingerSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/fingerprint/utils/FingerSwitchPreference$SwitchEnable;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "SwitchPreference"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mConvertView:Landroid/view/View;

.field private mCutoffView:Landroid/widget/ImageView;

.field private mHideCutoff:Z

.field private mHideSwitch:Z

.field private mIsSwitchChecked:I

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mSummaryStr:Ljava/lang/String;

.field private mSummaryView:Landroid/widget/TextView;

.field private mSwitchEnable:Lcom/zte/fingerprint/utils/FingerSwitchPreference$SwitchEnable;

.field private mSwitchId:I

.field private mSwitchView:Lcom/zte/mifavor/widget/SwitchZTE;

.field private mTitleStr:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/fingerprint/utils/FingerSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/mifavor/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput-object v1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mTitleStr:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSummaryStr:Ljava/lang/String;

    .line 32
    iput-boolean v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mHideCutoff:Z

    .line 33
    iput-boolean v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mHideSwitch:Z

    .line 34
    iput v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchId:I

    .line 35
    iput-object v1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mIsSwitchChecked:I

    .line 37
    iput-object v1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mConvertView:Landroid/view/View;

    .line 38
    iput-object v1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 50
    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->setLayoutResource(I)V

    .line 51
    iput-object p1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public getSwitchView()Lcom/zte/mifavor/widget/SwitchZTE;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchView:Lcom/zte/mifavor/widget/SwitchZTE;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mConvertView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0, p2}, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mConvertView:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mConvertView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->onBindView(Landroid/view/View;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mConvertView:Landroid/view/View;

    return-object v0
.end method

.method public hideCutoff(Z)V
    .locals 0
    .param p1, "bHide"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mHideCutoff:Z

    .line 126
    invoke-virtual {p0}, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->notifyChanged()V

    .line 127
    return-void
.end method

.method public hideCutoffAndSwitch(Z)V
    .locals 3
    .param p1, "bHide"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 143
    iput-boolean p1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mHideCutoff:Z

    .line 144
    iput-boolean p1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mHideSwitch:Z

    .line 146
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchView:Lcom/zte/mifavor/widget/SwitchZTE;

    if-eqz v0, :cond_0

    .line 147
    iget-boolean v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mHideSwitch:Z

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchView:Lcom/zte/mifavor/widget/SwitchZTE;

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/widget/SwitchZTE;->setVisibility(I)V

    .line 157
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mCutoffView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 159
    iget-boolean v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mHideCutoff:Z

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mCutoffView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->notifyChanged()V

    .line 171
    return-void

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchView:Lcom/zte/mifavor/widget/SwitchZTE;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/SwitchZTE;->setVisibility(I)V

    goto :goto_0

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mCutoffView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 210
    const-string v0, "SwitchPreference"

    const-string v1, "onBindView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mTitleView:Landroid/widget/TextView;

    .line 212
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mTitleStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mTitleStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :cond_0
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSummaryView:Landroid/widget/TextView;

    .line 218
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSummaryStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSummaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSummaryStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    :cond_1
    const v0, 0x7f060037

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/SwitchZTE;

    iput-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchView:Lcom/zte/mifavor/widget/SwitchZTE;

    .line 225
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchEnable:Lcom/zte/fingerprint/utils/FingerSwitchPreference$SwitchEnable;

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchEnable:Lcom/zte/fingerprint/utils/FingerSwitchPreference$SwitchEnable;

    iget-object v1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchView:Lcom/zte/mifavor/widget/SwitchZTE;

    invoke-interface {v0, v1}, Lcom/zte/fingerprint/utils/FingerSwitchPreference$SwitchEnable;->setSwitch(Lcom/zte/mifavor/widget/SwitchZTE;)V

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchView:Lcom/zte/mifavor/widget/SwitchZTE;

    if-eqz v0, :cond_5

    .line 229
    iget-boolean v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mHideSwitch:Z

    if-eqz v0, :cond_8

    .line 230
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchView:Lcom/zte/mifavor/widget/SwitchZTE;

    invoke-virtual {v0, v4}, Lcom/zte/mifavor/widget/SwitchZTE;->setVisibility(I)V

    .line 234
    :goto_0
    iget v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mIsSwitchChecked:I

    if-ne v0, v3, :cond_9

    .line 235
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchView:Lcom/zte/mifavor/widget/SwitchZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/SwitchZTE;->setChecked(Z)V

    .line 239
    :cond_3
    :goto_1
    iget v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchId:I

    if-eqz v0, :cond_4

    .line 240
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchView:Lcom/zte/mifavor/widget/SwitchZTE;

    iget v1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchId:I

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/SwitchZTE;->setId(I)V

    .line 242
    :cond_4
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_5

    .line 243
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchView:Lcom/zte/mifavor/widget/SwitchZTE;

    iget-object v1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/SwitchZTE;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 246
    :cond_5
    const v0, 0x7f060059

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mCutoffView:Landroid/widget/ImageView;

    .line 247
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mCutoffView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 248
    iget-boolean v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mHideCutoff:Z

    if-eqz v0, :cond_a

    .line 249
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mCutoffView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    :cond_6
    :goto_2
    const v0, 0x7f060072

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mButton:Landroid/widget/Button;

    .line 256
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    .line 257
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_7

    .line 258
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 261
    :cond_7
    return-void

    .line 232
    :cond_8
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchView:Lcom/zte/mifavor/widget/SwitchZTE;

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/widget/SwitchZTE;->setVisibility(I)V

    goto :goto_0

    .line 236
    :cond_9
    iget v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mIsSwitchChecked:I

    if-nez v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchView:Lcom/zte/mifavor/widget/SwitchZTE;

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/widget/SwitchZTE;->setChecked(Z)V

    goto :goto_1

    .line 251
    :cond_a
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mCutoffView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 275
    invoke-super {p0}, Lcom/zte/mifavor/preference/Preference;->onClick()V

    .line 276
    return-void
.end method

.method public setHasButton(Z)V
    .locals 1
    .param p1, "bHasButton"    # Z

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 196
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->setLayoutResource(I)V

    .line 198
    :cond_0
    return-void
.end method

.method public setNoIcon(Z)V
    .locals 1
    .param p1, "bNoIcon"    # Z

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 82
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->setLayoutResource(I)V

    .line 84
    :cond_0
    return-void
.end method

.method public setNoLeftIcon(Z)V
    .locals 1
    .param p1, "bNoLeftIcon"    # Z

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 90
    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->setLayoutResource(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 203
    invoke-virtual {p0}, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->notifyChanged()V

    .line 204
    return-void
.end method

.method public setSummaryStr(Ljava/lang/String;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSummaryStr:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSummaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSummaryStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSummaryStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSummaryStr:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSummaryView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSummaryView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->notifyChanged()V

    goto :goto_0
.end method

.method public setSwitchEnable(Lcom/zte/fingerprint/utils/FingerSwitchPreference$SwitchEnable;)V
    .locals 0
    .param p1, "switch_"    # Lcom/zte/fingerprint/utils/FingerSwitchPreference$SwitchEnable;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchEnable:Lcom/zte/fingerprint/utils/FingerSwitchPreference$SwitchEnable;

    .line 67
    return-void
.end method

.method public setSwitchEnable(Lcom/zte/fingerprint/utils/FingerSwitchPreference$SwitchEnable;Z)V
    .locals 1
    .param p1, "switch_"    # Lcom/zte/fingerprint/utils/FingerSwitchPreference$SwitchEnable;
    .param p2, "bNoCutOff"    # Z

    .prologue
    .line 71
    iput-object p1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchEnable:Lcom/zte/fingerprint/utils/FingerSwitchPreference$SwitchEnable;

    .line 72
    if-eqz p2, :cond_0

    .line 74
    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->setLayoutResource(I)V

    .line 76
    :cond_0
    return-void
.end method

.method public setSwitchId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchId:I

    .line 132
    invoke-virtual {p0}, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->notifyChanged()V

    .line 133
    return-void
.end method

.method public setSwitchOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 138
    invoke-virtual {p0}, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->notifyChanged()V

    .line 139
    return-void
.end method

.method public setSwitchView(Lcom/zte/mifavor/widget/SwitchZTE;)V
    .locals 0
    .param p1, "sw"    # Lcom/zte/mifavor/widget/SwitchZTE;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchView:Lcom/zte/mifavor/widget/SwitchZTE;

    .line 270
    return-void
.end method

.method public setSwtichChecked(Z)V
    .locals 3
    .param p1, "bChecked"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 175
    if-eqz p1, :cond_1

    .line 176
    iput v1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mIsSwitchChecked:I

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchView:Lcom/zte/mifavor/widget/SwitchZTE;

    if-eqz v0, :cond_3

    .line 182
    iget v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mIsSwitchChecked:I

    if-ne v0, v1, :cond_2

    .line 183
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchView:Lcom/zte/mifavor/widget/SwitchZTE;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/SwitchZTE;->setChecked(Z)V

    .line 190
    :cond_0
    :goto_1
    return-void

    .line 178
    :cond_1
    iput v2, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mIsSwitchChecked:I

    goto :goto_0

    .line 184
    :cond_2
    iget v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mIsSwitchChecked:I

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mSwitchView:Lcom/zte/mifavor/widget/SwitchZTE;

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/widget/SwitchZTE;->setChecked(Z)V

    goto :goto_1

    .line 188
    :cond_3
    invoke-virtual {p0}, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->notifyChanged()V

    goto :goto_1
.end method

.method public setTitleStr(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mTitleStr:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->mTitleStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/zte/fingerprint/utils/FingerSwitchPreference;->notifyChanged()V

    goto :goto_0
.end method

.method public updateColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 286
    return-void
.end method
