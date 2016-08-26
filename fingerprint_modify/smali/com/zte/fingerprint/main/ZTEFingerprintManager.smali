.class public Lcom/zte/fingerprint/main/ZTEFingerprintManager;
.super Ljava/lang/Object;
.source "ZTEFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;,
        Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;,
        Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;,
        Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedData;,
        Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedDataCallback;,
        Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedMaskList;,
        Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;,
        Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRejectReasons;,
        Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedResult;,
        Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;
    }
.end annotation


# static fields
.field static final ARG_IDENTIFY_UPDATED:I = 0x1

.field public static final CAPTURE_FAILED_TOO_FAST:I = 0x1

.field static final FPC_GUIDE_DATA_INVALID:I = -0x80000000

.field static final FPC_GUIDE_DIRECTION_E:I = 0x7

.field static final FPC_GUIDE_DIRECTION_N:I = 0x5

.field static final FPC_GUIDE_DIRECTION_NA:I = 0x0

.field static final FPC_GUIDE_DIRECTION_NE:I = 0x6

.field static final FPC_GUIDE_DIRECTION_NW:I = 0x4

.field static final FPC_GUIDE_DIRECTION_S:I = 0x2

.field static final FPC_GUIDE_DIRECTION_SE:I = 0x3

.field static final FPC_GUIDE_DIRECTION_SW:I = 0x1

.field static final FPC_GUIDE_DIRECTION_W:I = 0x8

.field static final MSG_CAPTURE_FAILED:I = 0x13

.field static final MSG_ENROLMENT_DATA_IMAGE_QUALITY:I = 0xe

.field static final MSG_ENROLMENT_DATA_IMAGE_STITCHED:I = 0x12

.field static final MSG_ENROLMENT_DATA_IMMOBILE:I = 0xf

.field static final MSG_ENROLMENT_DATA_NEXT_DIRECTION:I = 0x10

.field static final MSG_ENROLMENT_DATA_PROGRESS:I = 0x11

.field static final MSG_ENROLMENT_DONE:I = 0x5

.field static final MSG_ENROLMENT_FAILED:I = 0x8

.field static final MSG_ENROLMENT_LAST_TOUCH:I = 0xb

.field static final MSG_ENROLMENT_MASK_LIST:I = 0xd

.field static final MSG_ENROLMENT_NEXT_TOUCH:I = 0xc

.field static final MSG_ENROLMENT_SEND_GUIDE_DATA:I = 0xa

.field static final MSG_ENROLMENT_TOUCHES_QUALITY:I = 0x9

.field static final MSG_ENROL_PROGRESS:I = 0x4

.field private static final MSG_FINGER_AUTH_ERROR:I = 0x3eb

.field private static final MSG_FINGER_AUTH_FAIL:I = 0x3ea

.field private static final MSG_FINGER_AUTH_HELP:I = 0x3ec

.field private static final MSG_FINGER_AUTH_SUCCESS:I = 0x3e9

.field static final MSG_FINGER_PRESENT:I = 0x2

.field static final MSG_FINGER_UP:I = 0x3

.field static final MSG_IDENTIFY_MATCH:I = 0x6

.field static final MSG_IDENTIFY_NO_MATCH:I = 0x7

.field private static final MSG_REFRESH_FINGERPRINT_TEMPLATES:I = 0x3e8

.field public static final MSG_VERIFY_FINGER_DOWN:I = 0x20

.field public static final MSG_VERIFY_FINGER_UP:I = 0x21

.field public static final MSG_VERIFY_RESULT_CANCELED:I = 0x19

.field public static final MSG_VERIFY_RESULT_FAILURE:I = 0x18

.field public static final MSG_VERIFY_RESULT_NOT_ENABLED:I = 0x1e

.field public static final MSG_VERIFY_RESULT_NOT_REGISTERED_FINGERPRINT:I = 0x1c

.field public static final MSG_VERIFY_RESULT_NOT_SUPPORT:I = 0x1b

.field public static final MSG_VERIFY_RESULT_NO_MATCH:I = 0x1a

.field public static final MSG_VERIFY_RESULT_SENSOR_ERROR:I = 0x1f

.field public static final MSG_VERIFY_RESULT_SUCCESS:I = 0x17

.field public static final MSG_VERIFY_RESULT_TIMEOUT:I = 0x1d

.field public static final MSG_VERIFY_STATUS_INPUTTING:I = 0x15

