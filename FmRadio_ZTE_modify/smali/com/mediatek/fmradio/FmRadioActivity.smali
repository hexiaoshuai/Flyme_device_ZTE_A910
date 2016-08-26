.class public Lcom/mediatek/fmradio/FmRadioActivity;
.super Landroid/app/Activity;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Lcom/mediatek/fmradio/dialogs/RenameStationDialog$RenameStationListener;
.implements Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$SleepTimeListener;
.implements Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog$SwitchFreqListener;
.implements Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;
.implements Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog$CancelSearchListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# static fields
.field private static final IS_FIRST_TIME:Ljava/lang/String; = "isFirstTime"

.field private static final REFS_NAME:Ljava/lang/String; = "FMRecord"

.field private static final REQUEST_CODE_FAVORITE:I = 0x1

.field private static final SHORT_ANNTENNA_SUPPORT:Z

.field private static final START_COUNT_DOWN_TIME:Ljava/lang/String; = "startCountDownTime"

.field private static final START_RECORD_TIME:Ljava/lang/String; = "startRecordTime"

.field private static final TAG:Ljava/lang/String; = "FmRx/Activity"

.field public static final TAG_DELETE:Ljava/lang/String; = "Delete"

.field public static final TAG_NO_ANTENNA:Ljava/lang/String; = "NoAntenna"

.field public static final TAG_RENAME:Ljava/lang/String; = "Rename"

.field public static final TAG_SEARCH:Ljava/lang/String; = "Search"

.field private static final TAG_SLEEP:Ljava/lang/String; = "Sleep"

.field public static final TAG_SWITCH_FREQ:Ljava/lang/String; = "SwitchFreq"


# instance fields
.field private FreqSelectionBarCallback:Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;

.field private mAnimation:Landroid/view/animation/Animation;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonAddToFavorite:Landroid/widget/ImageButton;

.field private final mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mButtonNextStation:Landroid/view/View;

.field private mButtonPrevStation:Landroid/view/View;

.field private mButtonSwitchToSpeaker:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mCountDownStopTime:J

.field private mCurrentStation:I

.field private mFavorCursor:Landroid/database/Cursor;

.field private mFavorDrawerClose:Landroid/widget/ImageButton;

.field private mFavorDrawerOpen:Landroid/widget/ImageButton;

.field private mFavorItemAdapter:Lcom/mediatek/fmradio/FavorItemAdapter;

.field private final mFavorItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mFavorPart:Landroid/widget/RelativeLayout;

.field private mFmRadioListener:Lcom/mediatek/fmradio/FmRadioListener;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mFreqSelectionBar:Lcom/mediatek/fmradio/FreqSelectionBar;

.field private mFreqValue:Landroid/view/View;

