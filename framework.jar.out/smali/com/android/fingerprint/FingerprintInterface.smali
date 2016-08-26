.class public interface abstract Lcom/android/fingerprint/FingerprintInterface;
.super Ljava/lang/Object;
.source "FingerprintInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;,
        Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;,
        Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;
    }
.end annotation


# static fields
.field public static final MSG_CAPTURE_FAILED_TOO_FAST:I = 0x6a

.field public static final MSG_GOOD_FINGER_PLACEMENT:I = 0x64

.field public static final MSG_OTHERS:I = 0x69

.field public static final MSG_REJECTED_DUPLICATE_AREA:I = 0x6c

.field public static final MSG_REJECTED_DUPLICATE_FINGER:I = 0x6b

.field public static final MSG_REJECTED_LOW_COVERAGE:I = 0x68

.field public static final MSG_REJECTED_POOR_IMAGE_QUALITY:I = 0x67

.field public static final MSG_TOUCH_OUTSIDE_ENROLLED_AREA:I = 0x66

.field public static final MSG_TOUCH_TOO_SIMILAR_TO_PREVIOUS_ONE:I = 0x65


# virtual methods
.method public abstract cancelEnrol()V
.end method

.method public abstract cancelIdentify()V
.end method

.method public abstract deleteFingerData(I)I
.end method

.method public abstract getIds()[I
.end method

.method public abstract getNameById(I)Ljava/lang/String;
.end method

.method public abstract runCheckerboardTest()I
.end method

.method public abstract runSelfTest()I
.end method

.method public abstract setCaptureCallback(Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;)V
.end method

.method public abstract setIdName(ILjava/lang/String;)Z
.end method

.method public abstract startEnrol(Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;I)I
.end method

.method public abstract startIdentify(Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;[I)I
.end method

.method public abstract startIdentify2(Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;I[II)I
.end method

.method public abstract updateTA(Ljava/lang/String;Ljava/lang/String;)Z
.end method