.field public static final MSG_VERIFY_STATUS_INPUT_COMPLETED:I = 0x16

.field public static final MSG_VERIFY_STATUS_WAITING_FOR_INPUT:I = 0x14

.field static final MSG_WAITING_FINGER:I = 0x1

.field private static final PROGRESS_BAR_MAX:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "FingerPrint"

.field private static mBundle:Landroid/os/Bundle;

.field private static mGuidedDataBundle:Landroid/os/Bundle;

.field private static mLock:Ljava/lang/Object;

.field private static mToken:[B

.field private static mZTEFingerprintManager:Lcom/zte/fingerprint/main/ZTEFingerprintManager;


# instance fields
.field private idr:Landroid/os/IBinder$DeathRecipient;

.field private mAuthCallback:Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;

.field private mCaptureCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;

.field private mCaptureListener:Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;

.field private final mContext:Landroid/content/Context;

.field private mEnrolCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;

.field private mEnrollmentCallback:Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;

.field private mEnrollmentRemaining:I

.field private mEnrollmentSteps:I

.field private mEventhHandler:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;

.field private mGuidedDataCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedDataCallback;

.field private mIdentifyCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;

.field private mService:Lcom/android/fingerprint/FingerprintDelegate;

.field private mStartEnrollment:Z

.field private mStartFingerprint:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mLock:Ljava/lang/Object;

    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    new-instance v0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$1;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$1;-><init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->idr:Landroid/os/IBinder$DeathRecipient;

    .line 798
    new-instance v0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$2;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$2;-><init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mAuthCallback:Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;

    .line 808
    new-instance v0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$3;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$3;-><init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mCaptureListener:Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;

    .line 919
    new-instance v0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$4;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$4;-><init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrollmentCallback:Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;

    .line 571
    iput-object p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mContext:Landroid/content/Context;

    .line 572
    invoke-static {}, Lcom/android/fingerprint/FingerprintDelegate;->getFingerprintDelegate()Lcom/android/fingerprint/FingerprintDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mService:Lcom/android/fingerprint/FingerprintDelegate;

    .line 573
    new-instance v0, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;-><init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;

    .line 574
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mBundle:Landroid/os/Bundle;

    .line 575
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    .line 576
    return-void
.end method

.method private PackGuidedData()V
    .locals 50

    .prologue
    .line 241
    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "progress"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 242
    .local v30, "mGuidedProgress":I
    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "next_direction"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v31

    .line 243
    .local v31, "mGuidedNextDirection":I
    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "acceptance"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 244
    .local v6, "mGuidedAcceptance":I
    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "stitched"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    const/4 v7, 0x0

    .line 245
    .local v7, "mGuidedStitched":Z
    :goto_0
    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "immobile"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v8, 0x0

    .line 246
    .local v8, "mGuidedImmobile":Z
    :goto_1
    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "reject_reason"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v45

    .line 247
    .local v45, "reason":I
    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskNumber"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    .line 248
    .local v44, "mGuidedNumberOfMask":I
    const/16 v42, 0x0

    .line 249
    .local v42, "mGuidedLowCoverage":Z
    const/16 v43, 0x0

    .line 250
    .local v43, "mGuidedLowQuality":Z
    sparse-switch v45, :sswitch_data_0

    .line 262
    :goto_2
    new-instance v9, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRejectReasons;

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-direct {v9, v0, v1, v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRejectReasons;-><init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;ZZ)V

    .line 263
    .local v9, "mGuidedRejectReasons":Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRejectReasons;
    new-instance v4, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedResult;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedResult;-><init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;IZZLcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRejectReasons;)V

    .line 264
    .local v4, "mGuidedResult":Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedResult;
    new-instance v12, Landroid/graphics/Point;

    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "lastTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x0

    aget v5, v5, v11

    sget-object v11, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "lastTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x1

    aget v11, v11, v17

    invoke-direct {v12, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 265
    .local v12, "lastTouch_bottom_left":Landroid/graphics/Point;
    new-instance v13, Landroid/graphics/Point;

    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "lastTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x2

    aget v5, v5, v11

    sget-object v11, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "lastTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x3

    aget v11, v11, v17

    invoke-direct {v13, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 266
    .local v13, "lastTouch_bottom_right":Landroid/graphics/Point;
    new-instance v14, Landroid/graphics/Point;

    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "lastTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x4

    aget v5, v5, v11

    sget-object v11, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "lastTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x5

    aget v11, v11, v17

    invoke-direct {v14, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 267
    .local v14, "lastTouch_top_left":Landroid/graphics/Point;
    new-instance v15, Landroid/graphics/Point;

    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "lastTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x6

    aget v5, v5, v11

    sget-object v11, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "lastTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x7

    aget v11, v11, v17

    invoke-direct {v15, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 268
    .local v15, "lastTouch_top_right":Landroid/graphics/Point;
    new-instance v18, Landroid/graphics/Point;

    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "nextTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x0

    aget v5, v5, v11

    sget-object v11, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "nextTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x1

    aget v11, v11, v17

    move-object/from16 v0, v18

    invoke-direct {v0, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 269
    .local v18, "nextTouch_bottom_left":Landroid/graphics/Point;
    new-instance v19, Landroid/graphics/Point;

    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "nextTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x2

    aget v5, v5, v11

    sget-object v11, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "nextTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x3

    aget v11, v11, v17

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 270
    .local v19, "nextTouch_bottom_right":Landroid/graphics/Point;
    new-instance v20, Landroid/graphics/Point;

    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "nextTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x4

    aget v5, v5, v11

    sget-object v11, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "nextTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x5

    aget v11, v11, v17

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 271
    .local v20, "nextTouch_top_left":Landroid/graphics/Point;
    new-instance v21, Landroid/graphics/Point;

    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "nextTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x6

    aget v5, v5, v11

    sget-object v11, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "nextTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x7

    aget v11, v11, v17

    move-object/from16 v0, v21

    invoke-direct {v0, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 272
    .local v21, "nextTouch_top_right":Landroid/graphics/Point;
    new-instance v10, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;-><init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 273
    .local v10, "mGuidedLastTouch":Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;
    new-instance v16, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v21}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;-><init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 275
    .local v16, "mGuidedNextTouch":Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v40, "guidedMaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;>;"
    const/16 v41, 0x0

    .local v41, "i":I
    :goto_3
    move/from16 v0, v41

    move/from16 v1, v44

    if-lt v0, v1, :cond_2

    .line 302
    new-instance v35, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedMaskList;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v40

    move/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedMaskList;-><init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;Ljava/util/ArrayList;I)V

    .line 304
    .local v35, "mGuidedMaskList":Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedMaskList;
    new-instance v28, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedData;

    move-object/from16 v29, p0

    move-object/from16 v32, v4

    move-object/from16 v33, v10

    move-object/from16 v34, v16

    invoke-direct/range {v28 .. v35}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedData;-><init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;IILcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedResult;Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedMaskList;)V

    .line 305
    .local v28, "mGuidedData":Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedData;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrolCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;

    move-object/from16 v0, v28

    invoke-interface {v5, v0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;->onProgress(Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedData;)V

    .line 306
    return-void

    .line 244
    .end local v4    # "mGuidedResult":Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedResult;
    .end local v7    # "mGuidedStitched":Z
    .end local v8    # "mGuidedImmobile":Z
    .end local v9    # "mGuidedRejectReasons":Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRejectReasons;
    .end local v10    # "mGuidedLastTouch":Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;
    .end local v12    # "lastTouch_bottom_left":Landroid/graphics/Point;
    .end local v13    # "lastTouch_bottom_right":Landroid/graphics/Point;
    .end local v14    # "lastTouch_top_left":Landroid/graphics/Point;
    .end local v15    # "lastTouch_top_right":Landroid/graphics/Point;
    .end local v16    # "mGuidedNextTouch":Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;
    .end local v18    # "nextTouch_bottom_left":Landroid/graphics/Point;
    .end local v19    # "nextTouch_bottom_right":Landroid/graphics/Point;
    .end local v20    # "nextTouch_top_left":Landroid/graphics/Point;
    .end local v21    # "nextTouch_top_right":Landroid/graphics/Point;
    .end local v28    # "mGuidedData":Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedData;
    .end local v35    # "mGuidedMaskList":Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedMaskList;
    .end local v40    # "guidedMaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;>;"
    .end local v41    # "i":I
    .end local v42    # "mGuidedLowCoverage":Z
    .end local v43    # "mGuidedLowQuality":Z
    .end local v44    # "mGuidedNumberOfMask":I
    .end local v45    # "reason":I
    :cond_0
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 245
    .restart local v7    # "mGuidedStitched":Z
    :cond_1
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 253
    .restart local v8    # "mGuidedImmobile":Z
    .restart local v42    # "mGuidedLowCoverage":Z
    .restart local v43    # "mGuidedLowQuality":Z
    .restart local v44    # "mGuidedNumberOfMask":I
    .restart local v45    # "reason":I
    :sswitch_0
    const/16 v43, 0x1

    .line 254
    goto/16 :goto_2

    .line 256
    :sswitch_1
    const/16 v42, 0x1

    .line 257
    goto/16 :goto_2

    .line 287
    .restart local v4    # "mGuidedResult":Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedResult;
    .restart local v9    # "mGuidedRejectReasons":Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRejectReasons;
    .restart local v10    # "mGuidedLastTouch":Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;
    .restart local v12    # "lastTouch_bottom_left":Landroid/graphics/Point;
    .restart local v13    # "lastTouch_bottom_right":Landroid/graphics/Point;
    .restart local v14    # "lastTouch_top_left":Landroid/graphics/Point;
    .restart local v15    # "lastTouch_top_right":Landroid/graphics/Point;
    .restart local v16    # "mGuidedNextTouch":Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;
    .restart local v18    # "nextTouch_bottom_left":Landroid/graphics/Point;
    .restart local v19    # "nextTouch_bottom_right":Landroid/graphics/Point;
    .restart local v20    # "nextTouch_top_left":Landroid/graphics/Point;
    .restart local v21    # "nextTouch_top_right":Landroid/graphics/Point;
    .restart local v40    # "guidedMaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;>;"
    .restart local v41    # "i":I
    :cond_2
    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x0

    aget v36, v5, v11

    .line 288
    .local v36, "bottomLeftX":I
    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x1

    aget v37, v5, v11

    .line 289
    .local v37, "bottomLeftY":I
    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x2

    aget v38, v5, v11

    .line 290
    .local v38, "bottomRightX":I
    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x3

    aget v39, v5, v11

    .line 291
    .local v39, "bottomRightY":I
    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x4

    aget v46, v5, v11

    .line 292
    .local v46, "topLeftX":I
    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x5

    aget v47, v5, v11

    .line 293
    .local v47, "topLeftY":I
    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x6

    aget v48, v5, v11

    .line 294
    .local v48, "topRightX":I
    sget-object v5, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x7

    aget v49, v5, v11

    .line 295
    .local v49, "topRightY":I
    new-instance v26, Landroid/graphics/Point;

    move-object/from16 v0, v26

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 296
    .local v26, "pointTopLeft":Landroid/graphics/Point;
    new-instance v27, Landroid/graphics/Point;

    move-object/from16 v0, v27

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 297
    .local v27, "pointTopRight":Landroid/graphics/Point;
    new-instance v24, Landroid/graphics/Point;

    move-object/from16 v0, v24

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 298
    .local v24, "pointBottomLeft":Landroid/graphics/Point;
    new-instance v25, Landroid/graphics/Point;

    move-object/from16 v0, v25

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 299
    .local v25, "pointBottomRight":Landroid/graphics/Point;
    new-instance v22, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;

    move-object/from16 v23, p0

    invoke-direct/range {v22 .. v27}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;-><init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 300
    .local v22, "mask":Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedRect;
    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_3

    .line 250
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic access$0(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)V
    .locals 0

    .prologue
    .line 548
    sput-object p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mZTEFingerprintManager:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    return-void
.end method

.method static synthetic access$1(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;

    return-object v0
.end method

.method static synthetic access$10(Lcom/zte/fingerprint/main/ZTEFingerprintManager;Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mStartEnrollment:Z

    return-void
.end method

.method static synthetic access$11(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrollmentCallback:Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mCaptureCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;

    return-object v0
.end method

.method static synthetic access$3(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mIdentifyCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;

    return-object v0
.end method

.method static synthetic access$4(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrolCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;

    return-object v0
.end method

.method static synthetic access$5()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 368
    sget-object v0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$6(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/android/fingerprint/FingerprintDelegate;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mService:Lcom/android/fingerprint/FingerprintDelegate;

    return-object v0
.end method

.method static synthetic access$7(Lcom/zte/fingerprint/main/ZTEFingerprintManager;Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mStartFingerprint:Z

    return-void
.end method

.method static synthetic access$8(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mAuthCallback:Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;

    return-object v0
.end method

.method static synthetic access$9(Lcom/zte/fingerprint/main/ZTEFingerprintManager;I)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrollmentSteps:I

    return-void
.end method

.method private cancelEnrollment()V
    .locals 3

    .prologue
    .line 882
    iget-boolean v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mStartEnrollment:Z

    if-eqz v0, :cond_0

    .line 883
    const-string v0, "FingerPrint"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in cancelEnrollment threadname = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;

    new-instance v1, Lcom/zte/fingerprint/main/ZTEFingerprintManager$8;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$8;-><init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)V

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->post(Ljava/lang/Runnable;)Z

    .line 898
    :cond_0
    return-void
.end method

.method private cancelFingerprint()V
    .locals 3

    .prologue
    .line 833
    iget-boolean v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mStartFingerprint:Z

    if-eqz v0, :cond_0

    .line 834
    const-string v0, "FingerPrint"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in cancelFingerprint threadname"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;

    new-instance v1, Lcom/zte/fingerprint/main/ZTEFingerprintManager$5;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$5;-><init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)V

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->post(Ljava/lang/Runnable;)Z

    .line 847
    :cond_0
    return-void
.end method

.method public static getManager(Landroid/content/Context;)Lcom/zte/fingerprint/main/ZTEFingerprintManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 560
    sget-object v0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mZTEFingerprintManager:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->open(Landroid/content/Context;)Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mZTEFingerprintManager:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    goto :goto_0
.end method

.method private getProgress(II)I
    .locals 1
    .param p1, "steps"    # I
    .param p2, "remaining"    # I

    .prologue
    .line 910
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 911
    const/4 v0, 0x0

    .line 914
    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, p1

    goto :goto_0
.end method

.method public static open(Landroid/content/Context;)Lcom/zte/fingerprint/main/ZTEFingerprintManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 551
    sget-object v0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mZTEFingerprintManager:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    invoke-direct {v0, p0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mZTEFingerprintManager:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    .line 555
    :cond_0
    sget-object v0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mZTEFingerprintManager:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    return-object v0
.end method

.method public static setToken([B)V
    .locals 0
    .param p0, "token"    # [B

    .prologue
    .line 941
    sput-object p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mToken:[B

    .line 942
    return-void
.end method

.method private startEnrollment([B)V
    .locals 2
    .param p1, "mToken"    # [B

    .prologue
    .line 865
    const-string v0, "FingerPrint"

    const-string v1, "ZTEFingerprintManager startEnrollment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;

    new-instance v1, Lcom/zte/fingerprint/main/ZTEFingerprintManager$7;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$7;-><init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)V

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->post(Ljava/lang/Runnable;)Z

    .line 878
    return-void
.end method

.method private startFingerprint()V
    .locals 2

    .prologue
    .line 850
    const-string v0, "FingerPrint"

    const-string v1, "ZTEFingerprintManager startFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;

    new-instance v1, Lcom/zte/fingerprint/main/ZTEFingerprintManager$6;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$6;-><init>(Lcom/zte/fingerprint/main/ZTEFingerprintManager;)V

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/main/ZTEFingerprintManager$EventHandler;->post(Ljava/lang/Runnable;)Z

    .line 863
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 676
    const-string v0, "FingerPrint"

    const-string v1, "in abort"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-direct {p0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->cancelFingerprint()V

    .line 678
    invoke-direct {p0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->cancelEnrollment()V

    .line 680
    return-void
.end method

.method public connect()I
    .locals 1

    .prologue
    .line 722
    const/4 v0, -0x1

    return v0
.end method

.method public deleteFingerData(I)V
    .locals 1
    .param p1, "fingerId"    # I

    .prologue
    .line 687
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mService:Lcom/android/fingerprint/FingerprintDelegate;

    invoke-virtual {v0, p1}, Lcom/android/fingerprint/FingerprintDelegate;->deleteFingerData(I)I

    .line 688
    return-void
.end method

.method public disconnect()I
    .locals 1

    .prologue
    .line 738
    const/4 v0, -0x1

    return v0
.end method

.method public doclockoff()I
    .locals 1

    .prologue
    .line 786
    const/4 v0, -0x1

    return v0
.end method

.method public doclockon()I
    .locals 1

    .prologue
    .line 777
    const/4 v0, -0x1

    return v0
.end method

.method public doselftest(I)I
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 768
    const/4 v0, -0x1

    return v0
.end method

.method public dotest(Z)Z
    .locals 1
    .param p1, "on_off"    # Z

    .prologue
    .line 795
    const/4 v0, 0x0

    return v0
.end method

.method public fingerdown()I
    .locals 1

    .prologue
    .line 749
    const/4 v0, -0x1

    return v0
.end method

.method public fingerup()I
    .locals 1

    .prologue
    .line 759
    const/4 v0, -0x1

    return v0
.end method

.method public getIdName(I)Ljava/lang/String;
    .locals 1
    .param p1, "fingerId"    # I

    .prologue
    .line 692
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mService:Lcom/android/fingerprint/FingerprintDelegate;

    invoke-virtual {v0, p1}, Lcom/android/fingerprint/FingerprintDelegate;->getIdName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIds()[I
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mService:Lcom/android/fingerprint/FingerprintDelegate;

    invoke-virtual {v0}, Lcom/android/fingerprint/FingerprintDelegate;->getIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getmEnrollmentRemaining()I
    .locals 1

    .prologue
    .line 903
    iget v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrollmentRemaining:I

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 591
    return-void
.end method

.method public setCaptureCallback(Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;)V
    .locals 0
    .param p1, "captureCallback"    # Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;

    .prologue
    .line 583
    iput-object p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mCaptureCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;

    .line 584
    return-void
.end method

.method public setIdName(ILjava/lang/String;)V
    .locals 1
    .param p1, "fingerId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 698
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mService:Lcom/android/fingerprint/FingerprintDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/fingerprint/FingerprintDelegate;->setIdName(ILjava/lang/String;)Z

    .line 699
    return-void
.end method

.method public setmEnrollmentRemaining(I)V
    .locals 0
    .param p1, "mEnrollmentRemaining"    # I

    .prologue
    .line 907
    iput p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrollmentRemaining:I

    .line 908
    return-void
.end method

.method public startEnrol(Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;I)V
    .locals 3
    .param p1, "enrolCallback"    # Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;
    .param p2, "fingerId"    # I

    .prologue
    .line 604
    const-string v0, "FingerPrint"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ZTEFingerprintManager startEnrol mToken="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mToken:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    if-nez p1, :cond_0

    .line 606
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 608
    :cond_0
    iput-object p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrolCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;

    .line 609
    sget-object v0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mToken:[B

    invoke-direct {p0, v0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->startEnrollment([B)V

    .line 610
    return-void
.end method

.method public startEnrol(Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;ILcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;)V
    .locals 3
    .param p1, "enrolCallback"    # Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;
    .param p2, "fingerId"    # I
    .param p3, "captureCallback"    # Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;

    .prologue
    .line 612
    const-string v0, "FingerPrint"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ZTEFingerprintManager startEnrol mToken="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mToken:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    if-nez p1, :cond_0

    .line 614
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 615
    :cond_0
    iput-object p3, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mCaptureCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;

    .line 616
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mService:Lcom/android/fingerprint/FingerprintDelegate;

    iget-object v1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mCaptureListener:Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;

    invoke-virtual {v0, v1}, Lcom/android/fingerprint/FingerprintDelegate;->setCaptureCallback(Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;)V

    .line 617
    iput-object p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mEnrolCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;

    .line 618
    sget-object v0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mToken:[B

    invoke-direct {p0, v0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->startEnrollment([B)V

    .line 619
    return-void
.end method

.method public startIdentify(Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;[I)V
    .locals 0
    .param p1, "identifyCallback"    # Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;
    .param p2, "ids"    # [I

    .prologue
    .line 642
    iput-object p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mIdentifyCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;

    .line 643
    invoke-direct {p0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->startFingerprint()V

    .line 644
    return-void
.end method

.method public startIdentify(Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;[ILcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;)V
    .locals 2
    .param p1, "identifyCallback"    # Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;
    .param p2, "ids"    # [I
    .param p3, "captureCallback"    # Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mIdentifyCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$IdentifyCallback;

    .line 651
    iput-object p3, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mCaptureCallback:Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;

    .line 652
    iget-object v0, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mService:Lcom/android/fingerprint/FingerprintDelegate;

    iget-object v1, p0, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->mCaptureListener:Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;

    invoke-virtual {v0, v1}, Lcom/android/fingerprint/FingerprintDelegate;->setCaptureCallback(Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;)V

    .line 653
    invoke-direct {p0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->startFingerprint()V

    .line 654
    return-void
.end method

.method public updateTA(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .prologue
    .line 710
    const/4 v0, 0x0

    return v0
.end method