.field private mFreqValueClickListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mFreqValueImg:[I

.field private mFreqValueNums:[Landroid/widget/ImageView;

.field private mGridView:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private mIsActivityForeground:Z

.field private mIsFavorBarOpened:Z

.field private mIsInCountDownMode:Z

.field private mIsInRecordingMode:Z

.field private mIsNeedShowNoAntennaDlg:Z

.field private mIsNeedShowSearchDlg:Z

.field private mIsPlaying:Z

.field private mIsServiceBinded:Z

.field private mIsServiceStarted:Z

.field private mNeedTuneto:Z

.field private mNoFavorIcon:Landroid/widget/ImageView;

.field private mNoFavorText:Landroid/widget/TextView;

.field private mParentView:Landroid/view/View;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mPreLoading:Landroid/widget/ImageView;

.field private mPrevRecorderState:I

.field private mRadioPart:Landroid/widget/RelativeLayout;

.field private mRecIcon:Landroid/widget/ImageView;

.field private mRecordStartTime:J

.field private mRecordState:I

.field private final mSdcardListener:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/mediatek/fmradio/FmRadioService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mSleepIcon:Landroid/widget/ImageView;

.field private mTeleManager:Landroid/telephony/TelephonyManager;

.field private mTextGeoCity:Landroid/widget/TextView;

.field private mTextStationName:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mTxtRecTime:Landroid/widget/TextView;

.field private mTxtSleepTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioUtils;->isFmShortAntennaSupport()Z

    move-result v0

    .line 125
    sput-boolean v0, Lcom/mediatek/fmradio/FmRadioActivity;->SHORT_ANNTENNA_SUPPORT:Z

    .line 126
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 129
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRadioPart:Landroid/widget/RelativeLayout;

    .line 130
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 131
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecIcon:Landroid/widget/ImageView;

    .line 132
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mSleepIcon:Landroid/widget/ImageView;

    .line 133
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTxtRecTime:Landroid/widget/TextView;

    .line 134
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTxtSleepTime:Landroid/widget/TextView;

    .line 135
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqValue:Landroid/view/View;

    .line 136
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    .line 137
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 140
    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqValueImg:[I

    .line 141
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonPrevStation:Landroid/view/View;

    .line 142
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonNextStation:Landroid/view/View;

    .line 143
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTextStationName:Landroid/widget/TextView;

    .line 144
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    .line 145
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonSwitchToSpeaker:Landroid/widget/ImageButton;

    .line 146
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPreLoading:Landroid/widget/ImageView;

    .line 147
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mAnimation:Landroid/view/animation/Animation;

    .line 148
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqSelectionBar:Lcom/mediatek/fmradio/FreqSelectionBar;

    .line 149
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->FreqSelectionBarCallback:Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;

    .line 151
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorPart:Landroid/widget/RelativeLayout;

    .line 152
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTextGeoCity:Landroid/widget/TextView;

    .line 153
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorDrawerOpen:Landroid/widget/ImageButton;

    .line 154
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorDrawerClose:Landroid/widget/ImageButton;

    .line 155
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mNoFavorText:Landroid/widget/TextView;

    .line 156
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mNoFavorIcon:Landroid/widget/ImageView;

    .line 157
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorItemAdapter:Lcom/mediatek/fmradio/FavorItemAdapter;

    .line 158
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mGridView:Landroid/widget/GridView;

    .line 159
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mParentView:Landroid/view/View;

    .line 161
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    .line 162
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    .line 165
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsServiceStarted:Z

    .line 166
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsServiceBinded:Z

    .line 167
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mNeedTuneto:Z

    .line 168
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsPlaying:Z

    .line 169
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    .line 170
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsInCountDownMode:Z

    .line 171
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    .line 172
    iput-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsNeedShowSearchDlg:Z

    .line 173
    iput-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsActivityForeground:Z

    .line 176
    iput-wide v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordStartTime:J

    .line 177
    iput-wide v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCountDownStopTime:J

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPrevRecorderState:I

    .line 179
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    .line 180
    iput v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordState:I

    .line 183
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    .line 184
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    .line 185
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mToast:Landroid/widget/Toast;

    .line 186
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 187
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 188
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 191
    new-instance v0, Lcom/mediatek/fmradio/FmRadioActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FmRadioActivity$1;-><init>(Lcom/mediatek/fmradio/FmRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFmRadioListener:Lcom/mediatek/fmradio/FmRadioListener;

    .line 210
    new-instance v0, Lcom/mediatek/fmradio/FmRadioActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FmRadioActivity$2;-><init>(Lcom/mediatek/fmradio/FmRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mSdcardListener:Landroid/content/BroadcastReceiver;

    .line 233
    new-instance v0, Lcom/mediatek/fmradio/FmRadioActivity$3;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FmRadioActivity$3;-><init>(Lcom/mediatek/fmradio/FmRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 247
    new-instance v0, Lcom/mediatek/fmradio/FmRadioActivity$4;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FmRadioActivity$4;-><init>(Lcom/mediatek/fmradio/FmRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqValueClickListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 320
    new-instance v0, Lcom/mediatek/fmradio/FmRadioActivity$5;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FmRadioActivity$5;-><init>(Lcom/mediatek/fmradio/FmRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    .line 368
    new-instance v0, Lcom/mediatek/fmradio/FmRadioActivity$6;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FmRadioActivity$6;-><init>(Lcom/mediatek/fmradio/FmRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    .line 569
    new-instance v0, Lcom/mediatek/fmradio/FmRadioActivity$7;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FmRadioActivity$7;-><init>(Lcom/mediatek/fmradio/FmRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 98
    return-void

    .line 137
    nop

    :array_0
    .array-data 4
        0x7f0201ef
        0x7f0201f0
        0x7f0201f1
        0x7f0201f2
        0x7f0201f3
        0x7f0201f4
        0x7f0201f5
        0x7f0201f6
        0x7f0201f7
        0x7f0201f8
    .end array-data
.end method

.method static synthetic access$0(Lcom/mediatek/fmradio/FmRadioActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mediatek/fmradio/FmRadioActivity;Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 1720
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioActivity;->isRecordingCardUnmount(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lcom/mediatek/fmradio/FmRadioActivity;Z)V
    .locals 0

    .prologue
    .line 1368
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioActivity;->setSpeakerPhoneOn(Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/mediatek/fmradio/FmRadioActivity;Z)V
    .locals 0

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    return-void
.end method

.method static synthetic access$12(Lcom/mediatek/fmradio/FmRadioActivity;)Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    return v0
.end method

.method static synthetic access$13(Lcom/mediatek/fmradio/FmRadioActivity;IZ)V
    .locals 0

    .prologue
    .line 927
    invoke-direct {p0, p1, p2}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V

    return-void
.end method

.method static synthetic access$14(Lcom/mediatek/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 2069
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshTimeText()V

    return-void
.end method

.method static synthetic access$15(Lcom/mediatek/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 2113
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshCountDownTimeText()V

    return-void
.end method

.method static synthetic access$16(Lcom/mediatek/fmradio/FmRadioActivity;Z)V
    .locals 0

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsPlaying:Z

    return-void
.end method

.method static synthetic access$17(Lcom/mediatek/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1306
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->stopAnimation()V

    return-void
.end method

.method static synthetic access$18(Lcom/mediatek/fmradio/FmRadioActivity;I)V
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    return-void
.end method

.method static synthetic access$19(Lcom/mediatek/fmradio/FmRadioActivity;I)V
    .locals 0

    .prologue
    .line 882
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshStationUI(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/mediatek/fmradio/FmRadioActivity;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1449
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$20(Lcom/mediatek/fmradio/FmRadioActivity;I)V
    .locals 0

    .prologue
    .line 923
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshRulerUI(I)V

    return-void
.end method

.method static synthetic access$21(Lcom/mediatek/fmradio/FmRadioActivity;Z)V
    .locals 0

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsNeedShowSearchDlg:Z

    return-void
.end method

.method static synthetic access$22(Lcom/mediatek/fmradio/FmRadioActivity;Z)V
    .locals 0

    .prologue
    .line 1415
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshImageButton(Z)V

    return-void
.end method

.method static synthetic access$23(Lcom/mediatek/fmradio/FmRadioActivity;Z)V
    .locals 0

    .prologue
    .line 1437
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    return-void
.end method

.method static synthetic access$24(Lcom/mediatek/fmradio/FmRadioActivity;)Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsActivityForeground:Z

    return v0
.end method

.method static synthetic access$25(Lcom/mediatek/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1695
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->showSearchDialog()V

    return-void
.end method

.method static synthetic access$26(Lcom/mediatek/fmradio/FmRadioActivity;)Z
    .locals 1

    .prologue
    .line 1731
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->dismissNoAntennaDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$27(Lcom/mediatek/fmradio/FmRadioActivity;Z)V
    .locals 0

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    return-void
.end method

.method static synthetic access$28(Lcom/mediatek/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1704
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->dismissSearchDialog()V

    return-void
.end method

.method static synthetic access$29(Lcom/mediatek/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 859
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->enterChannelList()V

    return-void
.end method

.method static synthetic access$3(Lcom/mediatek/fmradio/FmRadioActivity;)Lcom/mediatek/fmradio/FmRadioService;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    return-object v0
.end method

.method static synthetic access$30(Lcom/mediatek/fmradio/FmRadioActivity;I)V
    .locals 0

    .prologue
    .line 665
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioActivity;->updateRecordingState(I)V

    return-void
.end method

.method static synthetic access$31(Lcom/mediatek/fmradio/FmRadioActivity;I)V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioActivity;->updateRecorderError(I)V

    return-void
.end method

.method static synthetic access$32(Lcom/mediatek/fmradio/FmRadioActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonSwitchToSpeaker:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$33(Lcom/mediatek/fmradio/FmRadioActivity;Lcom/mediatek/fmradio/FmRadioService;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    return-void
.end method

.method static synthetic access$34(Lcom/mediatek/fmradio/FmRadioActivity;)Lcom/mediatek/fmradio/FmRadioListener;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFmRadioListener:Lcom/mediatek/fmradio/FmRadioListener;

    return-object v0
.end method

.method static synthetic access$35(Lcom/mediatek/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1359
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->powerUpFm()V

    return-void
.end method

.method static synthetic access$36(Lcom/mediatek/fmradio/FmRadioActivity;)Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    return v0
.end method

.method static synthetic access$37(Lcom/mediatek/fmradio/FmRadioActivity;)Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mNeedTuneto:Z

    return v0
.end method

.method static synthetic access$38(Lcom/mediatek/fmradio/FmRadioActivity;Z)V
    .locals 0

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mNeedTuneto:Z

    return-void
.end method

.method static synthetic access$39(Lcom/mediatek/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1913
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->updateCurrentStation()V

    return-void
.end method

.method static synthetic access$4(Lcom/mediatek/fmradio/FmRadioActivity;)Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$40(Lcom/mediatek/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1950
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->updateMenuStatus()V

    return-void
.end method

.method static synthetic access$41(Lcom/mediatek/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1933
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->updateDialogStatus()V

    return-void
.end method

.method static synthetic access$42(Lcom/mediatek/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1314
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->restoreRecorderState()V

    return-void
.end method

.method static synthetic access$43(Lcom/mediatek/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1332
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->restoreCountDownState()V

    return-void
.end method

.method static synthetic access$44(Lcom/mediatek/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1666
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->exitService()V

    return-void
.end method

.method static synthetic access$5(Lcom/mediatek/fmradio/FmRadioActivity;I)V
    .locals 0

    .prologue
    .line 1387
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioActivity;->tuneToStation(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/mediatek/fmradio/FmRadioActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/mediatek/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->updateFavoriteStation()V

    return-void
.end method

.method static synthetic access$8(Lcom/mediatek/fmradio/FmRadioActivity;)I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    return v0
.end method

.method static synthetic access$9(Lcom/mediatek/fmradio/FmRadioActivity;IZ)V
    .locals 0

    .prologue
    .line 1405
    invoke-direct {p0, p1, p2}, Lcom/mediatek/fmradio/FmRadioActivity;->seekStation(IZ)V

    return-void
.end method

.method private changeRecordingMode(Z)V
    .locals 3
    .param p1, "recordingMode"    # Z

    .prologue
    .line 1465
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeRecordingMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    if-ne v0, p1, :cond_1

    .line 1467
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "FM already "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "in"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1468
    const-string v2, "recording mode!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1467
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :goto_1
    return-void

    .line 1467
    :cond_0
    const-string v0, "NOT in"

    goto :goto_0

    .line 1471
    :cond_1
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    .line 1472
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v0, p1}, Lcom/mediatek/fmradio/FmRadioService;->setRecordingModeAsync(Z)V

    goto :goto_1
.end method

.method private checkNoAntennaDialogInOnResume()V
    .locals 2

    .prologue
    .line 1088
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRadioService;->isAntennaAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1090
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioUtils;->isFmShortAntennaSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1091
    const-string v0, "FmRx/Activity"

    .line 1092
    const-string v1, "Need to show no antenna dialog for plug out earphone in onPause state"

    .line 1091
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->dismissNoAntennaDialog()Z

    .line 1094
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->showNoAntennaDialog()V

    .line 1096
    :cond_0
    return-void
.end method

.method private dismissNoAntennaDialog()Z
    .locals 3

    .prologue
    .line 1732
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1733
    const-string v2, "NoAntenna"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1732
    check-cast v0, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;

    .line 1734
    .local v0, "newFragment":Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;
    if-eqz v0, :cond_0

    .line 1735
    invoke-virtual {v0}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->dismissAllowingStateLoss()V

    .line 1736
    const/4 v1, 0x1

    .line 1738
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dismissRenameDialog()V
    .locals 6

    .prologue
    .line 1759
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 1760
    const-string v5, "Rename"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1759
    check-cast v1, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;

    .line 1761
    .local v1, "dialogFragment":Lcom/mediatek/fmradio/dialogs/RenameStationDialog;
    if-nez v1, :cond_1

    .line 1780
    :cond_0
    :goto_0
    return-void

    .line 1764
    :cond_1
    invoke-virtual {v1}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 1765
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1769
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 1770
    const-string v5, "mShowing"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1771
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1772
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1779
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :goto_1
    invoke-virtual {v1}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 1773
    :catch_0
    move-exception v2

    .line 1777
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private dismissSearchDialog()V
    .locals 3

    .prologue
    .line 1705
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1706
    const-string v2, "Search"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1705
    check-cast v0, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;

    .line 1707
    .local v0, "newFragment":Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;
    if-eqz v0, :cond_0

    .line 1708
    invoke-virtual {v0}, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;->dismissAllowingStateLoss()V

    .line 1710
    :cond_0
    return-void
.end method

.method private dismissSleepTimeDialog()V
    .locals 3

    .prologue
    .line 1802
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1803
    const-string v2, "Sleep"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1802
    check-cast v0, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;

    .line 1804
    .local v0, "newFragment":Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;
    if-eqz v0, :cond_0

    .line 1805
    invoke-virtual {v0}, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;->dismissAllowingStateLoss()V

    .line 1807
    :cond_0
    return-void
.end method

.method private dismissSwitchFreqDialog()V
    .locals 3

    .prologue
    .line 1788
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1789
    const-string v2, "SwitchFreq"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1788
    check-cast v0, Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;

    .line 1790
    .local v0, "newFragment":Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;
    if-eqz v0, :cond_0

    .line 1791
    invoke-virtual {v0}, Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;->dismissAllowingStateLoss()V

    .line 1793
    :cond_0
    return-void
.end method

.method private editSharedPreferences(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 816
    const-string v2, "FMRecord"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/fmradio/FmRadioActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 817
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 818
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 819
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 820
    return-void
.end method

.method private enterChannelList()V
    .locals 3

    .prologue
    .line 860
    const-string v1, "FmRx/Activity"

    const-string v2, "enterChannelList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    if-eqz v1, :cond_0

    .line 864
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsActivityForeground:Z

    if-eqz v1, :cond_1

    .line 865
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 866
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/mediatek/fmradio/FmRadioFavorite;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 867
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 873
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    const-string v1, "FmRx/Activity"

    .line 870
    const-string v2, "enterChannelList. activity is background, not enter channel list."

    .line 869
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private exitService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1667
    const-string v1, "FmRx/Activity"

    const-string v2, "exitService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsServiceBinded:Z

    if-eqz v1, :cond_0

    .line 1669
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1670
    iput-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsServiceBinded:Z

    .line 1673
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsServiceStarted:Z

    if-eqz v1, :cond_2

    .line 1674
    new-instance v1, Landroid/content/Intent;

    .line 1675
    const-class v2, Lcom/mediatek/fmradio/FmRadioService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1674
    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->stopService(Landroid/content/Intent;)Z

    move-result v0

    .line 1676
    .local v0, "isSuccess":Z
    if-nez v0, :cond_1

    .line 1677
    const-string v1, "FmRx/Activity"

    const-string v2, "Error: Cannot stop the FM service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :cond_1
    iput-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsServiceStarted:Z

    .line 1681
    .end local v0    # "isSuccess":Z
    :cond_2
    return-void
.end method

.method private getTimeString(I)Ljava/lang/String;
    .locals 14
    .param p1, "time"    # I

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 747
    const/16 v3, 0xe10

    .line 748
    .local v3, "oneHour":I
    div-int/lit16 v0, p1, 0xe10

    .line 749
    .local v0, "hour":I
    const/16 v2, 0x3c

    .line 750
    .local v2, "minuteSecond":I
    div-int/lit8 v8, p1, 0x3c

    rem-int/lit8 v1, v8, 0x3c

    .line 751
    .local v1, "minute":I
    rem-int/lit8 v4, p1, 0x3c

    .line 752
    .local v4, "second":I
    const/4 v7, 0x0

    .line 754
    .local v7, "timeString":Ljava/lang/String;
    if-lez v0, :cond_0

    .line 755
    const-string v5, "%02d:%02d:%02d"

    .line 756
    .local v5, "timeFormatLong":Ljava/lang/String;
    const-string v8, "%02d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 762
    .end local v5    # "timeFormatLong":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 758
    :cond_0
    const-string v6, "%02d:%02d"

    .line 759
    .local v6, "timeFormatShort":Ljava/lang/String;
    const-string v8, "%02d:%02d"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public static hasSoftMenuButton(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2212
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initUiComponent()V
    .locals 9

    .prologue
    const/16 v3, 0x36b

    const/4 v8, 0x4

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 1970
    const-string v0, "FmRx/Activity"

    const-string v2, "initUIComponent"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    const v0, 0x7f060076

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRadioPart:Landroid/widget/RelativeLayout;

    .line 1972
    const v0, 0x7f060089

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecIcon:Landroid/widget/ImageView;

    .line 1973
    const v0, 0x7f06008c

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mSleepIcon:Landroid/widget/ImageView;

    .line 1974
    const v0, 0x7f06008a

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTxtRecTime:Landroid/widget/TextView;

    .line 1975
    const v0, 0x7f06008b

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTxtSleepTime:Landroid/widget/TextView;

    .line 1976
    const v0, 0x7f06007a

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqValue:Landroid/view/View;

    .line 1977
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    const v0, 0x7f06007b

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v2, v4

    .line 1978
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    const/4 v5, 0x1

    const v0, 0x7f06007c

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v2, v5

    .line 1979
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    const/4 v5, 0x2

    const v0, 0x7f06007d

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v2, v5

    .line 1980
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    const/4 v5, 0x3

    const v0, 0x7f06007e

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v2, v5

    .line 1981
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    const v0, 0x7f06007f

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v2, v8

    .line 1982
    const v0, 0x7f060081

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonPrevStation:Landroid/view/View;

    .line 1983
    const v0, 0x7f060082

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonNextStation:Landroid/view/View;

    .line 1984
    const v0, 0x7f060084

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTextStationName:Landroid/widget/TextView;

    .line 1985
    const v0, 0x7f060087

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    .line 1986
    const v0, 0x7f060086

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonSwitchToSpeaker:Landroid/widget/ImageButton;

    .line 1987
    const v0, 0x7f060090

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/fmradio/FreqSelectionBar;

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqSelectionBar:Lcom/mediatek/fmradio/FreqSelectionBar;

    .line 1988
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1989
    .local v1, "screenWidth":I
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqSelectionBar:Lcom/mediatek/fmradio/FreqSelectionBar;

    const/16 v2, 0x438

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/fmradio/FreqSelectionBar;->initFreqSelectionBar(IIIII)V

    .line 1992
    const v0, 0x7f060091

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorPart:Landroid/widget/RelativeLayout;

    .line 1993
    const v0, 0x7f060093

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTextGeoCity:Landroid/widget/TextView;

    .line 1994
    const v0, 0x7f060094

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorDrawerOpen:Landroid/widget/ImageButton;

    .line 1995
    const v0, 0x7f060095

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorDrawerClose:Landroid/widget/ImageButton;

    .line 1996
    const v0, 0x7f060097

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mNoFavorText:Landroid/widget/TextView;

    .line 1997
    const v0, 0x7f060098

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mNoFavorIcon:Landroid/widget/ImageView;

    .line 1998
    const v0, 0x7f060099

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mGridView:Landroid/widget/GridView;

    .line 1999
    new-instance v0, Lcom/mediatek/fmradio/FavorItemAdapter;

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/fmradio/FavorItemAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorItemAdapter:Lcom/mediatek/fmradio/FavorItemAdapter;

    .line 2000
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorItemAdapter:Lcom/mediatek/fmradio/FavorItemAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2001
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mParentView:Landroid/view/View;

    .line 2002
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mParentView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 2004
    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2002
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2005
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mParentView:Landroid/view/View;

    const-string v2, "#b3000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2008
    new-instance v0, Landroid/widget/PopupMenu;

    const v2, 0x7f0600aa

    invoke-virtual {p0, v2}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 2009
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    .line 2010
    .local v6, "menu":Landroid/view/Menu;
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0f0002

    invoke-virtual {v0, v2, v6}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2014
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    .line 2017
    const v0, 0x7f0201c9

    .line 2016
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mAnimation:Landroid/view/animation/Animation;

    .line 2018
    const v0, 0x7f06008e

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPreLoading:Landroid/widget/ImageView;

    .line 2019
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPreLoading:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2020
    return-void
.end method

.method private isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private isRecordFileExist()Z
    .locals 4

    .prologue
    .line 1527
    const/4 v0, 0x0

    .line 1528
    .local v0, "fileName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v2}, Lcom/mediatek/fmradio/FmRadioService;->getRecordingNameWithPath()Ljava/lang/String;

    move-result-object v0

    .line 1530
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1531
    const-string v3, ".m4a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1530
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1532
    .local v1, "recordingFileToSave":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method private isRecordingCardUnmount(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1721
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioService;->getRecordingSdcard()Ljava/lang/String;

    move-result-object v0

    .line 1722
    .local v0, "sdcard":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1723
    .local v1, "unmountSDCard":Ljava/lang/String;
    const-string v2, "FmRx/Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unmount sd card file path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    .line 1725
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private powerUpFm()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1360
    const-string v0, "FmRx/Activity"

    const-string v1, "start powerUpFm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    invoke-direct {p0, v2}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshImageButton(Z)V

    .line 1362
    invoke-direct {p0, v2}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1363
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->startAnimation()V

    .line 1364
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    iget v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService;->powerUpAsync(F)V

    .line 1365
    const-string v0, "FmRx/Activity"

    const-string v1, "end powerUpFm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    return-void
.end method

.method private refreshCountDownTimeText()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/16 v6, 0x8

    .line 2114
    const-string v2, "FmRx/Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "refreshCountDownTimeText:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsInCountDownMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsInCountDownMode:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCountDownStopTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 2116
    const/16 v0, 0x3e8

    .line 2117
    .local v0, "oneSecond":I
    iget-wide v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCountDownStopTime:J

    .line 2118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2117
    sub-long/2addr v2, v4

    div-long/2addr v2, v8

    long-to-int v1, v2

    .line 2119
    .local v1, "sleepTime":I
    if-lez v1, :cond_0

    .line 2120
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTxtSleepTime:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->getTimeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2121
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTxtSleepTime:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2122
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    .line 2123
    const/16 v3, 0x66

    .line 2122
    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2132
    .end local v0    # "oneSecond":I
    .end local v1    # "sleepTime":I
    :goto_0
    return-void

    .line 2125
    .restart local v0    # "oneSecond":I
    .restart local v1    # "sleepTime":I
    :cond_0
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mSleepIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2126
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTxtSleepTime:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2129
    .end local v0    # "oneSecond":I
    .end local v1    # "sleepTime":I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mSleepIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2130
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTxtSleepTime:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshFavorUI(IZ)V
    .locals 11
    .param p1, "station"    # I
    .param p2, "isOpened"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 928
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 930
    iput-object v10, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    .line 932
    :cond_0
    if-nez p2, :cond_2

    .line 933
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 934
    sget-object v1, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 935
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "COLUMN_STATION_FREQ"

    aput-object v3, v2, v8

    .line 936
    const-string v3, "COLUMN_STATION_NAME"

    aput-object v3, v2, v4

    .line 937
    const-string v3, "COLUMN_STATION_TYPE=?"

    .line 938
    new-array v4, v4, [Ljava/lang/String;

    .line 939
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 940
    const-string v5, "COLUMN_STATION_FREQ ASC LIMIT 4 OFFSET 0"

    .line 933
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    .line 942
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorDrawerOpen:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 943
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorDrawerClose:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 944
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRadioPart:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 959
    :goto_0
    const/4 v6, 0x0

    .line 960
    .local v6, "count":I
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 962
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 964
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 965
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mFavorCursor.getCount()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorItemAdapter:Lcom/mediatek/fmradio/FavorItemAdapter;

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FavorItemAdapter;->setCursor(Landroid/database/Cursor;)V

    .line 974
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorItemAdapter:Lcom/mediatek/fmradio/FavorItemAdapter;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FavorItemAdapter;->notifyDataSetChanged()V

    .line 976
    if-lez v6, :cond_3

    .line 977
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mNoFavorText:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 978
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mNoFavorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 979
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v8}, Landroid/widget/GridView;->setVisibility(I)V

    .line 985
    :goto_2
    return-void

    .line 946
    .end local v6    # "count":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 947
    sget-object v1, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 948
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "COLUMN_STATION_FREQ"

    aput-object v3, v2, v8

    .line 949
    const-string v3, "COLUMN_STATION_NAME"

    aput-object v3, v2, v4

    .line 950
    const-string v3, "COLUMN_STATION_TYPE=?"

    .line 951
    new-array v4, v4, [Ljava/lang/String;

    .line 952
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 953
    const-string v5, "COLUMN_STATION_FREQ ASC "

    .line 946
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    .line 954
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorDrawerOpen:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 955
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorDrawerClose:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 956
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRadioPart:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 957
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRadioPart:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 967
    .restart local v6    # "count":I
    :catch_0
    move-exception v7

    .line 968
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 969
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 970
    iput-object v10, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    goto :goto_1

    .line 981
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mNoFavorText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 982
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mNoFavorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 983
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v9}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_2
.end method

.method private refreshImageButton(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1416
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    if-nez v1, :cond_0

    .line 1417
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqValue:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1418
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonPrevStation:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1419
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonNextStation:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1420
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonSwitchToSpeaker:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1421
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqSelectionBar:Lcom/mediatek/fmradio/FreqSelectionBar;

    invoke-virtual {v1, v0}, Lcom/mediatek/fmradio/FreqSelectionBar;->setEnabled(Z)V

    .line 1422
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorPart:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1435
    :goto_0
    return-void

    .line 1424
    :cond_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqValue:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1425
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonPrevStation:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1426
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonNextStation:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1427
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonSwitchToSpeaker:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    .line 1428
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v2}, Lcom/mediatek/fmradio/FmRadioService;->isBtConnected()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1427
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1429
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonSwitchToSpeaker:Landroid/widget/ImageButton;

    .line 1430
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRadioService;->isSpeakerUsed()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0201d7

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1432
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqSelectionBar:Lcom/mediatek/fmradio/FreqSelectionBar;

    invoke-virtual {v0, p1}, Lcom/mediatek/fmradio/FreqSelectionBar;->setEnabled(Z)V

    .line 1433
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorPart:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_0

    .line 1431
    :cond_2
    const v0, 0x7f0201d6

    goto :goto_1
.end method

.method private refreshPopupMenuItem(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1438
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    .line 1439
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1440
    .local v0, "menu":Landroid/view/Menu;
    const v1, 0x7f0600ab

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1441
    const v1, 0x7f0600ac

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1442
    const v1, 0x7f0600ad

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1443
    const v1, 0x7f0600ae

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1444
    const v1, 0x7f0600af

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1445
    const v1, 0x7f0600b0

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1447
    .end local v0    # "menu":Landroid/view/Menu;
    :cond_0
    return-void
.end method

.method private refreshRecordingStatus(I)V
    .locals 8
    .param p1, "stateOverride"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1482
    const/4 v2, -0x1

    .line 1484
    .local v2, "recorderState":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    .line 1485
    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRadioService;->getRecorderState()I

    move-result v2

    .line 1487
    :goto_0
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "refreshRecordingStatus: state="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    packed-switch v2, :pswitch_data_0

    .line 1512
    :pswitch_0
    const-string v3, "FmRx/Activity"

    const-string v4, "invalid record status"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :goto_1
    :pswitch_1
    iput v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPrevRecorderState:I

    .line 1516
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "refreshRecordingStatus.mPrevRecorderState:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1517
    iget v5, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPrevRecorderState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1516
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    return-void

    :cond_0
    move v2, p1

    .line 1485
    goto :goto_0

    .line 1490
    :pswitch_2
    iput-boolean v6, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    .line 1491
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRadioService;->getRecordTime()J

    move-result-wide v0

    .line 1492
    .local v0, "recordTime":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    .line 1497
    :cond_1
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1498
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTxtRecTime:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1502
    .end local v0    # "recordTime":J
    :pswitch_3
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1488
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private refreshRulerUI(I)V
    .locals 1
    .param p1, "station"    # I

    .prologue
    .line 924
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqSelectionBar:Lcom/mediatek/fmradio/FreqSelectionBar;

    invoke-virtual {v0, p1}, Lcom/mediatek/fmradio/FreqSelectionBar;->freqToLayoutX(I)V

    .line 925
    return-void
.end method

.method private refreshStationUI(I)V
    .locals 9
    .param p1, "station"    # I

    .prologue
    const/4 v7, 0x4

    .line 883
    move v0, p1

    .line 884
    .local v0, "freq":I
    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioUtils;->isValidStation(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 885
    const/16 v0, 0x36b

    .line 887
    :cond_0
    const/4 v5, 0x0

    .line 888
    .local v5, "num":I
    const/16 v6, 0x3e8

    if-lt v0, v6, :cond_1

    .line 889
    const/4 v5, 0x5

    .line 890
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 895
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 896
    .local v1, "freqValue":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v5, :cond_2

    .line 908
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/mediatek/fmradio/FmRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v4

    .line 912
    .local v4, "isFavoriteStation":Z
    if-eqz v4, :cond_5

    .line 913
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v7, 0x7f0201cb

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 914
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTextStationName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    .line 915
    const/4 v8, 0x2

    .line 914
    invoke-static {v7, p1, v8}, Lcom/mediatek/fmradio/FmRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 921
    :goto_2
    return-void

    .line 892
    .end local v1    # "freqValue":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "isFavoriteStation":Z
    :cond_1
    const/4 v5, 0x4

    .line 893
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    aget-object v6, v6, v7

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 897
    .restart local v1    # "freqValue":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_2
    add-int/lit8 v6, v5, -0x2

    if-ge v2, v6, :cond_3

    .line 898
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 899
    .local v3, "index":I
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqValueImg:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 896
    .end local v3    # "index":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 900
    :cond_3
    add-int/lit8 v6, v5, -0x2

    if-le v2, v6, :cond_4

    .line 901
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 902
    .restart local v3    # "index":I
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqValueImg:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 904
    .end local v3    # "index":I
    :cond_4
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    aget-object v6, v6, v2

    const v7, 0x7f0201fa

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 917
    .restart local v4    # "isFavoriteStation":Z
    :cond_5
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v7, 0x7f0201ca

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 918
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTextStationName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    .line 919
    const/4 v8, 0x3

    .line 918
    invoke-static {v7, p1, v8}, Lcom/mediatek/fmradio/FmRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private refreshTimeText()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/16 v6, 0x8

    .line 2070
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "refreshTimeText:mRecordState:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    if-nez v3, :cond_2

    .line 2072
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "refreshTimeText:mIsInRecordingMode:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2073
    iget-boolean v5, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2072
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    iget v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordState:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 2075
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRadioService;->stopRecordingAsync()V

    .line 2079
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2080
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTxtRecTime:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2111
    :goto_1
    return-void

    .line 2076
    :cond_1
    iget v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordState:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 2077
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRadioService;->stopPlaybackAsync()V

    goto :goto_0

    .line 2084
    :cond_2
    const/16 v0, 0x3e8

    .line 2085
    .local v0, "oneSecond":I
    iget v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordState:I

    packed-switch v3, :pswitch_data_0

    .line 2106
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTxtRecTime:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2109
    :cond_3
    :goto_2
    :pswitch_0
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 2087
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordStartTime:J

    sub-long/2addr v4, v6

    div-long/2addr v4, v8

    long-to-int v1, v4

    .line 2088
    .local v1, "recordTime":I
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTxtRecTime:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->getTimeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2089
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTxtRecTime:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2090
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Recording time = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTxtRecTime:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioService;->getRecordingSdcard()Ljava/lang/String;

    move-result-object v2

    .line 2092
    .local v2, "recordingSdcard":Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/fmradio/FmRadioUtils;->hasEnoughSpace(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2095
    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    .line 2097
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRadioService;->stopRecordingAsync()V

    goto :goto_2

    .line 2085
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerButtonClickListener()V
    .locals 2

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2024
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqValue:Landroid/view/View;

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqValueClickListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 2025
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonPrevStation:Landroid/view/View;

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2026
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonNextStation:Landroid/view/View;

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2027
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2028
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonSwitchToSpeaker:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2029
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorDrawerOpen:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2030
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorDrawerClose:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2031
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mParentView:Landroid/view/View;

    new-instance v1, Lcom/mediatek/fmradio/FmRadioActivity$8;

    invoke-direct {v1, p0}, Lcom/mediatek/fmradio/FmRadioActivity$8;-><init>(Lcom/mediatek/fmradio/FmRadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2038
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2039
    new-instance v0, Lcom/mediatek/fmradio/FmRadioActivity$9;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FmRadioActivity$9;-><init>(Lcom/mediatek/fmradio/FmRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->FreqSelectionBarCallback:Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;

    .line 2052
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFreqSelectionBar:Lcom/mediatek/fmradio/FreqSelectionBar;

    .line 2053
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->FreqSelectionBarCallback:Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FreqSelectionBar;->setOnFrequencyChangeCallBack(Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;)V

    .line 2054
    return-void
.end method

.method private registerSdcardReceiver()V
    .locals 2

    .prologue
    .line 2057
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2058
    .local v0, "iFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2059
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2060
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2061
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2062
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mSdcardListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2063
    return-void
.end method

.method private restoreConfiguration()V
    .locals 4

    .prologue
    .line 990
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 991
    const-string v1, "FmRx/Activity"

    .line 992
    const-string v2, "Configration changes,activity restart,need to reset UI!"

    .line 991
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 994
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 1008
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 997
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v1, "mPrevRecorderState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPrevRecorderState:I

    .line 998
    const-string v1, "mRecordState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordState:I

    .line 1001
    const-string v1, "mIsNeedShowSearchDlg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsNeedShowSearchDlg:Z

    .line 1004
    const-string v1, "isInRecordingMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    .line 1005
    const-string v1, "mIsPlaying"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsPlaying:Z

    .line 1006
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bundle = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreCountDownState()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 1334
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->isInCountDownMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsInCountDownMode:Z

    .line 1335
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsInCountDownMode:Z

    if-eqz v1, :cond_1

    .line 1337
    const-string v1, "FMRecord"

    .line 1336
    invoke-virtual {p0, v1, v7}, Lcom/mediatek/fmradio/FmRadioActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1339
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "startCountDownTime"

    .line 1338
    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCountDownStopTime:J

    .line 1340
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&&&sendemptyMessage:mCountDownStop:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1341
    iget-wide v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCountDownStopTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1340
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    iget-wide v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCountDownStopTime:J

    cmp-long v1, v8, v2

    if-eqz v1, :cond_0

    .line 1343
    iget-wide v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCountDownStopTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 1344
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mSleepIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1345
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1354
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 1347
    .restart local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mSleepIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1348
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTxtSleepTime:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1351
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mSleepIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1352
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTxtSleepTime:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private restoreRecorderState()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 1316
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->getRecordingMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    .line 1317
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->getRecorderState()I

    move-result v1

    iput v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordState:I

    .line 1319
    const/4 v1, 0x6

    iget v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordState:I

    if-ne v1, v2, :cond_0

    .line 1321
    const-string v1, "FMRecord"

    .line 1320
    invoke-virtual {p0, v1, v4}, Lcom/mediatek/fmradio/FmRadioActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1322
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "startRecordTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordStartTime:J

    .line 1323
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1324
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&&&sendemptyMessage:mRecoderStart:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordStartTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1330
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 1327
    :cond_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1328
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTxtRecTime:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private seekStation(IZ)V
    .locals 2
    .param p1, "station"    # I
    .param p2, "direction"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1408
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->startAnimation()V

    .line 1409
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshImageButton(Z)V

    .line 1410
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1411
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/fmradio/FmRadioService;->seekStationAsync(FZ)V

    .line 1413
    return-void
.end method

.method private setSpeakerPhoneOn(Z)V
    .locals 2
    .param p1, "isSpeaker"    # Z

    .prologue
    .line 1369
    if-eqz p1, :cond_0

    .line 1370
    const-string v0, "FmRx/Activity"

    const-string v1, "UseSpeaker"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService;->setSpeakerPhoneOn(Z)V

    .line 1376
    :goto_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonSwitchToSpeaker:Landroid/widget/ImageButton;

    .line 1377
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRadioService;->isSpeakerUsed()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0201d7

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1379
    return-void

    .line 1373
    :cond_0
    const-string v0, "FmRx/Activity"

    const-string v1, "UseEarphone"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService;->setSpeakerPhoneOn(Z)V

    goto :goto_0

    .line 1378
    :cond_1
    const v0, 0x7f0201d6

    goto :goto_1
.end method

.method private showRenameDialog(I)V
    .locals 4
    .param p1, "freq"    # I

    .prologue
    .line 1742
    const/4 v0, 0x0

    .line 1743
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/mediatek/fmradio/FmRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1744
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    .line 1745
    const/4 v3, 0x2

    .line 1744
    invoke-static {v2, p1, v3}, Lcom/mediatek/fmradio/FmRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 1750
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1751
    :cond_0
    int-to-float v2, p1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 1753
    :cond_1
    invoke-static {v0}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->newInstance(Ljava/lang/String;)Lcom/mediatek/fmradio/dialogs/RenameStationDialog;

    move-result-object v1

    .line 1754
    .local v1, "newFragment":Lcom/mediatek/fmradio/dialogs/RenameStationDialog;
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v3, "Rename"

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1755
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1756
    return-void

    .line 1747
    .end local v1    # "newFragment":Lcom/mediatek/fmradio/dialogs/RenameStationDialog;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    .line 1748
    const/4 v3, 0x3

    .line 1747
    invoke-static {v2, p1, v3}, Lcom/mediatek/fmradio/FmRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showSearchDialog()V
    .locals 3

    .prologue
    .line 1696
    invoke-static {}, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;->newInstance()Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;

    move-result-object v0

    .line 1697
    .local v0, "newFragment":Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "Search"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1698
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1699
    return-void
.end method

.method private showSleepTimeDialog()V
    .locals 3

    .prologue
    .line 1796
    invoke-static {}, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;->newInstance()Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;

    move-result-object v0

    .line 1797
    .local v0, "newFragment":Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "Sleep"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1798
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1799
    return-void
.end method

.method private showSwitchFreqDialog(I)V
    .locals 3
    .param p1, "freq"    # I

    .prologue
    .line 1783
    invoke-static {p1}, Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;->newInstance(I)Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;

    move-result-object v0

    .line 1784
    .local v0, "newFragment":Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "SwitchFreq"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1785
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mToast:Landroid/widget/Toast;

    .line 1453
    :cond_0
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1454
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1455
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioActivity.showToast: toast = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPreLoading:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1299
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPreLoading:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1300
    const-string v0, "FmRx/Activity"

    const-string v1, "FmRadioActivity.startAnimation end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPreLoading:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1308
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPreLoading:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1309
    return-void
.end method

.method private tuneToStation(I)V
    .locals 2
    .param p1, "station"    # I

    .prologue
    const/4 v0, 0x0

    .line 1391
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->startAnimation()V

    .line 1392
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshImageButton(Z)V

    .line 1393
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1394
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService;->tuneStationAsync(F)V

    .line 1395
    return-void
.end method

.method private unregisterSdcardReceiver()V
    .locals 1

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mSdcardListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2067
    return-void
.end method

.method private updateCurrentStation()V
    .locals 3

    .prologue
    .line 1917
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->getFrequency()I

    move-result v0

    .line 1918
    .local v0, "freq":I
    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioUtils;->isValidStation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1919
    iget v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    if-eq v1, v0, :cond_0

    .line 1920
    const-string v1, "FmRx/Activity"

    const-string v2, "frequency in service isn\'t same as in database"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    iput v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    .line 1922
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    invoke-static {v1, v2}, Lcom/mediatek/fmradio/FmRadioStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 1923
    iget v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshStationUI(I)V

    .line 1924
    iget v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshRulerUI(I)V

    .line 1925
    iget v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    invoke-direct {p0, v1, v2}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V

    .line 1928
    :cond_0
    return-void
.end method

.method private updateDialogStatus()V
    .locals 4

    .prologue
    .line 1934
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateDialogStatus.mIsNeedShowSearchDlg:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1935
    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsNeedShowSearchDlg:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1934
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->isScanning()Z

    move-result v0

    .line 1939
    .local v0, "isScan":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsNeedShowSearchDlg:Z

    if-eqz v1, :cond_0

    .line 1940
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateDialogStatus: show search dialog. isScan is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1941
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1940
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsNeedShowSearchDlg:Z

    .line 1943
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->showSearchDialog()V

    .line 1945
    :cond_0
    return-void
.end method

.method private updateFavoriteStation()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 769
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    if-eqz v1, :cond_0

    .line 770
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    iget v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    invoke-virtual {v1, v2}, Lcom/mediatek/fmradio/FmRadioService;->updateFavoriteStation(I)V

    .line 805
    :goto_0
    return-void

    .line 774
    :cond_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    invoke-static {v1, v2}, Lcom/mediatek/fmradio/FmRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 776
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    .line 777
    iget v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    .line 776
    invoke-static {v1, v2, v3}, Lcom/mediatek/fmradio/FmRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "stationName":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    .line 779
    iget v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    .line 778
    invoke-static {v1, v0, v4, v2}, Lcom/mediatek/fmradio/FmRadioStation;->updateStationToDb(Landroid/content/Context;Ljava/lang/String;II)V

    .line 780
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v2, 0x7f0201ca

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 781
    iget v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    invoke-direct {p0, v1, v2}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V

    goto :goto_0

    .line 784
    .end local v0    # "stationName":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/mediatek/fmradio/FmRadioStation;->getStationCount(Landroid/content/Context;I)I

    move-result v1

    .line 785
    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 786
    const v1, 0x7f090062

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 788
    :cond_2
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    .line 789
    iget v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    .line 788
    invoke-static {v1, v2, v4}, Lcom/mediatek/fmradio/FmRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 790
    .restart local v0    # "stationName":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    invoke-static {v1, v2, v4}, Lcom/mediatek/fmradio/FmRadioStation;->isStationExist(Landroid/content/Context;II)Z

    move-result v1

    .line 791
    if-eqz v1, :cond_3

    .line 792
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    .line 794
    iget v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    .line 792
    invoke-static {v1, v0, v3, v2}, Lcom/mediatek/fmradio/FmRadioStation;->updateStationToDb(Landroid/content/Context;Ljava/lang/String;II)V

    .line 800
    :goto_1
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    .line 801
    const v2, 0x7f0201cb

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 802
    iget v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    invoke-direct {p0, v1, v2}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V

    goto :goto_0

    .line 796
    :cond_3
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    .line 797
    iget v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    .line 796
    invoke-static {v1, v0, v2, v3}, Lcom/mediatek/fmradio/FmRadioStation;->insertStationToDb(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_1
.end method

.method private updateMenuStatus()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 1951
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v5}, Lcom/mediatek/fmradio/FmRadioService;->isPowerUp()Z

    move-result v1

    .line 1952
    .local v1, "isPlaying":Z
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v5}, Lcom/mediatek/fmradio/FmRadioService;->isPowerUping()Z

    move-result v2

    .line 1953
    .local v2, "isPoweruping":Z
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v5}, Lcom/mediatek/fmradio/FmRadioService;->isSeeking()Z

    move-result v4

    .line 1954
    .local v4, "isSeeking":Z
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v5}, Lcom/mediatek/fmradio/FmRadioService;->isScanning()Z

    move-result v3

    .line 1955
    .local v3, "isScan":Z
    const-string v5, "FmRx/Activity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "updateMenuStatus.isSeeking:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    if-nez v2, :cond_2

    move v0, v6

    .line 1959
    .local v0, "fmStatus":Z
    :goto_0
    if-eqz v0, :cond_3

    move v5, v6

    :goto_1
    invoke-direct {p0, v5}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshImageButton(Z)V

    .line 1960
    if-eqz v0, :cond_4

    :goto_2
    invoke-direct {p0, v6}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1963
    if-nez v4, :cond_0

    if-eqz v2, :cond_1

    .line 1964
    :cond_0
    const-string v5, "FmRx/Activity"

    const-string v6, "updateMenuStatus. it is seeking or poweruping"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->startAnimation()V

    .line 1967
    :cond_1
    return-void

    .line 1956
    .end local v0    # "fmStatus":Z
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .restart local v0    # "fmStatus":Z
    :cond_3
    move v5, v1

    .line 1959
    goto :goto_1

    :cond_4
    move v6, v1

    .line 1960
    goto :goto_2
.end method

.method private updateRecorderError(I)V
    .locals 4
    .param p1, "errorType"    # I

    .prologue
    .line 698
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateRecorderError.errorType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    .line 700
    const/4 v0, 0x0

    .line 703
    .local v0, "showString":Ljava/lang/String;
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshRecordingStatus(I)V

    .line 704
    sparse-switch p1, :sswitch_data_0

    .line 731
    const-string v1, "FmRx/Activity"

    const-string v2, "invalid recorder error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :goto_0
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 736
    return-void

    .line 706
    :sswitch_0
    const v1, 0x7f090078

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 707
    goto :goto_0

    .line 710
    :sswitch_1
    const v1, 0x7f090079

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 711
    goto :goto_0

    .line 714
    :sswitch_2
    const v1, 0x7f09007a

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 715
    goto :goto_0

    .line 718
    :sswitch_3
    const v1, 0x7f09007b

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 719
    goto :goto_0

    .line 722
    :sswitch_4
    const v1, 0x7f090086

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 723
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->isRecordFileExist()Z

    goto :goto_0

    .line 728
    :sswitch_5
    const v1, 0x7f09007c

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 729
    goto :goto_0

    .line 704
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x21 -> :sswitch_4
    .end sparse-switch
.end method

.method private updateRecordingState(I)V
    .locals 3
    .param p1, "recorderState"    # I

    .prologue
    const/16 v2, 0x65

    .line 666
    iput p1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordState:I

    .line 667
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshRecordingStatus(I)V

    .line 669
    packed-switch p1, :pswitch_data_0

    .line 686
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 689
    :goto_0
    return-void

    .line 671
    :pswitch_0
    const v0, 0x7f090077

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 672
    const-string v0, "FmRx/Activity"

    const-string v1, "updateRecordingState:startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 677
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 681
    :pswitch_2
    const-string v0, "FmRx/Activity"

    const-string v1, "updateRecordingState:remove message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 669
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancelSearch()V
    .locals 2

    .prologue
    .line 1876
    const-string v0, "FmRx/Activity"

    const-string v1, "FmRadioActivity.cancelSearch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRadioService;->stopScan()Z

    .line 1878
    return-void
.end method

.method public noAntennaCancel()V
    .locals 2

    .prologue
    .line 1901
    const-string v0, "FmRx/Activity"

    const-string v1, " onClick Negative"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRadioService;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1903
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->exitService()V

    .line 1908
    :goto_0
    return-void

    .line 1905
    :cond_0
    const-string v0, "FmRx/Activity"

    .line 1906
    const-string v1, "No need exit Service and Activity cause current is lock mode"

    .line 1905
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public noAntennaContinue()V
    .locals 2

    .prologue
    .line 1887
    const-string v0, "FmRx/Activity"

    const-string v1, " noAntennaContinue.onClick ok to continue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->isAntennaAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1889
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->powerUpFm()V

    .line 1894
    :goto_0
    return-void

    .line 1891
    :cond_0
    const-string v0, "FmRx/Activity"

    const-string v1, "noAntennaContinue.earphone is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService;->switchAntennaAsync(I)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 290
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    .line 291
    .local v0, "freq":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 313
    :pswitch_0
    const-string v1, "FmRx/Activity"

    const-string v2, "invalid menu item"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 293
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->showRenameDialog(I)V

    goto :goto_0

    .line 297
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mediatek/fmradio/FmRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->updateFavoriteStation()V

    goto :goto_0

    .line 303
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mediatek/fmradio/FmRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->updateFavoriteStation()V

    goto :goto_0

    .line 309
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->showSwitchFreqDialog(I)V

    goto :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x7f0600b2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 830
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 831
    const-string v1, "FmRx/Activity"

    const-string v2, "FmRadioActivity.onCreate start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->setVolumeControlStream(I)V

    .line 833
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 834
    .local v0, "actionBar":Landroid/app/ActionBar;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x75e69f

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 837
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->hasSoftMenuButton(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 838
    const-string v1, "FmRx/Activity"

    const-string v2, "FmRadioActivity PermanentKey"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const v1, 0x7f03003f

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->setContentView(I)V

    .line 844
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 845
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    .line 847
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioStation;->initFmDatabase(Landroid/content/Context;)V

    .line 848
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->initUiComponent()V

    .line 849
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->registerButtonClickListener()V

    .line 850
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->registerSdcardReceiver()V

    .line 851
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 852
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 853
    const-string v1, "FmRx/Activity"

    const-string v2, "FmRadioActivity.onCreate end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return-void

    .line 841
    :cond_0
    const-string v1, "FmRx/Activity"

    const-string v2, "FmRadioActivity SoftKey"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const v1, 0x7f030040

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1182
    const-string v1, "FmRx/Activity"

    const-string v2, "start FmRadioActivity.onCreateOptionsMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1184
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1185
    const-string v1, "FmRx/Activity"

    const-string v2, "end FmRadioActivity.onCreateOptionsMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1149
    const-string v0, "FmRx/Activity"

    const-string v1, "start FmRadioActivity.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    .line 1151
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1153
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    .line 1155
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->unregisterSdcardReceiver()V

    .line 1160
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1161
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    if-eqz v0, :cond_1

    .line 1162
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFmRadioListener:Lcom/mediatek/fmradio/FmRadioListener;

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService;->unregisterFmRadioListener(Lcom/mediatek/fmradio/FmRadioListener;)V

    .line 1164
    :cond_1
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFmRadioListener:Lcom/mediatek/fmradio/FmRadioListener;

    .line 1165
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_2

    .line 1166
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1167
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 1169
    :cond_2
    const-string v0, "FmRx/Activity"

    const-string v1, "end FmRadioActivity.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1171
    return-void
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 3
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 2207
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "popmenu dismiss listener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->invalidateOptionsMenu()V

    .line 2209
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2194
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    if-eqz v1, :cond_0

    .line 2195
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    .line 2196
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    .line 2197
    .local v0, "freq":I
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    invoke-direct {p0, v0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V

    .line 2198
    const/4 v1, 0x1

    .line 2200
    .end local v0    # "freq":I
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const v8, 0x7f0600aa

    const v7, 0x7f0600ad

    const v6, 0x7f0600ae

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 2136
    const/16 v3, 0x52

    if-ne p1, v3, :cond_7

    .line 2137
    const/4 v0, 0x0

    .line 2138
    .local v0, "isPlaying":Z
    new-instance v3, Landroid/widget/PopupMenu;

    invoke-virtual {p0, v8}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 2139
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 2140
    .local v1, "menu":Landroid/view/Menu;
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2141
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 2142
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 2144
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    if-eqz v3, :cond_6

    .line 2145
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRadioService;->isPowerUp()Z

    move-result v0

    .line 2146
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRadioService;->getRecorderState()I

    move-result v3

    iput v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordState:I

    .line 2147
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    .line 2149
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRadioService;->getRecordingMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2150
    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2151
    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2152
    const/4 v3, 0x6

    iget v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordState:I

    if-ne v3, v4, :cond_1

    .line 2153
    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2154
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2171
    :goto_0
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRadioService;->isInCountDownMode()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2172
    const v3, 0x7f0600af

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2173
    const v3, 0x7f0600b0

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2184
    :goto_1
    invoke-virtual {p0, v8}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2185
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    .line 2188
    .end local v0    # "isPlaying":Z
    .end local v1    # "menu":Landroid/view/Menu;
    :cond_0
    :goto_2
    return v2

    .line 2156
    .restart local v0    # "isPlaying":Z
    .restart local v1    # "menu":Landroid/view/Menu;
    :cond_1
    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2160
    :cond_2
    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2161
    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2162
    const/4 v3, 0x5

    iget v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordState:I

    if-eq v3, v4, :cond_3

    .line 2163
    const/4 v3, -0x1

    iget v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordState:I

    if-ne v3, v4, :cond_4

    .line 2164
    :cond_3
    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2167
    :cond_4
    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2176
    :cond_5
    const v3, 0x7f0600af

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2177
    const v3, 0x7f0600b0

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2182
    :cond_6
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    goto :goto_1

    .line 2188
    .end local v0    # "isPlaying":Z
    .end local v1    # "menu":Landroid/view/Menu;
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1571
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onMenuItemClick:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1657
    const-string v3, "FmRx/Activity"

    const-string v4, "invalid menu item"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :cond_0
    :goto_0
    return v6

    .line 1575
    :pswitch_0
    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsActivityForeground:Z

    if-nez v3, :cond_1

    .line 1576
    const-string v3, "FmRx/Activity"

    const-string v4, "click search menu in background, don\'t show search dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1579
    :cond_1
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRadioService;->isPowerUp()Z

    move-result v0

    .line 1580
    .local v0, "isPlaying":Z
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRadioService;->isSeeking()Z

    move-result v2

    .line 1581
    .local v2, "isSeeking":Z
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRadioService;->isScanning()Z

    move-result v1

    .line 1582
    .local v1, "isScan":Z
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-nez v0, :cond_3

    .line 1583
    :cond_2
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fm is not ready for scanning, isScan="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1584
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSeeking="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isPlaying="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1583
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1587
    :cond_3
    iput-boolean v8, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsNeedShowSearchDlg:Z

    .line 1588
    invoke-direct {p0, v6}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshImageButton(Z)V

    .line 1589
    invoke-direct {p0, v6}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1590
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->showSearchDialog()V

    .line 1592
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRadioService;->startScanAsync()V

    goto :goto_0

    .line 1596
    .end local v0    # "isPlaying":Z
    .end local v1    # "isScan":Z
    .end local v2    # "isSeeking":Z
    :pswitch_1
    invoke-direct {p0, v6}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshImageButton(Z)V

    .line 1597
    invoke-direct {p0, v6}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1599
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->enterChannelList()V

    goto :goto_0

    .line 1603
    :pswitch_2
    invoke-direct {p0, v6}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshImageButton(Z)V

    .line 1604
    invoke-direct {p0, v6}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1605
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->exitService()V

    .line 1606
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->finish()V

    goto :goto_0

    .line 1610
    :pswitch_3
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    if-nez v3, :cond_4

    .line 1611
    const-string v3, "FmRx/Activity"

    const-string v4, "menu_recordStart, mService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1614
    :cond_4
    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsPlaying:Z

    if-nez v3, :cond_5

    .line 1615
    const v3, 0x7f09007c

    invoke-virtual {p0, v3}, Lcom/mediatek/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/fmradio/FmRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1618
    :cond_5
    invoke-direct {p0, v8}, Lcom/mediatek/fmradio/FmRadioActivity;->changeRecordingMode(Z)V

    .line 1619
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordStartTime:J

    .line 1620
    const-string v3, "startRecordTime"

    iget-wide v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordStartTime:J

    invoke-direct {p0, v3, v4, v5}, Lcom/mediatek/fmradio/FmRadioActivity;->editSharedPreferences(Ljava/lang/String;J)V

    .line 1621
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRadioService;->startRecordingAsync()V

    goto/16 :goto_0

    .line 1625
    :pswitch_4
    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    if-eqz v3, :cond_0

    .line 1626
    invoke-direct {p0, v6}, Lcom/mediatek/fmradio/FmRadioActivity;->changeRecordingMode(Z)V

    .line 1627
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    if-nez v3, :cond_6

    .line 1628
    const-string v3, "FmRx/Activity"

    const-string v4, "menu_recordStop, mService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1631
    :cond_6
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1632
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTxtRecTime:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1637
    :pswitch_5
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    if-nez v3, :cond_7

    .line 1638
    const-string v3, "FmRx/Activity"

    const-string v4, "menu_sleepTimer, mService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1641
    :cond_7
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->showSleepTimeDialog()V

    goto/16 :goto_0

    .line 1645
    :pswitch_6
    iput-boolean v6, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsInCountDownMode:Z

    .line 1646
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCountDownStopTime:J

    .line 1647
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mSleepIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1648
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTxtSleepTime:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1649
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    if-nez v3, :cond_8

    .line 1650
    const-string v3, "FmRx/Activity"

    const-string v4, "menu_sleepTimerCancel, mService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1653
    :cond_8
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    const-string v4, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService;->stopCountingDownAsync(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1572
    :pswitch_data_0
    .packed-switch 0x7f0600ab
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v9, 0x7f0600aa

    const v8, 0x7f0600ad

    const v7, 0x7f0600ae

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1210
    const-string v4, "FmRx/Activity"

    const-string v5, "start FmRadioActivity.onOptionsItemSelected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1278
    const-string v3, "FmRx/Activity"

    const-string v4, "Error: Invalid options menu item."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_0
    :goto_0
    const-string v3, "FmRx/Activity"

    const-string v4, "end FmRadioActivity.onOptionsItemSelected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_1
    return v3

    .line 1213
    :pswitch_0
    iget-boolean v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    if-eqz v4, :cond_1

    .line 1214
    iput-boolean v6, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    .line 1215
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mediatek/fmradio/FmRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    .line 1216
    .local v0, "freq":I
    iget-boolean v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    invoke-direct {p0, v0, v4}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V

    goto :goto_1

    .line 1220
    .end local v0    # "freq":I
    :cond_1
    const/4 v1, 0x0

    .line 1222
    .local v1, "isPlaying":Z
    new-instance v4, Landroid/widget/PopupMenu;

    invoke-virtual {p0, v9}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 1223
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 1224
    .local v2, "menu":Landroid/view/Menu;
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    const v5, 0x7f0f0002

    invoke-virtual {v4, v5, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1225
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v4, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1226
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v4, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1228
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    if-eqz v4, :cond_7

    .line 1229
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v4}, Lcom/mediatek/fmradio/FmRadioService;->isPowerUp()Z

    move-result v1

    .line 1230
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v4}, Lcom/mediatek/fmradio/FmRadioService;->getRecorderState()I

    move-result v4

    iput v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordState:I

    .line 1231
    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1233
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v4}, Lcom/mediatek/fmradio/FmRadioService;->getRecordingMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1234
    invoke-interface {v2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1236
    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1237
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1238
    const/4 v4, 0x6

    iget v5, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordState:I

    if-ne v4, v5, :cond_2

    .line 1239
    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1259
    :goto_2
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v4}, Lcom/mediatek/fmradio/FmRadioService;->isInCountDownMode()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1260
    const v4, 0x7f0600af

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1261
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1262
    const v3, 0x7f0600b0

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1263
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1273
    :goto_3
    invoke-virtual {p0, v9}, Lcom/mediatek/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1274
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 1242
    :cond_2
    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1246
    :cond_3
    invoke-interface {v2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1248
    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1250
    const/4 v4, 0x5

    iget v5, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordState:I

    if-eq v4, v5, :cond_4

    .line 1251
    const/4 v4, -0x1

    iget v5, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordState:I

    if-ne v4, v5, :cond_5

    .line 1252
    :cond_4
    invoke-interface {v2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1253
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1255
    :cond_5
    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1265
    :cond_6
    const v4, 0x7f0600af

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1267
    const v4, 0x7f0600b0

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1268
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 1271
    :cond_7
    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    goto :goto_3

    .line 1211
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600aa
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1104
    const-string v0, "FmRx/Activity"

    const-string v1, "start FmRadioActivity.onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsActivityForeground:Z

    .line 1110
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsNeedShowSearchDlg:Z

    .line 1111
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->dismissSearchDialog()V

    .line 1112
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->dismissRenameDialog()V

    .line 1113
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->dismissSwitchFreqDialog()V

    .line 1114
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->dismissSleepTimeDialog()V

    .line 1118
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->dismissNoAntennaDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    .line 1122
    :cond_0
    const-string v0, "FmRx/Activity"

    const-string v1, "end FmRadioActivity.onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1124
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1198
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1061
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1062
    const-string v0, "FmRx/Activity"

    const-string v1, "FmRadioActivity.onResume start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsActivityForeground:Z

    .line 1064
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    .line 1065
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshStationUI(I)V

    .line 1066
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshRulerUI(I)V

    .line 1067
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I

    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    invoke-direct {p0, v0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V

    .line 1069
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    if-nez v0, :cond_0

    .line 1070
    const-string v0, "FmRx/Activity"

    const-string v1, "service has not bind finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    .line 1072
    invoke-direct {p0, v2}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshImageButton(Z)V

    .line 1073
    invoke-direct {p0, v2}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1080
    :goto_0
    return-void

    .line 1076
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->updateMenuStatus()V

    .line 1077
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->updateDialogStatus()V

    .line 1078
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->checkNoAntennaDialogInOnResume()V

    .line 1079
    const-string v0, "FmRx/Activity"

    const-string v1, "FmRadioActivity.onResume end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1542
    const/4 v1, 0x5

    .line 1543
    .local v1, "size":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 1544
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "isInRecordingMode"

    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1545
    const-string v2, "mPrevRecorderState"

    iget v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mPrevRecorderState:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1548
    const-string v2, "mIsNeedShowSearchDlg"

    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsNeedShowSearchDlg:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1549
    const-string v2, "mRecordState"

    iget v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mRecordState:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1550
    const-string v2, "mIsPlaying"

    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsPlaying:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1551
    const-string v2, "FmRx/Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onRetainNonConfigurationInstance() bundle:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1557
    const-string v0, "FmRx/Activity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1559
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1016
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1017
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1018
    const-string v1, "airplane_mode_on"

    .line 1017
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 1019
    const-string v0, "FmRx/Activity"

    const-string v1, "Error: Airplane mode is on, shut down fm"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const v0, 0x7f0900cc

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 1021
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->finish()V

    .line 1053
    :goto_0
    return-void

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    const-string v0, "FmRx/Activity"

    const-string v1, "Error: Fm is not allowed in call state."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const v0, 0x7f0900cd

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 1028
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->finish()V

    goto :goto_0

    .line 1032
    :cond_1
    invoke-static {v2}, Lcom/mediatek/fmradio/FmRadioService;->setActivityIsOnStop(Z)V

    .line 1033
    const-string v0, "FmRx/Activity"

    const-string v1, "FmRadioActivity.onStart start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    new-instance v0, Landroid/content/Intent;

    .line 1036
    const-class v1, Lcom/mediatek/fmradio/FmRadioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1035
    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1037
    const-string v0, "FmRx/Activity"

    const-string v1, "Error: Cannot start FM service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1041
    :cond_2
    iput-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsServiceStarted:Z

    .line 1042
    new-instance v0, Landroid/content/Intent;

    .line 1043
    const-class v1, Lcom/mediatek/fmradio/FmRadioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 1042
    invoke-virtual {p0, v0, v1, v3}, Lcom/mediatek/fmradio/FmRadioActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsServiceBinded:Z

    .line 1046
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsServiceBinded:Z

    if-nez v0, :cond_3

    .line 1047
    const-string v0, "FmRx/Activity"

    const-string v1, "Error: Cannot bind FM service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->finish()V

    goto :goto_0

    .line 1051
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->restoreConfiguration()V

    .line 1052
    const-string v0, "FmRx/Activity"

    const-string v1, "FmRadioActivity.onStart end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1132
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioService;->setActivityIsOnStop(Z)V

    .line 1133
    const-string v0, "FmRx/Activity"

    const-string v1, "start FmRadioActivity.onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsServiceBinded:Z

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1136
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsServiceBinded:Z

    .line 1138
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    .line 1139
    const-string v0, "FmRx/Activity"

    const-string v1, "end FmRadioActivity.onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1141
    return-void
.end method

.method public renameStationDone()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 1810
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 1811
    const-string v6, "Rename"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1810
    check-cast v1, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;

    .line 1812
    .local v1, "dialogFragment":Lcom/mediatek/fmradio/dialogs/RenameStationDialog;
    if-nez v1, :cond_1

    .line 1850
    :cond_0
    :goto_0
    return-void

    .line 1816
    :cond_1
    invoke-virtual {v1}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 1817
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1821
    const v5, 0x7f06005a

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1822
    .local v2, "editText":Landroid/widget/EditText;
    if-eqz v2, :cond_0

    .line 1826
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1829
    .local v4, "newName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ltz v5, :cond_0

    .line 1834
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mediatek/fmradio/FmRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v3

    .line 1835
    .local v3, "freq":I
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/mediatek/fmradio/FmRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1836
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    .line 1837
    const/4 v6, 0x2

    .line 1836
    invoke-static {v5, v4, v6, v3}, Lcom/mediatek/fmradio/FmRadioStation;->updateStationToDb(Landroid/content/Context;Ljava/lang/String;II)V

    .line 1848
    :goto_1
    invoke-direct {p0, v3}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshStationUI(I)V

    .line 1849
    iget-boolean v5, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    invoke-direct {p0, v3, v5}, Lcom/mediatek/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V

    goto :goto_0

    .line 1839
    :cond_2
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, v7}, Lcom/mediatek/fmradio/FmRadioStation;->isStationExist(Landroid/content/Context;II)Z

    move-result v5

    .line 1840
    if-eqz v5, :cond_3

    .line 1841
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v7, v3}, Lcom/mediatek/fmradio/FmRadioStation;->updateStationToDb(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_1

    .line 1844
    :cond_3
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v3, v7}, Lcom/mediatek/fmradio/FmRadioStation;->insertStationToDb(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_1
.end method

.method public showNoAntennaDialog()V
    .locals 3

    .prologue
    .line 1687
    invoke-static {}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->newInstance()Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;

    move-result-object v0

    .line 1688
    .local v0, "newFragment":Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "NoAntenna"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1689
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1690
    return-void
.end method

.method public sleepTimeBegin(I)V
    .locals 6
    .param p1, "minutes"    # I

    .prologue
    .line 1862
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sleepTimeBegin.minutes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mIsInCountDownMode:Z

    .line 1864
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const v2, 0xea60

    mul-int/2addr v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCountDownStopTime:J

    .line 1865
    const-string v0, "startCountDownTime"

    iget-wide v2, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mCountDownStopTime:J

    invoke-direct {p0, v0, v2, v3}, Lcom/mediatek/fmradio/FmRadioActivity;->editSharedPreferences(Ljava/lang/String;J)V

    .line 1866
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

    .line 1867
    int-to-long v2, p1

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    .line 1866
    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/fmradio/FmRadioService;->startCountingDownAsync(Ljava/lang/String;J)V

    .line 1868
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mSleepIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1869
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1870
    return-void
.end method

.method public switchFreqDone(I)V
    .locals 3
    .param p1, "frequency"    # I

    .prologue
    .line 1853
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "switchFreqDone.frequency="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;

    if-nez v0, :cond_0

    .line 1855
    const-string v0, "FmRx/Activity"

    const-string v1, "mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :goto_0
    return-void

    .line 1858
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioActivity;->tuneToStation(I)V

    goto :goto_0
.end method
