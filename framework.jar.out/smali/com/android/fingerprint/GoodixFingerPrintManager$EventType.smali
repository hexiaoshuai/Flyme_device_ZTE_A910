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
.field public static final EVENT_COMMON_BASE:I = 0x0

.field public static final EVENT_COMMON_NOTIFY_INFO:I = 0x7

.field public static final EVENT_COMMON_TOUCH:I = 0x1

.field public static final EVENT_COMMON_UNTOUCH:I = 0x2

.field public static final EVENT_DELETE_BASE:I = 0x1000

.field public static final EVENT_DELETE_NOEXIST:I = 0x1002

.field public static final EVENT_DELETE_SUCCESS:I = 0x1001

.field public static final EVENT_DELETE_TIMEOUT:I = 0x1003

.field public static final EVENT_ENROLL_BAD_IMAGE:I = 0x15

.field public static final EVENT_ENROLL_BASE:I = 0x10

.field public static final EVENT_ENROLL_CANCEL:I = 0x19

.field public static final EVENT_ENROLL_COMPLETE:I = 0x18

.field public static final EVENT_ENROLL_DUPLICATE_AREA:I = 0x1b

.field public static final EVENT_ENROLL_DUPLICATE_FINGER:I = 0x1a

.field public static final EVENT_ENROLL_GET_DATA_FAILED:I = 0x16

.field public static final EVENT_ENROLL_LOW_COVER:I = 0x14

.field public static final EVENT_ENROLL_NO_EXTRAINFO:I = 0x13

.field public static final EVENT_ENROLL_NO_PIECE:I = 0x12

.field public static final EVENT_ENROLL_PIECE:I = 0x11

.field public static final EVENT_ENROLL_TIMEOUT:I = 0x17

.field public static final EVENT_VERIFY_BAD_IMAGE:I = 0x104

.field public static final EVENT_VERIFY_BASE:I = 0x100

.field public static final EVENT_VERIFY_FAILED:I = 0x103

.field public static final EVENT_VERIFY_GET_DATA_FAILED:I = 0x105

.field public static final EVENT_VERIFY_SUCCESS:I = 0x101

.field public static final EVENT_VERIFY_TIMEOUT:I = 0x102

.field public static final EVENT_VERIFY_WAITING_INPUT:I = 0x106


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMsgInfo(I)Ljava/lang/String;
    .locals 1
    .param p0, "msg"    # I

    .prologue
    .line 724
    const-string/jumbo v0, "unknown msg"

    .line 725
    .local v0, "info":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 808
    const-string/jumbo v0, "unknow msg"

    .line 811
    :goto_0
    return-object v0

    .line 727
    :sswitch_0
    const-string v0, "EVENT_COMMON_BASE"

    .line 728
    goto :goto_0

    .line 730
    :sswitch_1
    const-string v0, "EVENT_COMMON_NOTIFY_INFO"

    .line 731
    goto :goto_0

    .line 733
    :sswitch_2
    const-string v0, "EVENT_COMMON_TOUCH"

    .line 734
    goto :goto_0

    .line 736
    :sswitch_3
    const-string v0, "EVENT_COMMON_UNTOUCH"

    .line 737
    goto :goto_0

    .line 739
    :sswitch_4
    const-string v0, "EVENT_DELETE_BASE"

    .line 740
    goto :goto_0

    .line 742
    :sswitch_5
    const-string v0, "EVENT_DELETE_NOEXIST"

    .line 743
    goto :goto_0

    .line 745
    :sswitch_6
    const-string v0, "EVENT_DELETE_SUCCESS"

    .line 746
    goto :goto_0

    .line 748
    :sswitch_7
    const-string v0, "EVENT_DELETE_TIMEOUT"

    .line 749
    goto :goto_0

    .line 751
    :sswitch_8
    const-string v0, "EVENT_VERIFY_BAD_IMAGE"

    .line 752
    goto :goto_0

    .line 754
    :sswitch_9
    const-string v0, "EVENT_VERIFY_BASE"

    .line 755
    goto :goto_0

    .line 757
    :sswitch_a
    const-string v0, "EVENT_VERIFY_FAILED"

    .line 758
    goto :goto_0

    .line 760
    :sswitch_b
    const-string v0, "EVENT_VERIFY_GET_DATA_FAILED"

    .line 761
    goto :goto_0

    .line 763
    :sswitch_c
    const-string v0, "EVENT_VERIFY_WAITING_INPUT"

    .line 764
    goto :goto_0

    .line 766
    :sswitch_d
    const-string v0, "EVENT_VERIFY_SUCCESS"

    .line 767
    goto :goto_0

    .line 769
    :sswitch_e
    const-string v0, "EVENT_VERIFY_TIMEOUT"

    .line 770
    goto :goto_0

    .line 772
    :sswitch_f
    const-string v0, "EVENT_ENROLL_BAD_IMAGE"

    .line 773
    goto :goto_0

    .line 775
    :sswitch_10
    const-string v0, "EVENT_ENROLL_DUPLICATE_FINGER"

    .line 776
    goto :goto_0

    .line 778
    :sswitch_11
    const-string v0, "EVENT_ENROLL_DUPLICATE_AREA"

    .line 779
    goto :goto_0

    .line 781
    :sswitch_12
    const-string v0, "EVENT_ENROLL_BASE"

    .line 782
    goto :goto_0

    .line 784
    :sswitch_13
    const-string v0, "EVENT_ENROLL_CANCEL"

    .line 785
    goto :goto_0

    .line 787
    :sswitch_14
    const-string v0, "EVENT_ENROLL_COMPLETE"

    .line 788
    goto :goto_0

    .line 790
    :sswitch_15
    const-string v0, "EVENT_ENROLL_GET_DATA_FAILED"

    .line 791
    goto :goto_0

    .line 793
    :sswitch_16
    const-string v0, "EVENT_ENROLL_LOW_COVER"

    .line 794
    goto :goto_0

    .line 796
    :sswitch_17
    const-string v0, "EVENT_ENROLL_NO_EXTRAINFO"

    .line 797
    goto :goto_0

    .line 799
    :sswitch_18
    const-string v0, "EVENT_ENROLL_NO_PIECE"

    .line 800
    goto :goto_0

    .line 802
    :sswitch_19
    const-string v0, "EVENT_ENROLL_PIECE"

    .line 803
    goto :goto_0

    .line 805
    :sswitch_1a
    const-string v0, "EVENT_ENROLL_TIMEOUT"

    .line 806
    goto :goto_0

    .line 725
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x7 -> :sswitch_1
        0x10 -> :sswitch_12
        0x11 -> :sswitch_19
        0x12 -> :sswitch_18
        0x13 -> :sswitch_17
        0x14 -> :sswitch_16
        0x15 -> :sswitch_f
        0x16 -> :sswitch_15
        0x17 -> :sswitch_1a
        0x18 -> :sswitch_14
        0x19 -> :sswitch_13
        0x1a -> :sswitch_10
        0x1b -> :sswitch_11
        0x100 -> :sswitch_9
        0x101 -> :sswitch_d
        0x102 -> :sswitch_e
        0x103 -> :sswitch_a
        0x104 -> :sswitch_8
        0x105 -> :sswitch_b
        0x106 -> :sswitch_c
        0x1000 -> :sswitch_4
        0x1001 -> :sswitch_6
        0x1002 -> :sswitch_5
        0x1003 -> :sswitch_7
    .end sparse-switch
.end method
