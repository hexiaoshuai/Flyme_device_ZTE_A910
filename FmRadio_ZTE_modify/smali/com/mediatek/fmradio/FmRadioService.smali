.class public Lcom/mediatek/fmradio/FmRadioService;
.super Landroid/app/Service;
.source "FmRadioService.java"

# interfaces
.implements Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;
.implements Lcom/mediatek/fmradio/ShakeListener$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;,
        Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;,
        Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;,
        Lcom/mediatek/fmradio/FmRadioService$Record;,
        Lcom/mediatek/fmradio/FmRadioService$SdcardListener;,
        Lcom/mediatek/fmradio/FmRadioService$ServiceBinder;
    }
.end annotation


# static fields
.field public static final ACTION_FROMATVSERVICE_POWERUP:Ljava/lang/String; = "com.mediatek.app.mtv.POWER_ON"

.field public static final ACTION_TOATVSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.app.mtv.ACTION_REQUEST_SHUTDOWN"

.field public static final ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

.field public static final ACTION_TOFMSERVICE_HEADSET_TIMEUP:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_HEADSET_TIMEUP"

.field public static final ACTION_TOFMSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

.field public static final ACTION_TOFMSERVICE_SAVEFAVOR:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SAVEFAVOR"

.field public static final ACTION_TOFMSERVICE_SEEKNEXT:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKNEXT"

.field public static final ACTION_TOFMSERVICE_SEEKPREV:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKPREV"

.field public static final ACTION_TOFMSERVICE_SHOWTOAST:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SHOWTOAST"

.field public static final ACTION_TOFMSERVICE_STARTSCAN:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STARTSCAN"

.field public static final ACTION_TOFMSERVICE_STOPSCAN:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STOPSCAN"

.field public static final ACTION_TOFMSERVICE_TUNESTATION:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_TUNESTATION"

.field public static final ACTION_TOFMTXSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.FMTransmitter.FMTransmitterService.ACTION_TOFMTXSERVICE_POWERDOWN"

.field public static final ACTION_TOMUSICSERVICE_POWERDOWN:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field private static final CMDPAUSE:Ljava/lang/String; = "pause"

.field private static final CURRENT_RX_ON:I = 0x0

.field private static final CURRENT_TX_ON:I = 0x1

.field private static final CURRENT_TX_SCAN:I = 0x2

.field private static final FM_FREQUENCY:Ljava/lang/String; = "frequency"

.field private static final FOR_PROPRIETARY:I = 0x1

.field private static final HEADSET_PLUG_IN:I = 0x1

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final OPTION:Ljava/lang/String; = "option"

.field private static final RDS_EVENT_AF:I = 0x80

.field private static final RDS_EVENT_LAST_RADIOTEXT:I = 0x40

.field private static final RDS_EVENT_PROGRAMNAME:I = 0x8

.field private static final RECODING_FILE_NAME:Ljava/lang/String; = "name"

.field private static final SECONDS_TO_WAIT_BEFORE_SHUT_FM_WHEN_HEADSET_PLUG_OUT:J = 0x3cL

.field private static final SHORT_ANNTENNA_SUPPORT:Z

.field private static final SOUND_POWER_DOWN_MSG:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final TAG:Ljava/lang/String; = "FmRx/Service"

.field private static sActivityIsOnStop:Z

.field private static sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

.field private static sRecordingSdcard:Ljava/lang/String;


# instance fields
.field private lastShakeTime:J

.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBinder:Landroid/os/IBinder;

.field private mBroadcastReceiver:Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentStation:I

.field private mFmPlayer:Landroid/media/MediaPlayer;

.field mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

.field private mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

.field private mForcedUseForMedia:I

.field private mIsAFEnabled:Z

.field private mIsAudioFocusHeld:Z

.field private mIsDeviceOpen:Z

.field private mIsInCountDownMode:Z

.field private mIsInRecordingMode:Z

.field private mIsMakePowerDown:Z

.field private mIsNativeScanning:Z

.field private mIsNativeSeeking:Z

.field private mIsPSRTEnabled:Z

.field private mIsPowerUp:Z

.field private mIsPowerUping:Z

.field private mIsRdsThreadExit:Z

.field private mIsScanning:Z

.field private mIsSeeking:Z

.field private mIsServiceInited:Z

.field private mIsSpeakerUsed:Z

.field private mIsSpeakerUsed_Before_LOSS_TRANSIENT:Z

.field private mIsStopScanCalled:Z

.field private mLRTextString:Ljava/lang/String;

.field private mModifiedRecordingName:Ljava/lang/String;

.field private mPSString:Ljava/lang/String;

.field private mPausedByTransientLossOfFocus:Z

.field private final mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mRdsThread:Ljava/lang/Thread;

.field private mRecordState:I

.field private mRecorderErrorType:I

.field private mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/fmradio/FmRadioService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteviews:Landroid/widget/RemoteViews;

.field private mSdcardListener:Landroid/content/BroadcastReceiver;

.field private mSdcardStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mStopRecordingLock:Ljava/lang/Object;

