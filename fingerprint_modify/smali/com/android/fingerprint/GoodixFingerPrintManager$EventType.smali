.class Lcom/android/fingerprint/GoodixFingerPrintManager$EventType;
.super Ljava/lang/Object;
.source "GoodixFingerPrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fingerprint/GoodixFingerPrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventType"
.end annotation


# static fields
.field public static final EVENT_CAPTURE_IMAGE:I = 0x1f42

.field public static final EVENT_COMMON_BASE:I = 0x10000000

.field public static final EVENT_COMMON_NOTIFY_INFO:I = 0x10000007

.field public static final EVENT_COMMON_TOUCH:I = 0x10000001

.field public static final EVENT_COMMON_UNTOUCH:I = 0x10000002

.field public static final EVENT_COMMON_WAITING_INPUT:I = 0x10000003

.field public static final EVENT_DATA_READY:I = 0x1774

.field public static final EVENT_DELETE_BASE:I = 0x10001000

.field public static final EVENT_DELETE_NOEXIST:I = 0x10001002

.field public static final EVENT_DELETE_SUCCESS:I = 0x10001001

.field public static final EVENT_DELETE_TIMEOUT:I = 0x10001003

.field public static final EVENT_ENROLL_BAD_IMAGE:I = 0x10000015

.field public static final EVENT_ENROLL_BASE:I = 0x10000010

.field public static final EVENT_ENROLL_CANCEL:I = 0x10000019

.field public static final EVENT_ENROLL_CAPTURE_FAILED:I = 0x1000001b

.field public static final EVENT_ENROLL_CAPTURE_INTERRUPTED:I = 0x1000001c

.field public static final EVENT_ENROLL_CAPTURE_SUCCESSED:I = 0x1000001a

.field public static final EVENT_ENROLL_COMPLETE:I = 0x10000018

.field public static final EVENT_ENROLL_DUMPLICATE_FINGER:I = 0x1000001d

.field public static final EVENT_ENROLL_GET_DATA_FAILED:I = 0x10000016

.field public static final EVENT_ENROLL_LOW_COVER:I = 0x10000014

.field public static final EVENT_ENROLL_NO_EXTRAINFO:I = 0x10000013

.field public static final EVENT_ENROLL_NO_PIECE:I = 0x10000012

.field public static final EVENT_ENROLL_PIECE:I = 0x10000011

.field public static final EVENT_ENROLL_TIMEOUT:I = 0x10000017

.field public static final EVENT_IMAGE_RETURN:I = 0x1771

.field public static final EVENT_PIXEL_OPEN_SHORT_TEST:I = 0x1005

.field public static final EVENT_RECOGNIZE_IMAGE_ACQUISITION:I = 0x1f41

.field public static final EVENT_REGISTER_IMAGE_ACQUISITION:I = 0x1f40

.field public static final EVENT_SCENES_RETURN:I = 0x1772

.field public static final EVENT_TEST_READY:I = 0x1770

.field public static final EVENT_TIME_RETURN:I = 0x1773

.field public static final EVENT_VERIFY_BAD_IMAGE:I = 0x10000104

.field public static final EVENT_VERIFY_BASE:I = 0x10000100

.field public static final EVENT_VERIFY_CAPTURE_FAILED:I = 0x10000107

.field public static final EVENT_VERIFY_CAPTURE_SUCCESSED:I = 0x10000106

.field public static final EVENT_VERIFY_FAILED:I = 0x10000103

.field public static final EVENT_VERIFY_GET_DATA_FAILED:I = 0x10000105

.field public static final EVENT_VERIFY_INTERRUPTED:I = 0x10000108

.field public static final EVENT_VERIFY_SUCCESS:I = 0x10000101

