.class public Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothOppBtEnablingActivity.java"


# static fields
.field private static final BT_ENABLING_TIMEOUT:I = 0x0

.field private static final BT_ENABLING_TIMEOUT_VALUE:I = 0x4e20

.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "[Bluetooth.OPP]BluetoothOppEnablingActivity"

.field private static final V:Z = true


# instance fields
.field private adapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private final mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mRegistered:Z

    .line 126
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->cancelSendingProgress()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->adapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method private cancelSendingProgress()V
    .locals 2

    .prologue
    .line 162
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v0

    .line 163
    .local v0, "mOppManager":Lcom/android/bluetooth/opp/BluetoothOppManager;
    iget-boolean v1, v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    if-eqz v1, :cond_0

    .line 164
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->finish()V

    .line 167
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 102
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f080011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    .local v0, "contentView":Landroid/widget/TextView;
    const v2, 0x7f050046

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 80
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->finish()V

    .line 98
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mRegistered:Z

    .line 90
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 91
    .local v1, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x7f050045

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 92
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 93
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->setupAlert()V

    .line 96
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 121
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 110
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 111
    const-string v0, "[Bluetooth.OPP]BluetoothOppEnablingActivity"

    const-string v1, "onKeyDown() called; Key: back key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->cancelSendingProgress()V

    .line 115
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
