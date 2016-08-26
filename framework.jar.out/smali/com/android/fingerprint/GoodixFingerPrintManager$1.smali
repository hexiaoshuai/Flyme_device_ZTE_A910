.class Lcom/android/fingerprint/GoodixFingerPrintManager$1;
.super Landroid/os/Handler;
.source "GoodixFingerPrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fingerprint/GoodixFingerPrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;


# direct methods
.method constructor <init>(Lcom/android/fingerprint/GoodixFingerPrintManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x66

    const/4 v3, -0x1

    .line 92
    const-string v0, "GoodixFingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v0, "GoodixFingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v0, "GoodixFingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mAlipayTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$000(Lcom/android/fingerprint/GoodixFingerPrintManager;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v4, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mAlipayTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$000(Lcom/android/fingerprint/GoodixFingerPrintManager;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 97
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mAlipayTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$002(Lcom/android/fingerprint/GoodixFingerPrintManager;Ljava/util/Timer;)Ljava/util/Timer;

    .line 99
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 253
    const-string v0, "GoodixFingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no such a msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 257
    return-void

    .line 101
    :sswitch_0
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mCaptureCallback:Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$100(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mCaptureCallback:Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$100(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;->onInput()V

    .line 106
    :goto_1
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$200(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    const-string v0, "GoodixFingerPrintManager"

    const-string v1, "MSG_DOWN AbstractFingerprint.STATUS_INPUTTING----"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$200(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    sget v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->STATUS_INPUTTING:I

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mUserData:I
    invoke-static {}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$300()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V

    goto :goto_0

    .line 104
    :cond_2
    const-string v0, "GoodixFingerPrintManager"

    const-string/jumbo v1, "mCaptureCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 113
    :sswitch_1
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mCaptureCallback:Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$100(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mCaptureCallback:Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$100(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;->onCaptureCompleted()V

    .line 118
    :goto_2
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$200(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    const-string v0, "GoodixFingerPrintManager"

    const-string v1, "MSG_IMAGE AbstractFingerprint.STATUS_INPUT_COMPLETED----"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$200(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    sget v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->STATUS_INPUT_COMPLETED:I

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mUserData:I
    invoke-static {}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$300()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V

    goto :goto_0

    .line 116
    :cond_3
    const-string v0, "GoodixFingerPrintManager"

    const-string/jumbo v1, "mCaptureCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 125
    :sswitch_2
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mCaptureCallback:Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$100(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 126
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mCaptureCallback:Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$100(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;->onWaitingForInput()V

    .line 130
    :goto_3
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$200(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    const-string v0, "GoodixFingerPrintManager"

    const-string v1, "MSG_WAIT_DOWN AbstractFingerprint.STATUS_WAITING_FOR_INPUT----"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$200(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    sget v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->STATUS_WAITING_FOR_INPUT:I

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mUserData:I
    invoke-static {}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$300()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V

    goto/16 :goto_0

    .line 128
    :cond_4
    const-string v0, "GoodixFingerPrintManager"

    const-string/jumbo v1, "mCaptureCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 137
    :sswitch_3
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mCaptureCallback:Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$100(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 138
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mCaptureCallback:Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$100(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;->onCaptureFailed(I)V

    goto/16 :goto_0

    .line 140
    :cond_5
    const-string v0, "GoodixFingerPrintManager"

    const-string/jumbo v1, "mCaptureCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 145
    :sswitch_4
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mEnrollCallback:Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$400(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 146
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mEnrollCallback:Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$400(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;->onProgress(II)V

    goto/16 :goto_0

    .line 148
    :cond_6
    const-string v0, "GoodixFingerPrintManager"

    const-string/jumbo v1, "mEnrollCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 153
    :sswitch_5
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mEnrollCallback:Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$400(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 154
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mEnrollCallback:Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$400(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;->onEnrolled(I)V

    goto/16 :goto_0

    .line 156
    :cond_7
    const-string v0, "GoodixFingerPrintManager"

    const-string/jumbo v1, "mEnrollCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 161
    :sswitch_6
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mEnrollCallback:Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$400(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 162
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mEnrollCallback:Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$400(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;->onEnrollmentFailed()V

    goto/16 :goto_0

    .line 164
    :cond_8
    const-string v0, "GoodixFingerPrintManager"

    const-string/jumbo v1, "mEnrollCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 169
    :sswitch_7
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyCallback:Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$500(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 170
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyCallback:Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$500(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;->onIdentified(I)V

    .line 174
    :goto_4
    const-string v0, "GoodixFingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_VERIFY_SUCCESS -back--msg.arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---mUserData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mUserData:I
    invoke-static {}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$300()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v0, "GoodixFingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_VERIFY_SUCCESS ---msg.arg2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---mUserData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mUserData:I
    invoke-static {}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$300()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$200(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$200(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    const/16 v1, 0x64

    iget v2, p1, Landroid/os/Message;->arg1:I

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mUserData:I
    invoke-static {}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$300()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto/16 :goto_0

    .line 172
    :cond_9
    const-string v0, "GoodixFingerPrintManager"

    const-string/jumbo v1, "mIdentifyCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 184
    :sswitch_8
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyCallback:Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$500(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 185
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyCallback:Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$500(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;->onNoMatch()V

    .line 189
    :goto_5
    const-string v0, "GoodixFingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_VERIFY_FAILED ---msg.arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---mUserData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mUserData:I
    invoke-static {}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$300()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$200(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$200(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    const/16 v1, 0x67

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mUserData:I
    invoke-static {}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$300()I

    move-result v2

    invoke-interface {v0, v1, v3, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto/16 :goto_0

    .line 187
    :cond_a
    const-string v0, "GoodixFingerPrintManager"

    const-string/jumbo v1, "mEnrollCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 194
    :sswitch_9
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$200(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$200(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    const/16 v1, 0x71

    iget v2, p1, Landroid/os/Message;->arg1:I

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mUserData:I
    invoke-static {}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$300()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto/16 :goto_0

    .line 199
    :sswitch_a
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$200(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/fingerprint/GoodixFingerPrintManager$1;->this$0:Lcom/android/fingerprint/GoodixFingerPrintManager;

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {v0}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$200(Lcom/android/fingerprint/GoodixFingerPrintManager;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    # getter for: Lcom/android/fingerprint/GoodixFingerPrintManager;->mUserData:I
    invoke-static {}, Lcom/android/fingerprint/GoodixFingerPrintManager;->access$300()I

    move-result v1

    invoke-interface {v0, v4, v3, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto/16 :goto_0

    .line 99
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x96 -> :sswitch_4
        0x97 -> :sswitch_5
        0x98 -> :sswitch_6
        0xc8 -> :sswitch_7
        0xc9 -> :sswitch_8
        0xca -> :sswitch_9
        0xcb -> :sswitch_a
    .end sparse-switch
.end method
