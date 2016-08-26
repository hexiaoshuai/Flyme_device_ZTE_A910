.class public Lcom/zte/fingerprint/enroll/GoodixEnroll;
.super Lcom/zte/fingerprint/enroll/FingerprintEnroll;
.source "GoodixEnroll.java"

# interfaces
.implements Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;
.implements Lcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintEnrol"

.field private static final VIBRATE_MS_ACCEPTED:J = 0x32L

.field private static final VIBRATE_MS_REJECTED:J = 0x190L


# instance fields
.field afterExit:Z

.field private animFadeInOut:Landroid/view/animation/Animation;

.field animation:I

.field private animationBg:Landroid/widget/ImageView;

.field private animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private animationMask:Landroid/widget/ImageView;

.field private continueTip:Landroid/widget/TextView;

.field private continueTipSml:Landroid/widget/TextView;

.field private continuousFailCount:I

.field private currentAnimation:I

.field private currentProgress:I

.field private exitFingerprint:Z

.field private exitHintToast:Landroid/widget/Toast;

.field private fingerLayout:Landroid/view/View;

.field private fingerNames:[Ljava/lang/String;

.field private introduceView:Landroid/widget/ImageView;

.field private isFalseAndUp:Z

.field private mContext:Landroid/content/Context;

.field private mVibrator:Landroid/os/Vibrator;

.field private mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

.field private progressTip:Landroid/widget/LinearLayout;

.field private tvPercent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/enroll/FingerprintEnroll;-><init>(Landroid/app/Activity;)V

    .line 42
    iput-boolean v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->afterExit:Z

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentAnimation:I

    .line 55
    iput v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentProgress:I

    .line 58
    iput v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continuousFailCount:I

    .line 59
    iput-boolean v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitFingerprint:Z

    .line 61
    iput-boolean v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->isFalseAndUp:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private calculateCurrentNumber(I)I
    .locals 11
    .param p1, "id"    # I

    .prologue
    .line 290
    const/4 v3, 0x1

    .line 291
    .local v3, "number":I
    const/4 v0, 0x0

    .line 292
    .local v0, "count":I
    const/4 v1, 0x0

    .line 293
    .local v1, "existNumber":I
    iget-object v5, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->fingerNames:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090054

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "prefix":Ljava/lang/String;
    iget-object v6, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->fingerNames:[Ljava/lang/String;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v7, :cond_1

    .line 323
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 295
    .restart local v4    # "prefix":Ljava/lang/String;
    :cond_1
    aget-object v2, v6, v5

    .line 296
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 297
    add-int/lit8 v0, v0, 0x1

    .line 298
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 300
    :try_start_0
    const-string v8, "FingerprintEnrol"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "name.length() = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->isZh()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 302
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 295
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 304
    :cond_3
    const/16 v8, 0xb

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_2

    .line 315
    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 316
    goto :goto_1

    .line 310
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private clearProgressHint()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->tvPercent:Landroid/widget/TextView;

    const-string v1, "(0%)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationMask:Landroid/widget/ImageView;

    const v1, 0x7f020209

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->convertViewVisibleState(Landroid/view/View;I)V

    .line 68
    return-void
.end method

.method private convertViewVisibleState(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newState"    # I

    .prologue
    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :cond_0
    return-void
.end method

.method private getUniqueName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 256
    const/4 v0, 0x1

    .line 259
    .local v0, "guess":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->isUnique(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    return-object v1

    .line 263
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 257
    goto :goto_0
.end method

.method private initFingerprintParameter()V
    .locals 3

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->open(Landroid/content/Context;)Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    .line 106
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    if-nez v1, :cond_0

    .line 107
    const-string v1, "FingerprintEnrol"

    const-string v2, "FingerprintEnrolActivity manager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->finish()V

    goto :goto_0
.end method

.method private isUnique(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 268
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->fingerNames:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 269
    iget-object v3, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->fingerNames:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_2

    .line 275
    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 269
    :cond_2
    aget-object v0, v3, v2

    .line 270
    .local v0, "fp":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 269
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isZh()Z
    .locals 3

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 280
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "language":Ljava/lang/String;
    const-string v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    const/4 v2, 0x1

    .line 284
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showMyToast(Landroid/widget/Toast;I)V
    .locals 6
    .param p1, "toast"    # Landroid/widget/Toast;
    .param p2, "cnt"    # I

    .prologue
    .line 374
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 375
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/zte/fingerprint/enroll/GoodixEnroll$2;

    invoke-direct {v1, p0, p1}, Lcom/zte/fingerprint/enroll/GoodixEnroll$2;-><init>(Lcom/zte/fingerprint/enroll/GoodixEnroll;Landroid/widget/Toast;)V

    .line 380
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xbb8

    .line 375
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 381
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/zte/fingerprint/enroll/GoodixEnroll$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll$3;-><init>(Lcom/zte/fingerprint/enroll/GoodixEnroll;Landroid/widget/Toast;Ljava/util/Timer;)V

    .line 387
    int-to-long v4, p2

    .line 381
    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 388
    return-void
.end method

.method private showReenrolFingerDialog()V
    .locals 4

    .prologue
    .line 469
    new-instance v0, Lcom/zte/mifavor/widget/AlertDialog$Builder;

    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 470
    .local v0, "builder":Lcom/zte/mifavor/widget/AlertDialog$Builder;
    const v1, 0x7f090057

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setTitle(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 471
    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setMessage(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v1

    .line 472
    const v2, 0x7f09005d

    new-instance v3, Lcom/zte/fingerprint/enroll/GoodixEnroll$4;

    invoke-direct {v3, p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll$4;-><init>(Lcom/zte/fingerprint/enroll/GoodixEnroll;)V

    invoke-virtual {v1, v2, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 477
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->create()Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/AlertDialog;->show()V

    .line 478
    return-void
.end method

.method private startEnrol()V
    .locals 5

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 133
    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    const/4 v3, -0x1

    invoke-virtual {v2, p0, v3, p0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->startEnrol(Lcom/zte/fingerprint/main/ZTEFingerprintManager$EnrolCallback;ILcom/zte/fingerprint/main/ZTEFingerprintManager$CaptureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    const-string v2, "FingerprintEnrol"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startEnrol result = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized startFingerAnimation(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->tvPercent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->stopIntroduceAnim()V

    .line 158
    div-int/lit8 v0, p1, 0xa

    iput v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animation:I

    .line 159
    iget v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentAnimation:I

    iget v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 162
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->convertViewVisibleState(Landroid/view/View;I)V

    .line 163
    iget v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animation:I

    iput v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentAnimation:I

    .line 164
    const-string v0, "FingerprintEnrol"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-------animation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animation:I

    packed-switch v0, :pswitch_data_0

    .line 206
    :goto_1
    iget v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentAnimation:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationMask:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animFadeInOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 169
    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationMask:Landroid/widget/ImageView;

    const v1, 0x7f020227

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->convertViewVisibleState(Landroid/view/View;I)V

    goto :goto_1

    .line 174
    :pswitch_1
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationMask:Landroid/widget/ImageView;

    const v1, 0x7f020228

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    const v1, 0x7f020227

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 180
    :pswitch_2
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationMask:Landroid/widget/ImageView;

    const v1, 0x7f020229

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    const v1, 0x7f020228

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 185
    :pswitch_3
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationMask:Landroid/widget/ImageView;

    const v1, 0x7f02022a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    const v1, 0x7f020229

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 190
    :pswitch_4
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationMask:Landroid/widget/ImageView;

    const v1, 0x7f02022b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    const v1, 0x7f02022a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 196
    :pswitch_5
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationMask:Landroid/widget/ImageView;

    const v1, 0x7f02022c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    const v1, 0x7f02022b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 201
    :pswitch_6
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    const v1, 0x7f02022c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private startIntroduceAnim()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->fingerLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->introduceView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->introduceView:Landroid/widget/ImageView;

    const v1, 0x7f020222

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->introduceView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 145
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 146
    return-void
.end method

.method private stopIntroduceAnim()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->introduceView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 151
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->fingerLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    return-void
.end method


# virtual methods
.method public onCaptureCompleted()V
    .locals 0

    .prologue
    .line 491
    return-void
.end method

.method public onCaptureFailed(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    const/4 v3, 0x0

    .line 451
    const-string v0, "FingerprintEnrol"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCaptureFailed = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/16 v0, 0x6b

    if-ne p1, v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090067

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitHintToast:Landroid/widget/Toast;

    .line 455
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitHintToast:Landroid/widget/Toast;

    const/16 v1, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->showMyToast(Landroid/widget/Toast;I)V

    .line 459
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->clearProgressHint()V

    .line 460
    iput v3, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentProgress:I

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->isFalseAndUp:Z

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    if-nez p1, :cond_0

    .line 464
    const v0, 0x7f060061

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fingerNames"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->fingerNames:[Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->initFingerprintParameter()V

    .line 79
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mContext:Landroid/content/Context;

    .line 81
    const v0, 0x7f060069

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->tvPercent:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mActivity:Landroid/app/Activity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mVibrator:Landroid/os/Vibrator;

    .line 83
    const v0, 0x7f060067

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    .line 84
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setKeepScreenOn(Z)V

    .line 85
    const v0, 0x7f060066

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationMask:Landroid/widget/ImageView;

    .line 86
    const v0, 0x7f060064

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->fingerLayout:Landroid/view/View;

    .line 88
    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animFadeInOut:Landroid/view/animation/Animation;

    .line 89
    const v0, 0x7f060062

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTip:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f060063

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTipSml:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f06006b

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->introduceView:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f060068

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->progressTip:Landroid/widget/LinearLayout;

    .line 93
    const v0, 0x7f06006c

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zte/fingerprint/enroll/GoodixEnroll$1;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll$1;-><init>(Lcom/zte/fingerprint/enroll/GoodixEnroll;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->startIntroduceAnim()V

    .line 100
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->startEnrol()V

    .line 101
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitHintToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitHintToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 485
    :cond_0
    return-void
.end method

.method public onEnrolled(I)V
    .locals 7
    .param p1, "arg0"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 212
    const-string v2, "FingerprintEnrol"

    const-string v3, "onEnrolled"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTip:Landroid/widget/TextView;

    const v3, 0x7f090063

    invoke-virtual {p0, v3}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTipSml:Landroid/widget/TextView;

    const v3, 0x7f090064

    invoke-virtual {p0, v3}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->progressTip:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    const v2, 0x7f06006c

    invoke-virtual {p0, v2}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :try_start_0
    const-string v2, "FingerprintEnrol"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAndroidDisplayVersion(mContext) = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/zte/fingerprint/utils/CommonUtils;->getAndroidDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/fingerprint/utils/CommonUtils;->getAndroidDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZTE BV0720"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getUniqueName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->setIdName(ILjava/lang/String;)V

    .line 222
    const-string v2, "FingerprintEnrol"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getString(R.string.fingerprint) + calculateCurrentNumber() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getUniqueName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   arg0 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mActivity:Landroid/app/Activity;

    const-string v3, "pref:fingerprint"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 224
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x7f090054

    invoke-virtual {p0, v5}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getUniqueName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 225
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    invoke-virtual {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->getIds()[I

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    invoke-virtual {v2}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->getIds()[I

    move-result-object v2

    array-length v2, v2

    if-ne v2, v6, :cond_0

    .line 239
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lock_for_screen"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 242
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zte.fingerprint.FINGER_COUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 227
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x7f090054

    invoke-virtual {p0, v4}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->calculateCurrentNumber(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->setIdName(ILjava/lang/String;)V

    .line 228
    const-string v2, "FingerprintEnrol"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getString(R.string.fingerprint) + calculateCurrentNumber() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v4, 0x7f090054

    invoke-virtual {p0, v4}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->calculateCurrentNumber(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   arg0 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mActivity:Landroid/app/Activity;

    const-string v3, "pref:fingerprint"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 230
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x7f090054

    invoke-virtual {p0, v5}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->calculateCurrentNumber(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 231
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 245
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public onEnrollmentFailed()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public onInput()V
    .locals 6

    .prologue
    const v5, 0x7f090077

    const v4, 0x7f090073

    const/4 v3, 0x0

    .line 415
    iget-boolean v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitFingerprint:Z

    if-eqz v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTip:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTipSml:Landroid/widget/TextView;

    const v2, 0x7f090075

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 418
    iput-boolean v3, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitFingerprint:Z

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentProgress:I

    const/16 v2, 0x1a

    if-gt v1, v2, :cond_2

    .line 429
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTip:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTipSml:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :goto_1
    iget-boolean v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->afterExit:Z

    if-eqz v1, :cond_0

    .line 437
    iput-boolean v3, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->afterExit:Z

    .line 438
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->clearProgressHint()V

    .line 439
    iput v3, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentProgress:I

    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    invoke-virtual {v1}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_2
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->startEnrol()V

    goto :goto_0

    .line 432
    :cond_2
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTip:Landroid/widget/TextView;

    const v2, 0x7f090076

    invoke-virtual {p0, v2}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTipSml:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 117
    const-string v1, "FingerprintEnrol"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    invoke-virtual {v1}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->abort()V

    .line 120
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    invoke-virtual {v1}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->release()V

    .line 121
    const-string v1, "FingerprintEnrol"

    const-string v2, "abort()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    .line 126
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zte.fingerprints.StartAuthenticate"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->sendBroadcast(Landroid/content/Intent;)V

    .line 127
    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->finish()V

    .line 128
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onProgress(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    const-wide/16 v4, 0x190

    const/4 v3, 0x0

    .line 330
    const-string v0, "FingerprintEnrol"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enrol progress:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v0, "FingerprintEnrol"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enrol currentProgress:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const v0, 0x7f06006a

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->convertViewVisibleState(Landroid/view/View;I)V

    .line 333
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->fingerLayout:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->convertViewVisibleState(Landroid/view/View;I)V

    .line 334
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->progressTip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v3}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->convertViewVisibleState(Landroid/view/View;I)V

    .line 335
    const/16 v0, -0x2710

    if-ne p1, v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 337
    const-string v0, "FingerprintEnrol"

    const-string v1, "mVibrator.vibrate(VIBRATE_MS_REJECTED)----1"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitHintToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitHintToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090067

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitHintToast:Landroid/widget/Toast;

    .line 342
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitHintToast:Landroid/widget/Toast;

    const/16 v1, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->showMyToast(Landroid/widget/Toast;I)V

    .line 344
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->clearProgressHint()V

    .line 345
    iput v3, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continuousFailCount:I

    .line 346
    iput p1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentProgress:I

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitFingerprint:Z

    .line 348
    iget v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentProgress:I

    invoke-direct {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->startFingerAnimation(I)V

    .line 371
    :goto_0
    return-void

    .line 349
    :cond_1
    iget v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentProgress:I

    if-le p1, v0, :cond_2

    const/16 v0, 0x64

    if-gt p1, v0, :cond_2

    .line 350
    iput v3, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continuousFailCount:I

    .line 351
    iput p1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentProgress:I

    .line 352
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 353
    iget v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentProgress:I

    invoke-direct {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->startFingerAnimation(I)V

    goto :goto_0

    .line 356
    :cond_2
    const-string v0, "FingerprintEnrol"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currentProgress = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----continuousFailCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continuousFailCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continuousFailCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continuousFailCount:I

    .line 359
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 361
    const-string v0, "FingerprintEnrol"

    const-string v1, "mVibrator.vibrate(VIBRATE_MS_REJECTED)----2"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p0, v3}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->onCaptureFailed(I)V

    goto :goto_0
.end method

.method public onProgress(Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedData;)V
    .locals 0
    .param p1, "data"    # Lcom/zte/fingerprint/main/ZTEFingerprintManager$GuidedData;

    .prologue
    .line 497
    return-void
.end method

.method public onWaitingForInput()V
    .locals 4

    .prologue
    const v3, 0x7f090074

    .line 391
    const-string v0, "FingerprintEnrol"

    const-string v1, "onWaitingForInput"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-boolean v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->isFalseAndUp:Z

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    invoke-virtual {v0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->abort()V

    .line 394
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/main/ZTEFingerprintManager;

    invoke-virtual {v0}, Lcom/zte/fingerprint/main/ZTEFingerprintManager;->release()V

    .line 395
    const-string v0, "FingerprintEnrol"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWaitingForInput isFalseAndUp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->isFalseAndUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->startEnrol()V

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->isFalseAndUp:Z

    .line 399
    :cond_0
    iget-boolean v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitFingerprint:Z

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTip:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTipSml:Landroid/widget/TextView;

    const v1, 0x7f090075

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 412
    :goto_0
    return-void

    .line 404
    :cond_1
    iget v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentProgress:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_2

    .line 405
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTip:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTipSml:Landroid/widget/TextView;

    const v1, 0x7f090077

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTip:Landroid/widget/TextView;

    const v1, 0x7f090078

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTipSml:Landroid/widget/TextView;

    const v1, 0x7f090079

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