.field private mValueHeadSetPlug:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioUtils;->isFmShortAntennaSupport()Z

    move-result v0

    .line 137
    sput-boolean v0, Lcom/mediatek/fmradio/FmRadioService;->SHORT_ANNTENNA_SUPPORT:Z

    .line 171
    sput-object v1, Lcom/mediatek/fmradio/FmRadioService;->sRecordingSdcard:Ljava/lang/String;

    .line 248
    sput-object v1, Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    .line 250
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/fmradio/FmRadioService;->sActivityIsOnStop:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 155
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    .line 156
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardListener:Landroid/content/BroadcastReceiver;

    .line 157
    iput v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecordState:I

    .line 158
    iput v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecorderErrorType:I

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardStateMap:Ljava/util/HashMap;

    .line 165
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mModifiedRecordingName:Ljava/lang/String;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    .line 169
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsInRecordingMode:Z

    .line 173
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsInCountDownMode:Z

    .line 177
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mPSString:Ljava/lang/String;

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mLRTextString:Ljava/lang/String;

    .line 181
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPSRTEnabled:Z

    .line 183
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsAFEnabled:Z

    .line 185
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRdsThread:Ljava/lang/Thread;

    .line 187
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsRdsThreadExit:Z

    .line 191
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeScanning:Z

    .line 193
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsScanning:Z

    .line 195
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z

    .line 197
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSeeking:Z

    .line 199
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsStopScanCalled:Z

    .line 201
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed:Z

    .line 203
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsDeviceOpen:Z

    .line 205
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    .line 207
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    .line 209
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsServiceInited:Z

    .line 212
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsMakePowerDown:Z

    .line 214
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed_Before_LOSS_TRANSIENT:Z

    .line 217
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    .line 218
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 219
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mActivityManager:Landroid/app/ActivityManager;

    .line 220
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    .line 221
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 223
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsAudioFocusHeld:Z

    .line 225
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mPausedByTransientLossOfFocus:Z

    .line 226
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    .line 228
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I

    .line 230
    new-instance v0, Lcom/mediatek/fmradio/FmRadioService$ServiceBinder;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FmRadioService$ServiceBinder;-><init>(Lcom/mediatek/fmradio/FmRadioService;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mBinder:Landroid/os/IBinder;

    .line 232
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mBroadcastReceiver:Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;

    .line 246
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mStopRecordingLock:Ljava/lang/Object;

    .line 251
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    .line 253
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/fmradio/FmRadioService;->lastShakeTime:J

    .line 2222
    new-instance v0, Lcom/mediatek/fmradio/FmRadioService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FmRadioService$1;-><init>(Lcom/mediatek/fmradio/FmRadioService;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2309
    new-instance v0, Lcom/mediatek/fmradio/FmRadioService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FmRadioService$2;-><init>(Lcom/mediatek/fmradio/FmRadioService;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 89
    return-void
.end method

.method static synthetic access$0(Lcom/mediatek/fmradio/FmRadioService;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mediatek/fmradio/FmRadioService;Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$10(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed_Before_LOSS_TRANSIENT:Z

    return v0
.end method

.method static synthetic access$11(Lcom/mediatek/fmradio/FmRadioService;I)V
    .locals 0

    .prologue
    .line 2370
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->updateAudioFocusAync(I)V

    return-void
.end method

.method static synthetic access$12(Lcom/mediatek/fmradio/FmRadioService;)Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    return-object v0
.end method

.method static synthetic access$13(Lcom/mediatek/fmradio/FmRadioService;I)V
    .locals 0

    .prologue
    .line 228
    iput p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I

    return-void
.end method

.method static synthetic access$14(Lcom/mediatek/fmradio/FmRadioService;)I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I

    return v0
.end method

.method static synthetic access$15()Z
    .locals 1

    .prologue
    .line 137
    sget-boolean v0, Lcom/mediatek/fmradio/FmRadioService;->SHORT_ANNTENNA_SUPPORT:Z

    return v0
.end method

.method static synthetic access$16(Lcom/mediatek/fmradio/FmRadioService;I)I
    .locals 1

    .prologue
    .line 1326
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->switchAntenna(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$17(Lcom/mediatek/fmradio/FmRadioService;I)V
    .locals 0

    .prologue
    .line 147
    iput p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mForcedUseForMedia:I

    return-void
.end method

.method static synthetic access$18(Lcom/mediatek/fmradio/FmRadioService;Z)V
    .locals 0

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed:Z

    return-void
.end method

.method static synthetic access$19(Lcom/mediatek/fmradio/FmRadioService;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 2506
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2(Lcom/mediatek/fmradio/FmRadioService;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$20(Lcom/mediatek/fmradio/FmRadioService;)V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->powerUpAutoIfNeed()V

    return-void
.end method

.method static synthetic access$21(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsServiceInited:Z

    return v0
.end method

.method static synthetic access$22(Lcom/mediatek/fmradio/FmRadioService;)I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    return v0
.end method

.method static synthetic access$23(Lcom/mediatek/fmradio/FmRadioService;I)V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->handleBtConnectState(I)V

    return-void
.end method

.method static synthetic access$24(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z

    return v0
.end method

.method static synthetic access$25(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsScanning:Z

    return v0
.end method

.method static synthetic access$26(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    return v0
.end method

.method static synthetic access$27()Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    return-object v0
.end method

.method static synthetic access$28(Lcom/mediatek/fmradio/FmRadioService;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 2077
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->updateSdcardStateMap(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$29(Lcom/mediatek/fmradio/FmRadioService;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 2958
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->handlePowerUp(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    return v0
.end method

.method static synthetic access$30(Lcom/mediatek/fmradio/FmRadioService;)V
    .locals 0

    .prologue
    .line 2942
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->handlePowerDown()V

    return-void
.end method

.method static synthetic access$31(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 831
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->powerDown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$32(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->closeDevice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$33(Lcom/mediatek/fmradio/FmRadioService;)I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecordState:I

    return v0
.end method

.method static synthetic access$34(Lcom/mediatek/fmradio/FmRadioService;F)Z
    .locals 1

    .prologue
    .line 941
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->tuneStation(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$35(Lcom/mediatek/fmradio/FmRadioService;Z)V
    .locals 0

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSeeking:Z

    return-void
.end method

.method static synthetic access$36(Lcom/mediatek/fmradio/FmRadioService;FZ)F
    .locals 1

    .prologue
    .line 1005
    invoke-direct {p0, p1, p2}, Lcom/mediatek/fmradio/FmRadioService;->seekStation(FZ)F

    move-result v0

    return v0
.end method

.method static synthetic access$37(Lcom/mediatek/fmradio/FmRadioService;Z)V
    .locals 0

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsScanning:Z

    return-void
.end method

.method static synthetic access$38(Lcom/mediatek/fmradio/FmRadioService;F)Z
    .locals 1

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->powerUpFm(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$39(Lcom/mediatek/fmradio/FmRadioService;)[I
    .locals 1

    .prologue
    .line 1031
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->startScan()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed:Z

    return v0
.end method

.method static synthetic access$40(Lcom/mediatek/fmradio/FmRadioService;[I)[I
    .locals 1

    .prologue
    .line 2572
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->insertSearchedStation([I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$41(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsAudioFocusHeld:Z

    return v0
.end method

.method static synthetic access$42(Lcom/mediatek/fmradio/FmRadioService;I)V
    .locals 0

    .prologue
    .line 2387
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->updateAudioFocus(I)V

    return-void
.end method

.method static synthetic access$43(Lcom/mediatek/fmradio/FmRadioService;Z)I
    .locals 1

    .prologue
    .line 1130
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->setRds(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$44(Lcom/mediatek/fmradio/FmRadioService;)I
    .locals 1

    .prologue
    .line 1177
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->activeAF()I

    move-result v0

    return v0
.end method

.method static synthetic access$45(Lcom/mediatek/fmradio/FmRadioService;)V
    .locals 0

    .prologue
    .line 1345
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->startRecording()V

    return-void
.end method

.method static synthetic access$46(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 1398
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->stopRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$47(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 1421
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->startPlayback()Z

    move-result v0

    return v0
.end method

.method static synthetic access$48(Lcom/mediatek/fmradio/FmRadioService;)V
    .locals 0

    .prologue
    .line 1453
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->stopPlayback()V

    return-void
.end method

.method static synthetic access$49(Lcom/mediatek/fmradio/FmRadioService;Z)V
    .locals 0

    .prologue
    .line 1525
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->setRecordingMode(Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/mediatek/fmradio/FmRadioService;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$50(Lcom/mediatek/fmradio/FmRadioService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1481
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->saveRecording(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$51(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsRdsThreadExit:Z

    return v0
.end method

.method static synthetic access$52(Lcom/mediatek/fmradio/FmRadioService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1882
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->setPS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$53(Lcom/mediatek/fmradio/FmRadioService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1901
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->setLRText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$54(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSeeking:Z

    return v0
.end method

.method static synthetic access$6(Lcom/mediatek/fmradio/FmRadioService;Z)I
    .locals 1

    .prologue
    .line 1208
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/mediatek/fmradio/FmRadioService;)V
    .locals 0

    .prologue
    .line 1716
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->exitFm()V

    return-void
.end method

.method static synthetic access$8(Lcom/mediatek/fmradio/FmRadioService;Z)V
    .locals 0

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed_Before_LOSS_TRANSIENT:Z

    return-void
.end method

.method static synthetic access$9(Lcom/mediatek/fmradio/FmRadioService;I)V
    .locals 0

    .prologue
    .line 2204
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->stopFmFocusLoss(I)V

    return-void
.end method

.method private activeAF()I
    .locals 4

    .prologue
    .line 1178
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 1179
    const-string v1, "FmRx/Service"

    const-string v2, "FM is not powered up"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    const/4 v0, -0x1

    .line 1185
    :goto_0
    return v0

    .line 1183
    :cond_0
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->activeAf()S

    move-result v0

    .line 1184
    .local v0, "frequency":I
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FmRadioService.activeAF: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private changeToEarphoneMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 534
    invoke-virtual {p0, v3}, Lcom/mediatek/fmradio/FmRadioService;->setSpeakerPhoneOn(Z)V

    .line 536
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 537
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "callback_flag"

    .line 538
    const v2, 0x101000

    .line 537
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 540
    const-string v1, "key_is_speaker_mode"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 541
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 542
    return-void
.end method

.method private checkAfterPlayback()V
    .locals 2

    .prologue
    .line 2178
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->isHeadSetIn()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mediatek/fmradio/FmRadioService;->SHORT_ANNTENNA_SUPPORT:Z

    if-eqz v0, :cond_2

    .line 2180
    :cond_0
    const-string v0, "FmRx/Service"

    const-string v1, "checkAfterPlayback:eaphone is in,need resume fm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_1

    .line 2182
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->resumeFmAudio()V

    .line 2183
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I

    .line 2193
    :goto_0
    return-void

    .line 2185
    :cond_1
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->powerUpAsync(F)V

    goto :goto_0

    .line 2189
    :cond_2
    const-string v0, "FmRx/Service"

    .line 2190
    const-string v1, "checkAfterPlayback:earphone is out, need show plug in earphone tips"

    .line 2189
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->switchAntennaAsync(I)V

    goto :goto_0
.end method

.method private closeDevice()Z
    .locals 4

    .prologue
    .line 651
    const-string v1, "FmRx/Service"

    const-string v2, ">>> FmRadioService.closeDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, "isDeviceClose":Z
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsDeviceOpen:Z

    if-eqz v1, :cond_0

    .line 654
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->closeDev()Z

    move-result v0

    .line 655
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsDeviceOpen:Z

    .line 657
    :cond_0
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< FmRadioService.closeDevice: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 661
    return v0

    .line 655
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private enableFmAudio(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1922
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>> FmRadioService.enableFmAudio: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_1

    .line 1924
    :cond_0
    const-string v1, "FmRx/Service"

    const-string v2, "mFMPlayer is null in Service.enableFmAudio"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :goto_0
    return-void

    .line 1929
    :cond_1
    if-nez p1, :cond_4

    .line 1930
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1931
    const-string v1, "FmRx/Service"

    const-string v2, "warning: FM audio is already disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1945
    :catch_0
    move-exception v0

    .line 1946
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "FmRx/Service"

    const-string v2, "Exception: Cannot call MediaPlayer isPlaying."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1950
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 1951
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioUtils;->isFmSuspendSupport()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1952
    const-string v1, "FmRx/Service"

    const-string v2, "support FM suspend"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->startWithoutWakelock()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1963
    :goto_1
    const-string v1, "FmRx/Service"

    const-string v2, "Start FM audio."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    const-string v1, "FmRx/Service"

    const-string v2, "<<< FmRadioService.enableFmAudio"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1935
    :cond_3
    :try_start_2
    const-string v1, "FmRx/Service"

    const-string v2, "call MediaPlayer.stop()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 1937
    const-string v1, "FmRx/Service"

    const-string v2, "stop FM audio."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1941
    :cond_4
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1942
    const-string v1, "FmRx/Service"

    const-string v2, "warning: FM audio is already enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1955
    :cond_5
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1957
    :catch_1
    move-exception v0

    .line 1958
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "FmRx/Service"

    const-string v2, "Exception: Cannot call MediaPlayer prepare."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1959
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1960
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "FmRx/Service"

    const-string v2, "Exception: Cannot call MediaPlayer prepare."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private exitFm()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 1717
    const-string v1, "FmRx/Service"

    const-string v2, "service.exitFm start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsAudioFocusHeld:Z

    .line 1720
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v1, :cond_1

    .line 1721
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mStopRecordingLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1722
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRecorder;->getState()I

    move-result v0

    .line 1723
    .local v0, "fmState":I
    const/4 v1, 0x7

    if-ne v1, v0, :cond_4

    .line 1724
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRecorder;->stopPlayback()V

    .line 1725
    const-string v1, "FmRx/Service"

    const-string v3, "Stop playback FMRecorder."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/mediatek/fmradio/FmRecorder;->addCurrentRecordingToDb(Landroid/content/Context;)V

    .line 1721
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1743
    .end local v0    # "fmState":I
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeScanning:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z

    if-eqz v1, :cond_3

    .line 1744
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->stopScan()Z

    .line 1747
    :cond_3
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1748
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioService;->stopCountingDownAsync(Ljava/lang/String;)V

    .line 1749
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_HEADSET_TIMEUP"

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioService;->stopCountingDownAsync(Ljava/lang/String;)V

    .line 1750
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v1, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1751
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v1, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1752
    const-string v1, "FmRx/Service"

    const-string v2, "service.exitFm end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    return-void

    .line 1726
    .restart local v0    # "fmState":I
    :cond_4
    const/4 v1, 0x6

    if-ne v1, v0, :cond_0

    .line 1727
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v1, p0}, Lcom/mediatek/fmradio/FmRecorder;->stopRecording(Landroid/content/Context;)V

    .line 1728
    const-string v1, "FmRx/Service"

    const-string v3, "stop Recording."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1721
    .end local v0    # "fmState":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getRecordingSdcard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3048
    sget-object v0, Lcom/mediatek/fmradio/FmRadioService;->sRecordingSdcard:Ljava/lang/String;

    return-object v0
.end method

.method private getRemoteViews()Landroid/widget/RemoteViews;
    .locals 9

    .prologue
    const v8, 0x7f0600a3

    const v7, 0x7f0600a4

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1987
    const-string v2, "FmRx/Service"

    const-string v3, "FmRadioService.getRemoteViews"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    if-nez v2, :cond_0

    .line 1989
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030045

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    .line 1991
    :cond_0
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    const v3, 0x7f060011

    .line 1992
    const v4, 0x7f0201de

    .line 1991
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1993
    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-eqz v2, :cond_1

    .line 1994
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    .line 1995
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FM "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-static {v4}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1994
    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2002
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKPREV"

    invoke-direct {v0, v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2003
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2005
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    const v3, 0x7f0600a7

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2008
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKNEXT"

    invoke-direct {v0, v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2009
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2011
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    const v3, 0x7f0600a5

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2014
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

    invoke-direct {v0, v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2015
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2017
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    const v3, 0x7f0600a6

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2020
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SAVEFAVOR"

    invoke-direct {v0, v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2021
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2023
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v7, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2026
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-static {v2, v3}, Lcom/mediatek/fmradio/FmRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2027
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    .line 2028
    const v3, 0x7f0201e7

    .line 2027
    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2033
    :goto_1
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    return-object v2

    .line 1997
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    const-string v3, ""

    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 2030
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    .line 2031
    const v3, 0x7f0201e6

    .line 2030
    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private handleBtConnectState(I)V
    .locals 2
    .param p1, "connectState"    # I

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 531
    :goto_0
    return-void

    .line 514
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 527
    :pswitch_0
    const-string v0, "FmRx/Service"

    const-string v1, "invalid fm over bt connect state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 518
    :pswitch_1
    const-string v0, "FmRx/Service"

    const-string v1, "handleBtConnectState bt connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->changeToEarphoneMode()V

    goto :goto_0

    .line 523
    :pswitch_2
    const-string v0, "FmRx/Service"

    const-string v1, "handleBtConnectState bt disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->changeToEarphoneMode()V

    goto :goto_0

    .line 514
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handlePowerDown()V
    .locals 4

    .prologue
    .line 2944
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->powerDown()Z

    move-result v1

    .line 2945
    .local v1, "isPowerdown":Z
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 2946
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "callback_flag"

    .line 2947
    const/16 v3, 0xa

    .line 2946
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2948
    const-string v2, "key_is_power_down"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2949
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 2950
    return-void
.end method

.method private handlePowerUp(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 2959
    const/4 v3, 0x0

    .line 2960
    .local v3, "isPowerup":Z
    const/4 v4, 0x1

    .line 2961
    .local v4, "isSwitch":Z
    const-string v5, "FmRx/Service"

    const-string v6, "service handler power up start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mediatek/fmradio/FmRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v2

    .line 2963
    .local v2, "iCurrentStation":I
    invoke-static {v2}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v0

    .line 2965
    .local v0, "curFrequency":F
    sget-boolean v5, Lcom/mediatek/fmradio/FmRadioService;->SHORT_ANNTENNA_SUPPORT:Z

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->isAntennaAvailable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2966
    const-string v5, "FmRx/Service"

    const-string v6, "call back to activity, earphone is not ready"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    iput-boolean v8, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    .line 2973
    const-string v5, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_HEADSET_TIMEUP"

    .line 2974
    const-wide/16 v6, 0x3c

    .line 2973
    invoke-virtual {p0, v5, v6, v7}, Lcom/mediatek/fmradio/FmRadioService;->startCountingDownAsync(Ljava/lang/String;J)V

    .line 2976
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "bundle":Landroid/os/Bundle;
    invoke-direct {p1, v9}, Landroid/os/Bundle;-><init>(I)V

    .line 2977
    .restart local p1    # "bundle":Landroid/os/Bundle;
    const-string v5, "callback_flag"

    .line 2978
    const/4 v6, 0x4

    .line 2977
    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2979
    const-string v5, "key_is_switch_anntenna"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2980
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 3002
    :goto_0
    return-void

    .line 2984
    :cond_0
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->powerUpFm(F)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2985
    iget-boolean v5, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-eqz v5, :cond_2

    .line 2986
    const/4 v3, 0x1

    .line 2988
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/fmradio/FmRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v1

    .line 2989
    .local v1, "currentStation":I
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v5

    invoke-direct {p0, v5}, Lcom/mediatek/fmradio/FmRadioService;->startPlayFm(F)Z

    .line 2993
    .end local v1    # "currentStation":I
    :goto_1
    iput-boolean v8, p0, Lcom/mediatek/fmradio/FmRadioService;->mPausedByTransientLossOfFocus:Z

    .line 2995
    :cond_1
    iput-boolean v8, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    .line 2996
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "bundle":Landroid/os/Bundle;
    invoke-direct {p1, v9}, Landroid/os/Bundle;-><init>(I)V

    .line 2997
    .restart local p1    # "bundle":Landroid/os/Bundle;
    const-string v5, "callback_flag"

    .line 2998
    const/16 v6, 0x9

    .line 2997
    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2999
    const-string v5, "key_is_power_up"

    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3000
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 3001
    const-string v5, "FmRx/Service"

    const-string v6, "service handler power up end"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2991
    :cond_2
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->startPlayFm(F)Z

    move-result v3

    goto :goto_1
.end method

.method private initFmPlayer()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1628
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    .line 1629
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioUtils;->isFmSuspendSupport()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1630
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0, v1}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1633
    :cond_0
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1635
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    const-string v4, "THIRDPARTY://MEDIAPLAYER_PLAYERTYPE_FM"

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1651
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1652
    :goto_0
    return v1

    .line 1636
    :catch_0
    move-exception v0

    .line 1638
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setDataSource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1639
    goto :goto_0

    .line 1640
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1642
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setDataSource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1643
    goto :goto_0

    .line 1644
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1645
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v1, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setDataSource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1646
    goto :goto_0

    .line 1647
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 1648
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setDataSource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1649
    goto :goto_0
.end method

.method private insertSearchedStation([I)[I
    .locals 6
    .param p1, "stations"    # [I

    .prologue
    const/4 v5, 0x0

    .line 2573
    const-string v2, "FmRx/Service"

    .line 2574
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insertSearchedStation.firstValidChannel:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2575
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2574
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2573
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    .line 2577
    .local v0, "firstValidStation":I
    const/4 v1, 0x0

    .line 2578
    .local v1, "stationNum":I
    if-eqz p1, :cond_0

    .line 2579
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 2580
    aget v0, p1, v5

    .line 2581
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->updateDBInLocation([I)I

    move-result v1

    .line 2584
    :cond_0
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insertSearchedStation.firstValidStation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2585
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",stationNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2584
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v5

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2
.end method

.method private isHeadSetIn()Z
    .locals 1

    .prologue
    .line 2201
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSdcardReady(Ljava/lang/String;)Z
    .locals 3
    .param p1, "sdcardPath"    # Ljava/lang/String;

    .prologue
    .line 1375
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>> isSdcardReady: sdcardPath is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1376
    const-string v2, ", mSdcardStateMap is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardStateMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1375
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardStateMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardStateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardStateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1380
    const-string v0, "FmRx/Service"

    const-string v1, "<<< isSdcardReady: return false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    const/4 v0, 0x0

    .line 1385
    :goto_0
    return v0

    .line 1384
    :cond_0
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<<< isSdcardReady: mSdcardStateMap:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardStateMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSpeakerPhoneOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 628
    iget v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mForcedUseForMedia:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyActivityStateChanged(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2507
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2508
    const-string v3, "FmRx/Service"

    .line 2509
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "notifyActivityStatusChanged:clients = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2508
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2511
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2512
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/fmradio/FmRadioService$Record;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2510
    monitor-exit v4

    .line 2526
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/fmradio/FmRadioService$Record;>;"
    :cond_0
    :goto_1
    return-void

    .line 2513
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/fmradio/FmRadioService$Record;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/fmradio/FmRadioService$Record;

    .line 2515
    .local v2, "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    iget-object v1, v2, Lcom/mediatek/fmradio/FmRadioService$Record;->mCallback:Lcom/mediatek/fmradio/FmRadioListener;

    .line 2517
    .local v1, "listener":Lcom/mediatek/fmradio/FmRadioListener;
    if-nez v1, :cond_2

    .line 2518
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2519
    monitor-exit v4

    goto :goto_1

    .line 2510
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/fmradio/FmRadioService$Record;>;"
    .end local v1    # "listener":Lcom/mediatek/fmradio/FmRadioListener;
    .end local v2    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2522
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/fmradio/FmRadioService$Record;>;"
    .restart local v1    # "listener":Lcom/mediatek/fmradio/FmRadioListener;
    .restart local v2    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    :cond_2
    :try_start_1
    invoke-interface {v1, p1}, Lcom/mediatek/fmradio/FmRadioListener;->onCallBack(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private openDevice()Z
    .locals 3

    .prologue
    .line 637
    const-string v0, "FmRx/Service"

    const-string v1, ">>> FmRadioService.openDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsDeviceOpen:Z

    if-nez v0, :cond_0

    .line 639
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->openDev()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsDeviceOpen:Z

    .line 641
    :cond_0
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<<< FmRadioService.openDevice: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsDeviceOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsDeviceOpen:Z

    return v0
.end method

.method private powerDown()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 832
    const-string v4, "FmRx/Service"

    const-string v5, ">>> FmRadioService.powerDown"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-boolean v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v4, :cond_0

    .line 834
    const-string v3, "FmRx/Service"

    const-string v4, "Error: device is already power down."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :goto_0
    return v2

    .line 838
    :cond_0
    invoke-direct {p0, v2}, Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I

    .line 839
    invoke-direct {p0, v3}, Lcom/mediatek/fmradio/FmRadioService;->setRds(Z)I

    .line 840
    invoke-direct {p0, v3}, Lcom/mediatek/fmradio/FmRadioService;->enableFmAudio(Z)V

    .line 844
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioNative;->getFmStatus(I)Z

    move-result v0

    .line 845
    .local v0, "isRxOn":Z
    const/4 v1, 0x0

    .line 846
    .local v1, "powerDownSuccess":Z
    if-eqz v0, :cond_3

    .line 847
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioNative;->powerDown(I)Z

    move-result v1

    .line 852
    :goto_1
    if-nez v1, :cond_4

    .line 853
    const-string v4, "FmRx/Service"

    const-string v5, "Error: powerdown failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsMakePowerDown:Z

    .line 857
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->isRdsSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 858
    const-string v2, "FmRx/Service"

    const-string v4, "RDS is supported. Stop the RDS thread."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->stopRdsThread()V

    .line 861
    :cond_1
    iput-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    .line 862
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 863
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 864
    const-string v2, "FmRx/Service"

    const-string v4, "release wake lock"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->removeNotification()V

    .line 868
    const-string v2, "FmRx/Service"

    const-string v4, "powerdown failed.release some resource."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 869
    goto :goto_0

    .line 849
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 872
    :cond_4
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsMakePowerDown:Z

    .line 874
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->isRdsSupported()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 875
    const-string v4, "FmRx/Service"

    const-string v5, "RDS is supported. Stop the RDS thread."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->stopRdsThread()V

    .line 878
    :cond_5
    iput-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    .line 880
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 881
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 882
    const-string v3, "FmRx/Service"

    const-string v4, "release wake lock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->removeNotification()V

    .line 887
    const-string v3, "FmRx/Service"

    const-string v4, "<<< FmRadioService.powerDown: true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private powerUpAutoIfNeed()V
    .locals 3

    .prologue
    .line 493
    iget v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I

    if-nez v1, :cond_0

    .line 494
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/mediatek/fmradio/FmRadioService;->sActivityIsOnStop:Z

    if-eqz v1, :cond_0

    .line 495
    const-string v1, "FmRx/Service"

    const-string v2, "Power up for start app then quick click power/home"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    .line 498
    .local v0, "iCurrentStation":I
    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioService;->powerUpAsync(F)V

    .line 501
    .end local v0    # "iCurrentStation":I
    :cond_0
    return-void
.end method

.method private powerUpFm(F)Z
    .locals 5
    .param p1, "frequency"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 695
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ">>> FmRadioService.powerUp: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-eqz v2, :cond_0

    .line 697
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< FmRadioService.powerUp: already power up:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 698
    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 697
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :goto_0
    return v0

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->requestAudioFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 704
    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsMakePowerDown:Z

    .line 705
    const-string v0, "FmRx/Service"

    const-string v2, "FM can\'t get audio focus when power up"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->sendBroadcastToStopOtherAPP()V

    move v0, v1

    .line 707
    goto :goto_0

    .line 712
    :cond_1
    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsDeviceOpen:Z

    if-nez v2, :cond_2

    .line 713
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->openDevice()Z

    .line 716
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->waitIfTxSearching()V

    .line 717
    const-string v2, "FmRx/Service"

    const-string v3, "set CURRENT_RX_ON true, CURRENT_TX_ON false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-static {v1, v0}, Lcom/mediatek/fmradio/FmRadioNative;->setFmStatus(IZ)Z

    .line 719
    invoke-static {v0, v1}, Lcom/mediatek/fmradio/FmRadioNative;->setFmStatus(IZ)Z

    .line 720
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->sendBroadcastToStopOtherAPP()V

    .line 722
    const-string v2, "FmRx/Service"

    const-string v3, "service native power up start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioNative;->powerUp(F)Z

    move-result v2

    if-nez v2, :cond_3

    .line 724
    const-string v0, "FmRx/Service"

    const-string v2, "Error: powerup failed."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 725
    goto :goto_0

    .line 727
    :cond_3
    const-string v2, "FmRx/Service"

    const-string v3, "service native power up end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    .line 730
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I

    .line 733
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsMakePowerDown:Z

    .line 734
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<<< FmRadioService.powerUp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    goto :goto_0
.end method

.method public static registerExitListener(Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    .prologue
    .line 3071
    sput-object p0, Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    .line 3072
    return-void
.end method

.method private registerFmBroadcastReceiver()V
    .locals 3

    .prologue
    .line 1656
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1657
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1658
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1659
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1660
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1661
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1662
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1663
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1664
    const-string v1, "com.mediatek.app.mtv.POWER_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1665
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STARTSCAN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1666
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STOPSCAN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1667
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_TUNESTATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1668
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKPREV"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1669
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKNEXT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1670
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SAVEFAVOR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1671
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SHOWTOAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1672
    const-string v1, "com.mediatek.FMRadio.FmRadioWidget.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1673
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1674
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1675
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_HEADSET_TIMEUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1676
    new-instance v1, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;-><init>(Lcom/mediatek/fmradio/FmRadioService;Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;)V

    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mBroadcastReceiver:Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;

    .line 1677
    const-string v1, "FmRx/Service"

    const-string v2, "Register broadcast receiver."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mBroadcastReceiver:Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/fmradio/FmRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1679
    return-void
.end method

.method private registerSdcardReceiver()V
    .locals 3

    .prologue
    .line 2058
    const-string v1, "FmRx/Service"

    const-string v2, "registerSdcardReceiver >>> "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardListener:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 2060
    new-instance v1, Lcom/mediatek/fmradio/FmRadioService$SdcardListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/fmradio/FmRadioService$SdcardListener;-><init>(Lcom/mediatek/fmradio/FmRadioService;Lcom/mediatek/fmradio/FmRadioService$SdcardListener;)V

    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardListener:Landroid/content/BroadcastReceiver;

    .line 2062
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2063
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2064
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2065
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2066
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2067
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/fmradio/FmRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2068
    const-string v1, "FmRx/Service"

    const-string v2, "registerSdcardReceiver <<< "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    return-void
.end method

.method private remove(I)V
    .locals 4
    .param p1, "hashCode"    # I

    .prologue
    .line 2545
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2546
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2547
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/fmradio/FmRadioService$Record;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2545
    monitor-exit v3

    .line 2554
    return-void

    .line 2548
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/fmradio/FmRadioService$Record;

    .line 2549
    .local v1, "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    iget v2, v1, Lcom/mediatek/fmradio/FmRadioService$Record;->mHashCode:I

    if-ne v2, p1, :cond_0

    .line 2550
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2545
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/fmradio/FmRadioService$Record;>;"
    .end local v1    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeNotification()V
    .locals 2

    .prologue
    .line 2040
    const-string v0, "FmRx/Service"

    const-string v1, "FmRadioService.removeNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->stopForeground(Z)V

    .line 2042
    return-void
.end method

.method private resumeFmAudio()V
    .locals 2

    .prologue
    .line 1286
    const-string v0, "FmRx/Service"

    const-string v1, "FmRadioService.resumeFmAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsAudioFocusHeld:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_0

    .line 1291
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->enableFmAudio(Z)V

    .line 1293
    :cond_0
    return-void
.end method

.method private saveRecording(Ljava/lang/String;)V
    .locals 2
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 1482
    const-string v0, "FmRx/Service"

    const-string v1, ">>> saveRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v0, :cond_1

    .line 1484
    if-eqz p1, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0, p0, p1}, Lcom/mediatek/fmradio/FmRecorder;->saveRecording(Landroid/content/Context;Ljava/lang/String;)V

    .line 1486
    const-string v0, "FmRx/Service"

    const-string v1, "<<< saveRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :goto_0
    return-void

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRecorder;->discardRecording()V

    .line 1491
    :cond_1
    const-string v0, "FmRx/Service"

    const-string v1, "<<< saveRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private seekStation(FZ)F
    .locals 5
    .param p1, "frequency"    # F
    .param p2, "isUp"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1006
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>> FmRadioService.seek: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 1008
    const-string v1, "FmRx/Service"

    const-string v2, "FM is not powered up"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const/high16 v0, -0x40800000    # -1.0f

    .line 1020
    :goto_0
    return v0

    .line 1012
    :cond_0
    invoke-direct {p0, v4}, Lcom/mediatek/fmradio/FmRadioService;->setRds(Z)I

    .line 1013
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z

    .line 1014
    invoke-static {p1, p2}, Lcom/mediatek/fmradio/FmRadioNative;->seek(FZ)F

    move-result v0

    .line 1015
    .local v0, "fRet":F
    iput-boolean v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z

    .line 1018
    iput-boolean v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsStopScanCalled:Z

    .line 1019
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< FmRadioService.seek: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendBroadcastToStopOtherAPP()V
    .locals 4

    .prologue
    .line 800
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand.pause"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 801
    .local v2, "intentToMusic":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/mediatek/fmradio/FmRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 802
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.mediatek.app.mtv.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 803
    .local v0, "intentToAtv":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 804
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.mediatek.FMTransmitter.FMTransmitterService.ACTION_TOFMTXSERVICE_POWERDOWN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 805
    .local v1, "intentToFMTx":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 806
    return-void
.end method

.method public static setActivityIsOnStop(Z)V
    .locals 0
    .param p0, "stop"    # Z

    .prologue
    .line 3113
    sput-boolean p0, Lcom/mediatek/fmradio/FmRadioService;->sActivityIsOnStop:Z

    .line 3114
    return-void
.end method

.method private setLRText(Ljava/lang/String;)V
    .locals 4
    .param p1, "lrtText"    # Ljava/lang/String;

    .prologue
    .line 1902
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FmRadioService.setLRText: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1903
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1902
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1905
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mLRTextString:Ljava/lang/String;

    .line 1906
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1907
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "callback_flag"

    .line 1908
    const v2, 0x100100

    .line 1907
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1909
    const-string v1, "key_ps_info"

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    const-string v1, "key_rt_info"

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 1913
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private setMute(Z)I
    .locals 4
    .param p1, "mute"    # Z

    .prologue
    .line 1209
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 1210
    const-string v1, "FmRx/Service"

    const-string v2, "FM is not powered up"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const/4 v0, -0x1

    .line 1216
    :goto_0
    return v0

    .line 1213
    :cond_0
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>> FmRadioService.setMute: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioNative;->setMute(Z)I

    move-result v0

    .line 1215
    .local v0, "iRet":I
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< FmRadioService.setMute: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPS(Ljava/lang/String;)V
    .locals 4
    .param p1, "ps"    # Ljava/lang/String;

    .prologue
    .line 1883
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FmRadioService.setPS: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1885
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mPSString:Ljava/lang/String;

    .line 1886
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1887
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "callback_flag"

    .line 1888
    const v2, 0x100011

    .line 1887
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1889
    const-string v1, "key_ps_info"

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    const-string v1, "key_rt_info"

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 1893
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private setRds(Z)I
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 1131
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 1132
    const/4 v0, -0x1

    .line 1142
    :goto_0
    return v0

    .line 1134
    :cond_0
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>> FmRadioService.setRDS: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const/4 v0, -0x1

    .line 1136
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->isRdsSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1137
    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioNative;->setRds(Z)I

    move-result v0

    .line 1139
    :cond_1
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FmRadioService;->setPS(Ljava/lang/String;)V

    .line 1140
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FmRadioService;->setLRText(Ljava/lang/String;)V

    .line 1141
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< FmRadioService.setRDS: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setRecordingMode(Z)V
    .locals 3
    .param p1, "isRecording"    # Z

    .prologue
    .line 1526
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>> setRecordingMode: isRecording="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsInRecordingMode:Z

    .line 1528
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v0, :cond_2

    .line 1529
    if-nez p1, :cond_1

    .line 1530
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRecorder;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0, p0}, Lcom/mediatek/fmradio/FmRecorder;->stopRecording(Landroid/content/Context;)V

    .line 1532
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRecorder;->stopPlayback()V

    .line 1534
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->resumeFmAudio()V

    .line 1535
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I

    .line 1536
    const-string v0, "FmRx/Service"

    const-string v1, "<<< setRecordingMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :goto_0
    return-void

    .line 1540
    :cond_1
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRecorder;->resetRecorder()V

    .line 1542
    :cond_2
    const-string v0, "FmRx/Service"

    const-string v1, "<<< setRecordingMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showNotification()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1971
    const-string v3, "FmRx/Service"

    const-string v4, "FmRadioService.showNotification"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1973
    .local v1, "notificationIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1974
    const-class v4, Lcom/mediatek/fmradio/FmRadioActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1973
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1975
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 1976
    .local v2, "views":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 1977
    .local v0, "notification":Landroid/app/Notification;
    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1978
    const/4 v3, 0x2

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 1979
    const v3, 0x7f0201ed

    iput v3, v0, Landroid/app/Notification;->icon:I

    .line 1981
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 1980
    invoke-static {v3, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1982
    const-string v3, "FmRx/Service"

    const-string v4, "Add notification to the title bar."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/mediatek/fmradio/FmRadioService;->startForeground(ILandroid/app/Notification;)V

    .line 1984
    return-void
.end method

.method private startPlayFm(F)Z
    .locals 5
    .param p1, "frequency"    # F

    .prologue
    const/4 v4, 0x1

    .line 759
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>> FmRadioService.initDevice: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioUtils;->computeStation(F)I

    move-result v1

    iput v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    .line 762
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-static {v1, v2}, Lcom/mediatek/fmradio/FmRadioStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 764
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->showNotification()V

    .line 765
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioWidget;->getInstance()Lcom/mediatek/fmradio/FmRadioWidget;

    move-result-object v0

    .line 766
    .local v0, "widget":Lcom/mediatek/fmradio/FmRadioWidget;
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/fmradio/FmRadioWidget;->updateWidget(Landroid/content/Context;I)V

    .line 769
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->isRdsSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 770
    const-string v1, "FmRx/Service"

    const-string v2, "RDS is supported. Start the RDS thread."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->startRdsThread()V

    .line 774
    :cond_0
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioUtils;->isFmSuspendSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 775
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    .line 776
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 777
    const-string v1, "FmRx/Service"

    const-string v2, "acquire wake lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed:Z

    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->isSpeakerPhoneOn()Z

    move-result v2

    if-eq v1, v2, :cond_2

    .line 782
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed:Z

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioService;->setSpeakerPhoneOn(Z)V

    .line 784
    :cond_2
    iget v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecordState:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    .line 785
    invoke-direct {p0, v4}, Lcom/mediatek/fmradio/FmRadioService;->enableFmAudio(Z)V

    .line 788
    :cond_3
    invoke-direct {p0, v4}, Lcom/mediatek/fmradio/FmRadioService;->setRds(Z)I

    .line 789
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I

    .line 791
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< FmRadioService.initDevice: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    return v1
.end method

.method private startPlayback()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1422
    const-string v2, "FmRx/Service"

    const-string v3, ">>> startPlayback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->requestAudioFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1424
    const-string v1, "FmRx/Service"

    const-string v2, "can\'t get audio focus when play recording file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    :goto_0
    return v0

    .line 1428
    :cond_0
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-nez v2, :cond_1

    .line 1429
    const-string v1, "FmRx/Service"

    const-string v2, "FMRecorder is null !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1434
    :cond_1
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "AudioFmPreStop=1"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1435
    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I

    .line 1436
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->enableFmAudio(Z)V

    .line 1438
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRecorder;->startPlayback()V

    .line 1439
    const-string v0, "FmRx/Service"

    const-string v2, "<<< startPlayback"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1440
    goto :goto_0
.end method

.method private startRdsThread()V
    .locals 2

    .prologue
    .line 1777
    const-string v0, "FmRx/Service"

    const-string v1, ">>> FmRadioService.startRdSThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsRdsThreadExit:Z

    .line 1779
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mRdsThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1861
    :goto_0
    return-void

    .line 1782
    :cond_0
    new-instance v0, Lcom/mediatek/fmradio/FmRadioService$3;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FmRadioService$3;-><init>(Lcom/mediatek/fmradio/FmRadioService;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mRdsThread:Ljava/lang/Thread;

    .line 1858
    const-string v0, "FmRx/Service"

    const-string v1, "Start RDS Thread."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mRdsThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1860
    const-string v0, "FmRx/Service"

    const-string v1, "<<< FmRadioService.startRdSThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1346
    const-string v0, "FmRx/Service"

    const-string v1, ">>> startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 1348
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "native is not power up: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->onRecorderError(I)V

    .line 1372
    :goto_0
    return-void

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioUtils;->getDefaultStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/fmradio/FmRadioService;->sRecordingSdcard:Ljava/lang/String;

    .line 1353
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "default sd card file path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mediatek/fmradio/FmRadioService;->sRecordingSdcard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    sget-object v0, Lcom/mediatek/fmradio/FmRadioService;->sRecordingSdcard:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mediatek/fmradio/FmRadioService;->sRecordingSdcard:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1355
    :cond_1
    const-string v0, "FmRx/Service"

    const-string v1, "startRecording: may be no sdcard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    invoke-virtual {p0, v3}, Lcom/mediatek/fmradio/FmRadioService;->onRecorderError(I)V

    goto :goto_0

    .line 1360
    :cond_2
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-nez v0, :cond_3

    .line 1361
    new-instance v0, Lcom/mediatek/fmradio/FmRecorder;

    invoke-direct {v0}, Lcom/mediatek/fmradio/FmRecorder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    .line 1362
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0, p0}, Lcom/mediatek/fmradio/FmRecorder;->registerRecorderStateListener(Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;)V

    .line 1365
    :cond_3
    sget-object v0, Lcom/mediatek/fmradio/FmRadioService;->sRecordingSdcard:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->isSdcardReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1366
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRecorder;->startRecording(Landroid/content/Context;)V

    .line 1371
    :goto_1
    const-string v0, "FmRx/Service"

    const-string v1, "<<< startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1368
    :cond_4
    const-string v0, "FmRx/Service"

    const-string v1, "Cannot record because sdcard is not ready!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    invoke-virtual {p0, v3}, Lcom/mediatek/fmradio/FmRadioService;->onRecorderError(I)V

    goto :goto_1
.end method

.method private startScan()[I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1032
    const-string v4, "FmRx/Service"

    const-string v5, ">>> FmRadioService.startScan"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const/4 v1, 0x0

    .line 1035
    .local v1, "iChannels":[I
    invoke-direct {p0, v7}, Lcom/mediatek/fmradio/FmRadioService;->setRds(Z)I

    .line 1036
    invoke-direct {p0, v8}, Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I

    .line 1037
    const/4 v2, 0x0

    .line 1038
    .local v2, "shortChannels":[S
    iget-boolean v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsStopScanCalled:Z

    if-nez v4, :cond_0

    .line 1039
    iput-boolean v8, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeScanning:Z

    .line 1040
    const-string v4, "FmRx/Service"

    const-string v5, "startScan native method:start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->autoScan()[S

    move-result-object v2

    .line 1042
    const-string v4, "FmRx/Service"

    .line 1043
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startScan native method:end "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1044
    invoke-static {v2}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1043
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1042
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iput-boolean v7, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeScanning:Z

    .line 1048
    :cond_0
    invoke-direct {p0, v8}, Lcom/mediatek/fmradio/FmRadioService;->setRds(Z)I

    .line 1049
    iget-boolean v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsStopScanCalled:Z

    if-eqz v4, :cond_1

    .line 1053
    new-array v2, v8, [S

    .end local v2    # "shortChannels":[S
    const/16 v4, -0x64

    aput-short v4, v2, v7

    .line 1054
    .restart local v2    # "shortChannels":[S
    iput-boolean v7, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsStopScanCalled:Z

    .line 1057
    :cond_1
    if-eqz v2, :cond_2

    .line 1058
    array-length v3, v2

    .line 1059
    .local v3, "size":I
    new-array v1, v3, [I

    .line 1060
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_3

    .line 1064
    .end local v0    # "i":I
    .end local v3    # "size":I
    :cond_2
    const-string v4, "FmRx/Service"

    .line 1065
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<<< FmRadioService.startScan: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1064
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    return-object v1

    .line 1061
    .restart local v0    # "i":I
    .restart local v3    # "size":I
    :cond_3
    aget-short v4, v2, v0

    aput v4, v1, v0

    .line 1060
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private stopFmFocusLoss(I)V
    .locals 2
    .param p1, "focusState"    # I

    .prologue
    .line 2205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsAudioFocusHeld:Z

    .line 2206
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeScanning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z

    if-eqz v0, :cond_1

    .line 2209
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->stopScan()Z

    .line 2210
    const-string v0, "FmRx/Service"

    const-string v1, "need to stop FM, so stop scan channel."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->updateAudioFocusAync(I)V

    .line 2215
    const-string v0, "FmRx/Service"

    const-string v1, "need to stop FM, so powerdown FM."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    return-void
.end method

.method private stopPlayback()V
    .locals 2

    .prologue
    .line 1454
    const-string v0, "FmRx/Service"

    const-string v1, ">>> stopPlayback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v0, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRecorder;->stopPlayback()V

    .line 1457
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->checkAfterPlayback()V

    .line 1459
    :cond_0
    const-string v0, "FmRx/Service"

    const-string v1, "<<< stopPlayback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    return-void
.end method

.method private stopRdsThread()V
    .locals 2

    .prologue
    .line 1867
    const-string v0, "FmRx/Service"

    const-string v1, ">>> FmRadioService.stopRdSThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mRdsThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1870
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsRdsThreadExit:Z

    .line 1871
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mRdsThread:Ljava/lang/Thread;

    .line 1873
    :cond_0
    const-string v0, "FmRx/Service"

    const-string v1, "<<< FmRadioService.stopRdSThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    return-void
.end method

.method private stopRecording()Z
    .locals 3

    .prologue
    .line 1399
    const-string v0, "FmRx/Service"

    const-string v1, ">>> stopRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-nez v0, :cond_0

    .line 1401
    const-string v0, "FmRx/Service"

    const-string v1, "stopRecording called without a valid recorder!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const/4 v0, 0x0

    .line 1408
    :goto_0
    return v0

    .line 1404
    :cond_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mStopRecordingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1405
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0, p0}, Lcom/mediatek/fmradio/FmRecorder;->stopRecording(Landroid/content/Context;)V

    .line 1406
    const-string v0, "FmRx/Service"

    const-string v2, "<<< stopRecording"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    monitor-exit v1

    .line 1408
    const/4 v0, 0x1

    goto :goto_0

    .line 1404
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private switchAntenna(I)I
    .locals 4
    .param p1, "antenna"    # I

    .prologue
    .line 1327
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>> FmRadioService.switchAntenna:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioNative;->switchAntenna(I)I

    move-result v0

    .line 1330
    .local v0, "ret":I
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< FmRadioService.switchAntenna: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    return v0
.end method

.method private tuneStation(F)Z
    .locals 8
    .param p1, "frequency"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 942
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ">>> FmRadioService.tune: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-boolean v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-eqz v4, :cond_1

    .line 947
    invoke-direct {p0, v3}, Lcom/mediatek/fmradio/FmRadioService;->setRds(Z)I

    .line 948
    const-string v4, "FmRx/Service"

    const-string v5, "FmRadioService.native tune start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioNative;->tune(F)Z

    move-result v0

    .line 950
    .local v0, "bRet":Z
    const-string v4, "FmRx/Service"

    const-string v5, "FmRadioService.native tune end"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    if-eqz v0, :cond_0

    .line 952
    invoke-direct {p0, v7}, Lcom/mediatek/fmradio/FmRadioService;->setRds(Z)I

    .line 953
    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioUtils;->computeStation(F)I

    move-result v4

    iput v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    .line 954
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-static {v4, v5}, Lcom/mediatek/fmradio/FmRadioStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 955
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->updateNotification()V

    .line 956
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioWidget;->getInstance()Lcom/mediatek/fmradio/FmRadioWidget;

    move-result-object v2

    .line 957
    .local v2, "widget":Lcom/mediatek/fmradio/FmRadioWidget;
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-virtual {v2, v4, v5}, Lcom/mediatek/fmradio/FmRadioWidget;->updateWidget(Landroid/content/Context;I)V

    .line 959
    .end local v2    # "widget":Lcom/mediatek/fmradio/FmRadioWidget;
    :cond_0
    invoke-direct {p0, v3}, Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I

    .line 960
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<<< FmRadioService.tune: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    .end local v0    # "bRet":Z
    :goto_0
    return v0

    .line 965
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->isAntennaAvailable()Z

    move-result v4

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/mediatek/fmradio/FmRadioService;->SHORT_ANNTENNA_SUPPORT:Z

    if-nez v4, :cond_2

    .line 966
    const-string v4, "FmRx/Service"

    const-string v5, "earphone is not insert and short antenna not support"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 967
    goto :goto_0

    .line 971
    :cond_2
    const-string v4, "FmRx/Service"

    const-string v5, "FM is not powered up"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iput-boolean v7, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    .line 973
    const/4 v1, 0x0

    .line 975
    .local v1, "tune":Z
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->powerUpFm(F)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 976
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->startPlayFm(F)Z

    move-result v1

    .line 978
    :cond_3
    iput-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    .line 979
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<<< FmRadioService.tune: mIsPowerup:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 980
    goto :goto_0
.end method

.method public static unregisterExitListener(Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    .prologue
    .line 3081
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    .line 3082
    return-void
.end method

.method private unregisterFmBroadcastReceiver()V
    .locals 2

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mBroadcastReceiver:Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1683
    const-string v0, "FmRx/Service"

    const-string v1, "Unregister broadcast receiver."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mBroadcastReceiver:Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mBroadcastReceiver:Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;

    .line 1687
    :cond_0
    return-void
.end method

.method private unregisterSdcardListener()V
    .locals 1

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2073
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2075
    :cond_0
    return-void
.end method

.method private updateAudioFocus(I)V
    .locals 10
    .param p1, "focusState"    # I

    .prologue
    const/16 v9, 0x17

    const/16 v8, 0x16

    const/4 v7, 0x6

    const/4 v6, 0x1

    .line 2388
    const-string v3, "FmRx/Service"

    const-string v4, "FmRadioService.updateAudioFocus"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    packed-switch p1, :pswitch_data_0

    .line 2463
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2391
    :pswitch_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mPausedByTransientLossOfFocus:Z

    .line 2396
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v3, :cond_1

    .line 2397
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRecorder;->getState()I

    move-result v2

    .line 2398
    .local v2, "fmState":I
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "stopFMFocusLoss.recorder state="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    if-ne v2, v7, :cond_1

    .line 2401
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 2402
    invoke-virtual {v3, v8}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2403
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 2404
    invoke-virtual {v3, v9}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2405
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->stopRecording()Z

    .line 2408
    .end local v2    # "fmState":I
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->handlePowerDown()V

    goto :goto_0

    .line 2412
    :pswitch_2
    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-eqz v3, :cond_2

    .line 2413
    iput-boolean v6, p0, Lcom/mediatek/fmradio/FmRadioService;->mPausedByTransientLossOfFocus:Z

    .line 2415
    :cond_2
    const-string v3, "FmRx/Service"

    .line 2416
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AUDIOFOCUS_LOSS_TRANSIENT: mPausedByTransientLossOfFocus:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2417
    iget-boolean v5, p0, Lcom/mediatek/fmradio/FmRadioService;->mPausedByTransientLossOfFocus:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2416
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2415
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v3, :cond_4

    .line 2423
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRecorder;->getState()I

    move-result v2

    .line 2424
    .restart local v2    # "fmState":I
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "stopFMFocusLoss.recorder state="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    if-ne v2, v7, :cond_3

    .line 2426
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 2427
    invoke-virtual {v3, v8}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2428
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 2429
    invoke-virtual {v3, v9}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2430
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->stopRecording()Z

    .line 2432
    :cond_3
    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    .line 2433
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 2434
    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2435
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 2436
    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2437
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->stopPlayback()V

    .line 2440
    .end local v2    # "fmState":I
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->handlePowerDown()V

    goto/16 :goto_0

    .line 2444
    :pswitch_3
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AUDIOFOCUS_GAIN: mPausedByTransientLossOfFocus:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2445
    iget-boolean v5, p0, Lcom/mediatek/fmradio/FmRadioService;->mPausedByTransientLossOfFocus:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2444
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mPausedByTransientLossOfFocus:Z

    if-eqz v3, :cond_0

    .line 2447
    iput-boolean v6, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    .line 2448
    const/4 v1, 0x1

    .line 2449
    .local v1, "bundleSize":I
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 2450
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2451
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 2452
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2453
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 2454
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "frequency"

    .line 2455
    iget v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-static {v4}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v4

    .line 2454
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2456
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->handlePowerUp(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2389
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized updateAudioFocusAync(I)V
    .locals 6
    .param p1, "focusState"    # I

    .prologue
    .line 2371
    monitor-enter p0

    :try_start_0
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateAudioFocusAync: focusState = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    const/4 v1, 0x1

    .line 2373
    .local v1, "bundleSize":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2374
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "key_audiofocus_changed"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2375
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 2376
    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2377
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2378
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2379
    monitor-exit p0

    return-void

    .line 2371
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleSize":I
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private updateDBInLocation([I)I
    .locals 17
    .param p1, "stations"    # [I

    .prologue
    .line 2596
    const/4 v15, 0x0

    .line 2597
    .local v15, "stationNum":I
    move-object/from16 v0, p1

    array-length v14, v0

    .line 2598
    .local v14, "searchedListSize":I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2599
    .local v16, "stationsInDB":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 2602
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 2603
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "COLUMN_STATION_FREQ"

    aput-object v5, v3, v4

    .line 2604
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "COLUMN_STATION_TYPE="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2605
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2604
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2606
    const/4 v5, 0x0

    const-string v6, "COLUMN_STATION_FREQ"

    .line 2602
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2607
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2611
    :cond_0
    const-string v1, "COLUMN_STATION_FREQ"

    .line 2610
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 2612
    .local v9, "freqInDB":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2613
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 2619
    .end local v9    # "freqInDB":I
    :goto_0
    if-eqz v7, :cond_1

    .line 2620
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2624
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2626
    .local v13, "listSizeInDB":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-lt v11, v13, :cond_4

    .line 2641
    const-string v8, ""

    .line 2643
    .local v8, "defaultStationName":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_2
    if-lt v12, v14, :cond_8

    .line 2655
    return v15

    .line 2616
    .end local v8    # "defaultStationName":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "j":I
    .end local v13    # "listSizeInDB":I
    :cond_2
    :try_start_1
    const-string v1, "FmRx/Service"

    const-string v2, "updateDBInLocation, insertSearchedStation cursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2618
    :catchall_0
    move-exception v1

    .line 2619
    if-eqz v7, :cond_3

    .line 2620
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2622
    :cond_3
    throw v1

    .line 2627
    .restart local v11    # "i":I
    .restart local v13    # "listSizeInDB":I
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2628
    .restart local v9    # "freqInDB":I
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_3
    if-lt v12, v14, :cond_6

    .line 2626
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2629
    :cond_6
    aget v10, p1, v12

    .line 2630
    .local v10, "freqSearched":I
    if-eq v9, v10, :cond_5

    .line 2633
    add-int/lit8 v1, v14, -0x1

    if-ne v12, v1, :cond_7

    if-eq v9, v10, :cond_7

    .line 2635
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    .line 2636
    const/4 v2, 0x3

    .line 2635
    invoke-static {v1, v9, v2}, Lcom/mediatek/fmradio/FmRadioStation;->deleteStationInDb(Landroid/content/Context;II)V

    .line 2628
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 2644
    .end local v9    # "freqInDB":I
    .end local v10    # "freqSearched":I
    .restart local v8    # "defaultStationName":Ljava/lang/String;
    :cond_8
    aget v10, p1, v12

    .line 2645
    .restart local v10    # "freqSearched":I
    invoke-static {v10}, Lcom/mediatek/fmradio/FmRadioUtils;->isValidStation(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2646
    add-int/lit8 v15, v15, 0x1

    .line 2647
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2648
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v1, v10}, Lcom/mediatek/fmradio/FmRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2650
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    .line 2651
    const/4 v2, 0x3

    .line 2650
    invoke-static {v1, v8, v10, v2}, Lcom/mediatek/fmradio/FmRadioStation;->insertStationToDb(Landroid/content/Context;Ljava/lang/String;II)V

    .line 2643
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_2
.end method

.method private updateNotification()V
    .locals 2

    .prologue
    .line 2048
    const-string v0, "FmRx/Service"

    const-string v1, "FmRadioService.updateNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_0

    .line 2050
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->showNotification()V

    .line 2052
    :cond_0
    return-void
.end method

.method private updateSdcardStateMap(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 2078
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2079
    .local v0, "action":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2080
    .local v2, "sdcardPath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 2081
    .local v1, "mountPointUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 2082
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 2083
    if-eqz v2, :cond_0

    .line 2084
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2085
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateSdcardStateMap: ENJECT "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardStateMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    :cond_0
    :goto_0
    return-void

    .line 2087
    :cond_1
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2088
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateSdcardStateMap: UNMOUNTED "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardStateMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2090
    :cond_2
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2091
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateSdcardStateMap: MOUNTED "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardStateMap:Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private waitIfTxSearching()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 740
    const-string v2, "FmRx/Service"

    .line 741
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ">>> waitIfTxSearching "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 742
    invoke-static {v6}, Lcom/mediatek/fmradio/FmRadioNative;->getFmStatus(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 741
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 740
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 745
    .local v0, "start":J
    :goto_0
    invoke-static {v6}, Lcom/mediatek/fmradio/FmRadioNative;->getFmStatus(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 755
    :goto_1
    const-string v2, "FmRx/Service"

    const-string v3, "<<< waitIfTxSearching"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    return-void

    .line 746
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 747
    const-string v2, "FmRx/Service"

    const-string v3, "waitIfTxSearching timeout"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 751
    :cond_1
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 752
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 2

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsAudioFocusHeld:Z

    .line 2304
    return-void
.end method

.method public activeAFAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x12

    .line 1171
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1172
    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1173
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1174
    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1175
    return-void
.end method

.method public emcmd([S)[S
    .locals 4
    .param p1, "val"    # [S

    .prologue
    .line 3176
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>FMRadioService.emcmd: val="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    const/4 v0, 0x0

    .line 3178
    .local v0, "shortCmds":[S
    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioNative;->emcmd([S)[S

    move-result-object v0

    .line 3179
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<FMRadioService.emcmd:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    return-object v0
.end method

.method public getCapArray()I
    .locals 2

    .prologue
    .line 3194
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.readCapArray"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 3196
    const-string v0, "FmRx/Service"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    const/4 v0, -0x1

    .line 3199
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->readCapArray()S

    move-result v0

    goto :goto_0
.end method

.method public getFrequency()I
    .locals 3

    .prologue
    .line 1268
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.getFrequency: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    return v0
.end method

.method public getHardwareVersion()[I
    .locals 1

    .prologue
    .line 3187
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->getHardwareVersion()[I

    move-result-object v0

    return-object v0
.end method

.method public getLRText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1161
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.getLRText: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mLRTextString:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedRecordingName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3091
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRecordingNameInDialog:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mModifiedRecordingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mModifiedRecordingName:Ljava/lang/String;

    return-object v0
.end method

.method public getPS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1151
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.getPS: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mPSString:Ljava/lang/String;

    return-object v0
.end method

.method public getRdsBler()I
    .locals 2

    .prologue
    .line 3218
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.readRdsBler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 3220
    const-string v0, "FmRx/Service"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    const/4 v0, -0x1

    .line 3223
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->readRdsBler()S

    move-result v0

    goto :goto_0
.end method

.method public getRecordTime()J
    .locals 2

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRecorder;->recordTime()J

    move-result-wide v0

    .line 1504
    :goto_0
    return-wide v0

    .line 1503
    :cond_0
    const-string v0, "FmRx/Service"

    const-string v1, "FMRecorder is null !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getRecorderState()I
    .locals 1

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v0, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRecorder;->getState()I

    move-result v0

    .line 1563
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRecordingMode()Z
    .locals 1

    .prologue
    .line 1551
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsInRecordingMode:Z

    return v0
.end method

.method public getRecordingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRecorder;->getRecordingName()Ljava/lang/String;

    move-result-object v0

    .line 1575
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecordingNameWithPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRecorder;->getRecordingNameWithPath()Ljava/lang/String;

    move-result-object v0

    .line 1587
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRssi()I
    .locals 2

    .prologue
    .line 3206
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.readRssi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 3208
    const-string v0, "FmRx/Service"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    const/4 v0, -0x1

    .line 3211
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->readRssi()I

    move-result v0

    goto :goto_0
.end method

.method public getStereoMono()Z
    .locals 2

    .prologue
    .line 3134
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.getStereoMono"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->stereoMono()Z

    move-result v0

    return v0
.end method

.method public initService(I)V
    .locals 3
    .param p1, "iCurrentStation"    # I

    .prologue
    .line 1247
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.initService: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsServiceInited:Z

    .line 1249
    iput p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    .line 1250
    return-void
.end method

.method public isActivityForeground()Z
    .locals 7

    .prologue
    .line 3008
    const/4 v3, 0x1

    .line 3009
    .local v3, "isForeground":Z
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mActivityManager:Landroid/app/ActivityManager;

    .line 3010
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 3011
    .local v1, "appProcessInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3026
    :goto_0
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isActivityForeground return "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    return v3

    .line 3011
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3012
    .local v0, "appProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3013
    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 3014
    .local v2, "importance":I
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isActivityForeground importance:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    const/16 v4, 0x64

    if-eq v2, v4, :cond_2

    .line 3016
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_3

    .line 3017
    :cond_2
    const-string v4, "FmRx/Service"

    const-string v5, "isActivityForeground is foreground"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    const/4 v3, 0x1

    .line 3019
    goto :goto_0

    .line 3020
    :cond_3
    const-string v4, "FmRx/Service"

    const-string v5, "isActivityForeground is background"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    const/4 v3, 0x0

    .line 3023
    goto :goto_0
.end method

.method public isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method public isBtConnected()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 550
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 551
    .local v1, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "FmRx/Service"

    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isBtConnected headset:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v5

    .line 553
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 555
    const-string v5, ", a2dp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 557
    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v5

    .line 556
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 552
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 551
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    .line 560
    .local v0, "a2dpState":I
    if-eq v6, v0, :cond_0

    if-eq v2, v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    return v2
.end method

.method public isDeviceOpen()Z
    .locals 3

    .prologue
    .line 670
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.isDeviceOpen: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsDeviceOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsDeviceOpen:Z

    return v0
.end method

.method public isInCountDownMode()Z
    .locals 1

    .prologue
    .line 3336
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsInCountDownMode:Z

    return v0
.end method

.method public isInLockTaskMode()Z
    .locals 3

    .prologue
    .line 3038
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isInLockTaskMode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    return v0
.end method

.method public isMakePowerDown()Z
    .locals 3

    .prologue
    .line 918
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.mIsMakePowerDown: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsMakePowerDown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsMakePowerDown:Z

    return v0
.end method

.method public isModeNormal()Z
    .locals 4

    .prologue
    .line 3122
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 3123
    .local v0, "mode":I
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isInCall mode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPowerUp()Z
    .locals 3

    .prologue
    .line 897
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.isPowerUp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    return v0
.end method

.method public isPowerUping()Z
    .locals 3

    .prologue
    .line 908
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.isPowerUping: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    return v0
.end method

.method public isRdsSupported()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1225
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->isRdsSupport()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1226
    .local v0, "isRdsSupported":Z
    :goto_0
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FmRadioService.isRdsSupported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    return v0

    .line 1225
    .end local v0    # "isRdsSupported":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecordingCardUnmount(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2566
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2567
    .local v0, "unmountSDCard":Ljava/lang/String;
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unmount sd card file path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mediatek/fmradio/FmRadioService;->sRecordingSdcard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    .line 2569
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    .line 1075
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsScanning:Z

    return v0
.end method

.method public isSeeking()Z
    .locals 1

    .prologue
    .line 1109
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z

    return v0
.end method

.method public isServiceInited()Z
    .locals 3

    .prologue
    .line 1258
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.isServiceInit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsServiceInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsServiceInited:Z

    return v0
.end method

.method public isSpeakerUsed()Z
    .locals 3

    .prologue
    .line 1236
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.isSpeakerUsed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 257
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.onBind: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1757
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1759
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_0

    .line 1760
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->showNotification()V

    .line 1762
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 1592
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1593
    const-string v2, "FmRx/Service"

    const-string v3, ">>> FmRadioService.onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "short antenna support:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/mediatek/fmradio/FmRadioService;->SHORT_ANNTENNA_SUPPORT:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    .line 1596
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/mediatek/fmradio/FmRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 1597
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/mediatek/fmradio/FmRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mActivityManager:Landroid/app/ActivityManager;

    .line 1598
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/mediatek/fmradio/FmRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1599
    .local v1, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    .line 1600
    const-string v3, "FmRx/Service"

    .line 1599
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1601
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1602
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/fmradio/FmRadioUtils;->getDefaultStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/fmradio/FmRadioService;->sRecordingSdcard:Ljava/lang/String;

    .line 1604
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->initFmPlayer()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1605
    const-string v2, "FmRx/Service"

    const-string v3, "init FMPlayer failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :goto_0
    return-void

    .line 1609
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->registerFmBroadcastReceiver()V

    .line 1610
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->registerSdcardReceiver()V

    .line 1612
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "FmRadioServiceThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1613
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1614
    new-instance v2, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;-><init>(Lcom/mediatek/fmradio/FmRadioService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1616
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->openDevice()Z

    .line 1618
    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed:Z

    invoke-virtual {p0, v2}, Lcom/mediatek/fmradio/FmRadioService;->setSpeakerPhoneOn(Z)V

    .line 1624
    const-string v2, "FmRx/Service"

    const-string v3, "<<< FmRadioService.onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1691
    const-string v0, "FmRx/Service"

    const-string v1, ">>> FmRadioService.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "AudioFmPreStop=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1693
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I

    .line 1695
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->isRdsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1696
    const-string v0, "FmRx/Service"

    const-string v1, "RDS is supported. Stop the RDS thread."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->stopRdsThread()V

    .line 1699
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->unregisterFmBroadcastReceiver()V

    .line 1700
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->unregisterSdcardListener()V

    .line 1705
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->abandonAudioFocus()V

    .line 1706
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->exitFm()V

    .line 1707
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v0, :cond_1

    .line 1708
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    .line 1710
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1711
    return-void
.end method

.method public onPlayRecordFileComplete()V
    .locals 2

    .prologue
    .line 2150
    const-string v0, "FmRx/Service"

    const-string v1, "service.onPlayRecordFileComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->checkAfterPlayback()V

    .line 2152
    return-void
.end method

.method public onRecorderError(I)V
    .locals 5
    .param p1, "error"    # I

    .prologue
    const/4 v2, 0x4

    .line 2126
    const-string v1, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onRecorderError: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    const/16 v1, 0x64

    if-ne v1, p1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecorderErrorType:I

    .line 2132
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 2133
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "callback_flag"

    .line 2134
    const v3, 0x100110

    .line 2133
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2135
    const-string v1, "key_recording_error_type"

    .line 2136
    iget v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecorderErrorType:I

    .line 2135
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2137
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 2140
    if-ne v2, p1, :cond_0

    .line 2141
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->resumeFmAudio()V

    .line 2143
    :cond_0
    return-void

    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    move v1, p1

    .line 2130
    goto :goto_0
.end method

.method public onRecorderStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2106
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onRecorderStateChanged: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    iput p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecordState:I

    .line 2108
    const/4 v1, 0x6

    iget v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecordState:I

    if-eq v1, v2, :cond_0

    .line 2109
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsInRecordingMode:Z

    .line 2111
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 2112
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "callback_flag"

    .line 2113
    const v2, 0x100101

    .line 2112
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2114
    const-string v1, "key_is_recording_state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2115
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 2116
    return-void
.end method

.method public onShake()V
    .locals 4

    .prologue
    .line 3342
    const-string v0, "FmRx/Service"

    const-string v1, "onShake"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsScanning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    if-nez v0, :cond_0

    .line 3344
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mediatek/fmradio/FmRadioService;->lastShakeTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3345
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/fmradio/FmRadioService;->lastShakeTime:J

    .line 3346
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3347
    const v1, 0x7f0900ce

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3348
    const/4 v2, 0x0

    .line 3346
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3348
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3350
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v0

    const/4 v1, 0x1

    .line 3349
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/fmradio/FmRadioService;->seekStationAsync(FZ)V

    .line 3353
    :cond_0
    return-void
.end method

.method public onShowToast(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 2160
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "service.onShowToast "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mBroadcastReceiver:Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 2162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SHOWTOAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2163
    .local v0, "intentToShowToast":Landroid/content/Intent;
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2164
    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2170
    .end local v0    # "intentToShowToast":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2166
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2168
    const/4 v2, 0x0

    .line 2166
    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 2168
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 1766
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>> FmRadioService.onStartCommand intent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1767
    const-string v3, " startId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1766
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 1769
    .local v0, "ret":I
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< FmRadioService.onStartCommand: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    const/4 v1, 0x2

    return v1
.end method

.method public powerDownAsync()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 815
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 816
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 817
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 818
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 819
    invoke-virtual {v0, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 820
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 821
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 822
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 823
    invoke-virtual {v0, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 824
    return-void
.end method

.method public powerUpAsync(F)V
    .locals 7
    .param p1, "frequency"    # F

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x1

    .line 680
    iput-boolean v5, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    .line 681
    const/4 v1, 0x1

    .line 682
    .local v1, "bundleSize":I
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 683
    invoke-virtual {v3, v6}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 684
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 685
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 686
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 687
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "frequency"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 688
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 689
    invoke-virtual {v3, v6}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 690
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 691
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 692
    return-void
.end method

.method public registerFmRadioListener(Lcom/mediatek/fmradio/FmRadioListener;)V
    .locals 7
    .param p1, "callback"    # Lcom/mediatek/fmradio/FmRadioListener;

    .prologue
    .line 2481
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2484
    const/4 v3, 0x0

    .line 2485
    .local v3, "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2486
    .local v0, "hashCode":I
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2487
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    move-object v4, v3

    .end local v3    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    .local v4, "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    :goto_0
    if-lt v1, v2, :cond_0

    .line 2493
    :try_start_1
    new-instance v3, Lcom/mediatek/fmradio/FmRadioService$Record;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/mediatek/fmradio/FmRadioService$Record;-><init>(Lcom/mediatek/fmradio/FmRadioService$Record;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2494
    .end local v4    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    .restart local v3    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    :try_start_2
    iput v0, v3, Lcom/mediatek/fmradio/FmRadioService$Record;->mHashCode:I

    .line 2495
    iput-object p1, v3, Lcom/mediatek/fmradio/FmRadioService$Record;->mCallback:Lcom/mediatek/fmradio/FmRadioListener;

    .line 2496
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2481
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2498
    :goto_1
    return-void

    .line 2488
    .end local v3    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    .restart local v4    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    :cond_0
    :try_start_3
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/fmradio/FmRadioService$Record;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2489
    .end local v4    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    .restart local v3    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    :try_start_4
    iget v5, v3, Lcom/mediatek/fmradio/FmRadioService$Record;->mHashCode:I

    if-ne v0, v5, :cond_1

    .line 2490
    monitor-exit v6

    goto :goto_1

    .line 2481
    .end local v0    # "hashCode":I
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v5

    :goto_2
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 2487
    .restart local v0    # "hashCode":I
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-object v4, v3

    .end local v3    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    .restart local v4    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    goto :goto_0

    .line 2481
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    .restart local v3    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    goto :goto_2
.end method

.method public requestAudioFocus()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 2286
    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsAudioFocusHeld:Z

    if-eqz v2, :cond_0

    .line 2295
    :goto_0
    return v1

    .line 2290
    :cond_0
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 2291
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    .line 2290
    invoke-virtual {v2, v3, v4, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 2293
    .local v0, "audioFocus":I
    if-ne v1, v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsAudioFocusHeld:Z

    .line 2294
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestAudioFocus, mIsAudioFocusHeld: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsAudioFocusHeld:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsAudioFocusHeld:Z

    goto :goto_0

    .line 2293
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public saveRecordingAsync(Ljava/lang/String;)V
    .locals 5
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x1a

    .line 1470
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1471
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1472
    const/4 v1, 0x1

    .line 1473
    .local v1, "bundleSize":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1474
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "name"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1476
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1477
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1478
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1479
    return-void
.end method

.method public seekStationAsync(FZ)V
    .locals 5
    .param p1, "frequency"    # F
    .param p2, "isUp"    # Z

    .prologue
    const/16 v4, 0x10

    .line 994
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 995
    const/4 v1, 0x2

    .line 996
    .local v1, "bundleSize":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 997
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "frequency"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 998
    const-string v3, "option"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 999
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1000
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1001
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1002
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1003
    return-void
.end method

.method public setEmth(II)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 3161
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>> FMRadioService.setEmth: index="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3162
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3161
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    invoke-static {p1, p2}, Lcom/mediatek/fmradio/FmRadioNative;->emsetth(II)Z

    move-result v0

    .line 3164
    .local v0, "isOk":Z
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< FMRadioService.setEmth: isOk="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    return v0
.end method

.method public setFrequency(I)V
    .locals 0
    .param p1, "station"    # I

    .prologue
    .line 1279
    iput p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    .line 1280
    return-void
.end method

.method public setModifiedRecordingName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3102
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setRecordingNameInDialog:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mModifiedRecordingName:Ljava/lang/String;

    .line 3104
    return-void
.end method

.method public setMuteAsync(Z)V
    .locals 5
    .param p1, "mute"    # Z

    .prologue
    const/4 v4, 0x7

    .line 1197
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1198
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1199
    const/4 v1, 0x1

    .line 1200
    .local v1, "bundleSize":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1201
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "option"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1202
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1203
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1204
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1205
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1206
    return-void
.end method

.method public setRdsAsync(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x5

    .line 1119
    const/4 v1, 0x1

    .line 1120
    .local v1, "bundleSize":I
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1121
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1122
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1123
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "option"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1124
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1125
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1126
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1127
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1128
    return-void
.end method

.method public setRecordingModeAsync(Z)V
    .locals 5
    .param p1, "isRecording"    # Z

    .prologue
    const/16 v4, 0x15

    .line 1514
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1515
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1516
    const/4 v1, 0x1

    .line 1517
    .local v1, "bundleSize":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1518
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "option"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1519
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1520
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1521
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1522
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1523
    return-void
.end method

.method public setSpeakerPhoneOn(Z)V
    .locals 4
    .param p1, "isSpeaker"    # Z

    .prologue
    const/4 v1, 0x1

    .line 619
    const-string v0, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>> FmRadioService.useSpeaker: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mForcedUseForMedia:I

    .line 622
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mForcedUseForMedia:I

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 623
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed:Z

    .line 624
    const-string v0, "FmRx/Service"

    const-string v1, "<<< FmRadioService.useSpeaker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return-void

    .line 621
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStereoMono(Z)Z
    .locals 3
    .param p1, "isMono"    # Z

    .prologue
    .line 3146
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FMRadioService.setStereoMono: isMono="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioNative;->setStereoMono(Z)Z

    move-result v0

    return v0
.end method

.method public startCountingDownAsync(Ljava/lang/String;J)V
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "interval"    # J

    .prologue
    const/4 v4, 0x0

    .line 3314
    const-string v3, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3315
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsInCountDownMode:Z

    .line 3316
    :cond_0
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/mediatek/fmradio/FmRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3317
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3318
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3320
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3321
    const/4 v3, 0x2

    .line 3322
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p2

    add-long/2addr v4, v6

    .line 3321
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 3323
    return-void
.end method

.method public startPlaybackAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x18

    .line 1415
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1416
    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1417
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1418
    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1419
    return-void
.end method

.method public startRecordingAsync()V
    .locals 3

    .prologue
    const/16 v2, 0x16

    .line 1338
    const-string v0, "FmRx/Service"

    const-string v1, "startRecordingAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1340
    invoke-virtual {v0, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1341
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1342
    invoke-virtual {v0, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1343
    return-void
.end method

.method public startScanAsync()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 1027
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1028
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1029
    return-void
.end method

.method public stopCountingDownAsync(Ljava/lang/String;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3326
    const-string v3, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3327
    iput-boolean v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsInCountDownMode:Z

    .line 3328
    :cond_0
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/mediatek/fmradio/FmRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3329
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3330
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3332
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3333
    return-void
.end method

.method public stopPlaybackAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x19

    .line 1447
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1448
    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1449
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1450
    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1451
    return-void
.end method

.method public stopRecordingAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x17

    .line 1392
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1393
    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1394
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1395
    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1396
    return-void
.end method

.method public stopScan()Z
    .locals 4

    .prologue
    .line 1084
    const-string v1, "FmRx/Service"

    const-string v2, ">>> FmRadioService.stopScan"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 1086
    const-string v1, "FmRx/Service"

    const-string v2, "FM is not powered up"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    const/4 v0, 0x0

    .line 1100
    :goto_0
    return v0

    .line 1090
    :cond_0
    const/4 v0, 0x0

    .line 1091
    .local v0, "bRet":Z
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1092
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1093
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeScanning:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z

    if-eqz v1, :cond_2

    .line 1094
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsStopScanCalled:Z

    .line 1095
    const-string v1, "FmRx/Service"

    const-string v2, "native stop scan:start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->stopScan()Z

    move-result v0

    .line 1097
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "native stop scan:end --"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_2
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< FmRadioService.stopScan: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public switchAntennaAsync(I)V
    .locals 5
    .param p1, "antenna"    # I

    .prologue
    const/4 v4, 0x4

    .line 1307
    const/4 v1, 0x1

    .line 1308
    .local v1, "bundleSize":I
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1310
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1311
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "switch_anntenna_value"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1312
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1313
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1314
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1315
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1316
    return-void
.end method

.method public tuneStationAsync(F)V
    .locals 5
    .param p1, "frequency"    # F

    .prologue
    const/16 v4, 0xf

    .line 931
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 932
    const/4 v1, 0x1

    .line 933
    .local v1, "bundleSize":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 934
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "frequency"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 935
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 936
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 937
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 938
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 939
    return-void
.end method

.method public unregisterFmRadioListener(Lcom/mediatek/fmradio/FmRadioListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/mediatek/fmradio/FmRadioListener;

    .prologue
    .line 2535
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->remove(I)V

    .line 2536
    return-void
.end method

.method public updateFavoriteStation(I)V
    .locals 10
    .param p1, "favorStation"    # I

    .prologue
    const/16 v9, 0xf

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 3257
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateFavoriteStation, favorStation = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/mediatek/fmradio/FmRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3261
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v5}, Lcom/mediatek/fmradio/FmRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 3263
    .local v1, "stationName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v6, p1}, Lcom/mediatek/fmradio/FmRadioStation;->updateStationToDb(Landroid/content/Context;Ljava/lang/String;II)V

    .line 3265
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->updateNotification()V

    .line 3266
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v8}, Landroid/os/Bundle;-><init>(I)V

    .line 3267
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "callback_flag"

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3269
    const-string v2, "key_is_tune"

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3270
    const-string v2, "key_tune_to_station"

    .line 3271
    iget v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v3

    .line 3270
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3272
    const-string v2, "key_is_power_up"

    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3273
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 3274
    sget-object v2, Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    if-eqz v2, :cond_0

    .line 3275
    sget-object v2, Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    invoke-interface {v2}, Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;->onTuneFinished()V

    .line 3311
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "stationName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3279
    :cond_1
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/mediatek/fmradio/FmRadioStation;->getStationCount(Landroid/content/Context;I)I

    move-result v2

    .line 3280
    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 3281
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 3282
    const v3, 0x7f090062

    invoke-virtual {p0, v3}, Lcom/mediatek/fmradio/FmRadioService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3283
    const/4 v4, 0x0

    .line 3281
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 3283
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3285
    :cond_2
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v6}, Lcom/mediatek/fmradio/FmRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 3287
    .restart local v1    # "stationName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v6}, Lcom/mediatek/fmradio/FmRadioStation;->isStationExist(Landroid/content/Context;II)Z

    move-result v2

    .line 3288
    if-eqz v2, :cond_3

    .line 3289
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v5, p1}, Lcom/mediatek/fmradio/FmRadioStation;->updateStationToDb(Landroid/content/Context;Ljava/lang/String;II)V

    .line 3297
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->updateNotification()V

    .line 3298
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v8}, Landroid/os/Bundle;-><init>(I)V

    .line 3299
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v2, "callback_flag"

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3301
    const-string v2, "key_is_tune"

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3302
    const-string v2, "key_tune_to_station"

    .line 3303
    iget v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v3

    .line 3302
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3304
    const-string v2, "key_is_power_up"

    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3305
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 3306
    sget-object v2, Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    if-eqz v2, :cond_0

    .line 3307
    sget-object v2, Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    invoke-interface {v2}, Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;->onTuneFinished()V

    goto :goto_0

    .line 3293
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, p1, v5}, Lcom/mediatek/fmradio/FmRadioStation;->insertStationToDb(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_1
.end method