.field public static final EVENT_VERIFY_TIMEOUT:I = 0x10000102


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMsgInfo(I)Ljava/lang/String;
    .locals 1
    .param p0, "msg"    # I

    .prologue
    .line 735
    const-string v0, "unknown msg"

    .line 736
    .local v0, "info":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 834
    const-string v0, "unknow msg"

    .line 837
    :goto_0
    return-object v0

    .line 738
    :sswitch_0
    const-string v0, "EVENT_COMMON_BASE"

    .line 739
    goto :goto_0

    .line 741
    :sswitch_1
    const-string v0, "EVENT_COMMON_NOTIFY_INFO"

    .line 742
    goto :goto_0

    .line 744
    :sswitch_2
    const-string v0, "EVENT_COMMON_TOUCH"

    .line 745
    goto :goto_0

    .line 747
    :sswitch_3
    const-string v0, "EVENT_COMMON_WAITING_INPUT"

    .line 748
    goto :goto_0

    .line 750
    :sswitch_4
    const-string v0, "EVENT_COMMON_UNTOUCH"

    .line 751
    goto :goto_0

    .line 753
    :sswitch_5
    const-string v0, "EVENT_DELETE_BASE"

    .line 754
    goto :goto_0

    .line 756
    :sswitch_6
    const-string v0, "EVENT_DELETE_NOEXIST"

    .line 757
    goto :goto_0

    .line 759
    :sswitch_7
    const-string v0, "EVENT_DELETE_SUCCESS"

    .line 760
    goto :goto_0

    .line 762
    :sswitch_8
    const-string v0, "EVENT_DELETE_TIMEOUT"

    .line 763
    goto :goto_0

    .line 765
    :sswitch_9
    const-string v0, "EVENT_VERIFY_BAD_IMAGE"

    .line 766
    goto :goto_0

    .line 768
    :sswitch_a
    const-string v0, "EVENT_VERIFY_BASE"

    .line 769
    goto :goto_0

    .line 771
    :sswitch_b
    const-string v0, "EVENT_VERIFY_FAILED"

    .line 772
    goto :goto_0

    .line 774
    :sswitch_c
    const-string v0, "EVENT_VERIFY_GET_DATA_FAILED"

    .line 775
    goto :goto_0

    .line 777
    :sswitch_d
    const-string v0, "EVENT_VERIFY_SUCCESS"

    .line 778
    goto :goto_0

    .line 780
    :sswitch_e
    const-string v0, "EVENT_VERIFY_TIMEOUT"

    .line 781
    goto :goto_0

    .line 783
    :sswitch_f
    const-string v0, "EVENT_VERIFY_CAPTURE_SUCCESSED"

    .line 784
    goto :goto_0

    .line 786
    :sswitch_10
    const-string v0, "EVENT_VERIFY_CAPTURE_FAILED"

    .line 787
    goto :goto_0

    .line 789
    :sswitch_11
    const-string v0, "EVENT_VERIFY_INTERRUPTED"

    .line 790
    goto :goto_0

    .line 792
    :sswitch_12
    const-string v0, "EVENT_ENROLL_BAD_IMAGE"

    .line 793
    goto :goto_0

    .line 795
    :sswitch_13
    const-string v0, "EVENT_ENROLL_BASE"

    .line 796
    goto :goto_0

    .line 798
    :sswitch_14
    const-string v0, "EVENT_ENROLL_CANCEL"

    .line 799
    goto :goto_0

    .line 801
    :sswitch_15
    const-string v0, "EVENT_ENROLL_COMPLETE"

    .line 802
    goto :goto_0

    .line 804
    :sswitch_16
    const-string v0, "EVENT_ENROLL_GET_DATA_FAILED"

    .line 805
    goto :goto_0

    .line 807
    :sswitch_17
    const-string v0, "EVENT_ENROLL_LOW_COVER"

    .line 808
    goto :goto_0

    .line 810
    :sswitch_18
    const-string v0, "EVENT_ENROLL_NO_EXTRAINFO"

    .line 811
    goto :goto_0

    .line 813
    :sswitch_19
    const-string v0, "EVENT_ENROLL_NO_PIECE"

    .line 814
    goto :goto_0

    .line 816
    :sswitch_1a
    const-string v0, "EVENT_ENROLL_PIECE"

    .line 817
    goto :goto_0

    .line 819
    :sswitch_1b
    const-string v0, "EVENT_ENROLL_TIMEOUT"

    .line 820
    goto :goto_0

    .line 822
    :sswitch_1c
    const-string v0, "EVENT_ENROLL_CAPTURE_SUCCESSED"

    .line 823
    goto :goto_0

    .line 825
    :sswitch_1d
    const-string v0, "EVENT_ENROLL_CAPTURE_FAILED"

    .line 826
    goto :goto_0

    .line 828
    :sswitch_1e
    const-string v0, "EVENT_ENROLL_CAPTURE_INTERRUPTED"

    .line 829
    goto :goto_0

    .line 831
    :sswitch_1f
    const-string v0, "EVENT_ENROLL_DUMPLICATE_FINGER"

    .line 832
    goto :goto_0

    .line 736
    :sswitch_data_0
    .sparse-switch
        0x10000000 -> :sswitch_0
        0x10000001 -> :sswitch_2
        0x10000002 -> :sswitch_4
        0x10000003 -> :sswitch_3
        0x10000007 -> :sswitch_1
        0x10000010 -> :sswitch_13
        0x10000011 -> :sswitch_1a
        0x10000012 -> :sswitch_19
        0x10000013 -> :sswitch_18
        0x10000014 -> :sswitch_17
        0x10000015 -> :sswitch_12
        0x10000016 -> :sswitch_16
        0x10000017 -> :sswitch_1b
        0x10000018 -> :sswitch_15
        0x10000019 -> :sswitch_14
        0x1000001a -> :sswitch_1c
        0x1000001b -> :sswitch_1d
        0x1000001c -> :sswitch_1e
        0x1000001d -> :sswitch_1f
        0x10000100 -> :sswitch_a
        0x10000101 -> :sswitch_d
        0x10000102 -> :sswitch_e
        0x10000103 -> :sswitch_b
        0x10000104 -> :sswitch_9
        0x10000105 -> :sswitch_c
        0x10000106 -> :sswitch_f
        0x10000107 -> :sswitch_10
        0x10000108 -> :sswitch_11
        0x10001000 -> :sswitch_5
        0x10001001 -> :sswitch_7
        0x10001002 -> :sswitch_6
        0x10001003 -> :sswitch_8
    .end sparse-switch
.end method
