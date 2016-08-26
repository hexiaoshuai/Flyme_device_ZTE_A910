.class public Lcom/mediatek/datashaping/DataShapingUtils;
.super Ljava/lang/Object;
.source "DataShapingUtils.java"


# static fields
.field public static final CLOSING_DELAY_BUFFER_FOR_MUSIC:J = 0x1388L

.field private static final LTE_AS_STATE_CONNECTED:Ljava/lang/String; = "connected"

.field private static final LTE_AS_STATE_IDLE:Ljava/lang/String; = "idle"

.field private static final LTE_AS_STATE_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final TAG:Ljava/lang/String; = "DataShapingUtils"

.field private static sDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mClosingDelayStartTime:J

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentNetworkType:I

.field private mIsClosingDelayForMusic:Z

.field private mIsMobileConnection:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mCurrentNetworkType:I

    .line 70
    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mediatek/datashaping/DataShapingUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const-class v1, Lcom/mediatek/datashaping/DataShapingUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/datashaping/DataShapingUtils;->sDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-direct {v0, p0}, Lcom/mediatek/datashaping/DataShapingUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/datashaping/DataShapingUtils;->sDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    .line 66
    :cond_0
    sget-object v0, Lcom/mediatek/datashaping/DataShapingUtils;->sDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public canTurnFromLockedToOpen()Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isNetworkTypeLte()Z

    move-result v1

    .line 253
    .local v1, "isNetworkTypeLte":Z
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isScreenOn()Z

    move-result v3

    .line 254
    .local v3, "isScreenOn":Z
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isSharedDefaultApnEstablished()Z

    move-result v4

    .line 255
    .local v4, "isSharedDefaultApnEstablished":Z
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isUsbConnected()Z

    move-result v5

    .line 256
    .local v5, "isUsbConnected":Z
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isWifiTetheringEnabled()Z

    move-result v6

    .line 257
    .local v6, "isWifiTetheringEnabled":Z
    const-string v9, "DataShapingUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[canTurnFromLockedToOpen] isNetworkTypeLte|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isScreenOn|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isSharedDefaultApnEstablised|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isUsbConnected|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isWifiTetheringEnabled|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    if-eqz v1, :cond_1

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    move v2, v7

    .line 265
    .local v2, "isReady":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isBTStateOn()Z

    move-result v0

    .line 267
    .local v0, "isBTStateOn":Z
    const-string v9, "DataShapingUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[canTurnFromLockedToOpen] isBTStateOn|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-nez v0, :cond_2

    move v2, v7

    .line 270
    .end local v0    # "isBTStateOn":Z
    :cond_0
    :goto_1
    const-string v7, "DataShapingUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[canTurnFromLockedToOpen]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return v2

    .end local v2    # "isReady":Z
    :cond_1
    move v2, v8

    .line 262
    goto :goto_0

    .restart local v0    # "isBTStateOn":Z
    .restart local v2    # "isReady":Z
    :cond_2
    move v2, v8

    .line 268
    goto :goto_1
.end method

.method public getClosingDelayForMusic()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsClosingDelayForMusic:Z

    return v0
.end method

.method public getClosingDelayStartTime()J
    .locals 2

    .prologue
    .line 408
    iget-wide v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mClosingDelayStartTime:J

    return-wide v0
.end method

.method public isBTStateOn()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 207
    iget-object v6, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v6, :cond_0

    .line 208
    iget-object v6, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    const-string v8, "bluetooth"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothManager;

    iput-object v6, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 211
    :cond_0
    iget-object v6, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v6, :cond_1

    .line 212
    const-string v6, "DataShapingUtils"

    const-string v8, "BluetoothManager is null"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 248
    :goto_0
    return v6

    .line 215
    :cond_1
    iget-object v6, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 216
    .local v4, "mAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v4, :cond_2

    .line 217
    const-string v6, "DataShapingUtils"

    const-string v8, "BluetoothAdapter is null"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 218
    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    .line 222
    .local v5, "state":I
    const/16 v6, 0xa

    if-ne v6, v5, :cond_3

    .line 223
    const-string v6, "DataShapingUtils"

    const-string v8, "[isBTStateOn] BT is Off"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 224
    goto :goto_0

    .line 227
    :cond_3
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 229
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v0, :cond_4

    .line 230
    const-string v6, "DataShapingUtils"

    const-string v8, "[isBTStateOn] No bonded Devices"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 231
    goto :goto_0

    .line 235
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 236
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 237
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    .line 238
    .local v2, "deviceType":I
    const-string v6, "DataShapingUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[isBTStateOn] Connected Device = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", DeviceType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/16 v6, 0x404

    if-ne v6, v2, :cond_6

    .line 242
    const-string v6, "DataShapingUtils"

    const-string v8, "Connected Device is AUDIO_VIDEO_WEARABLE_HEADSET"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 244
    :cond_6
    const/4 v6, 0x1

    goto/16 :goto_0

    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "deviceType":I
    :cond_7
    move v6, v7

    .line 248
    goto/16 :goto_0
.end method

.method public isBTStateOn(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 199
    :goto_0
    return v0

    .line 194
    :cond_0
    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    const-string v0, "DataShapingUtils"

    const-string v1, "[isBTStateOn] BT ACTION_ACL_CONNECTED !"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isBTStateOn()Z

    move-result v0

    goto :goto_0
.end method

.method public isLteAccessStratumConnected()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 294
    const-string v4, "phoneEx"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 296
    .local v2, "telephonyExService":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v2, :cond_1

    .line 297
    const-string v4, "DataShapingUtils"

    const-string v5, "[isLteAccessStratumConnected] mTelephonyExService is null!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    :goto_0
    return v3

    .line 300
    :cond_1
    const/4 v1, 0x0

    .line 302
    .local v1, "state":Ljava/lang/String;
    :try_start_0
    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getLteAccessStratumState()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 306
    :goto_1
    const-string v4, "DataShapingUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isLteAccessStratumConnected] state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v4, "connected"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 309
    const-string v4, "unknown"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 310
    invoke-virtual {p0, v3}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteAccessStratumReport(Z)Z

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "remoteException":Landroid/os/RemoteException;
    const-string v4, "DataShapingUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isLteAccessStratumConnected] remoteException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 313
    .end local v0    # "remoteException":Landroid/os/RemoteException;
    :cond_2
    const-string v4, "idle"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 314
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isLteAccessStratumConnected(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 275
    if-nez p1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v1

    .line 279
    :cond_1
    const-string v2, "lteAccessStratumState"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "lteAsState":Ljava/lang/String;
    const-string v2, "DataShapingUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isLteAccessStratumConnectedIntent] lteAsState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v2, "connected"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    const-string v2, "unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    invoke-virtual {p0, v1}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteAccessStratumReport(Z)Z

    goto :goto_0

    .line 287
    :cond_2
    const-string v2, "idle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMusicActive()Z
    .locals 4

    .prologue
    .line 387
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mAudioManager:Landroid/media/AudioManager;

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 391
    .local v0, "isMusicActive":Z
    const-string v1, "DataShapingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isMusicActive] isMusicActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return v0
.end method

.method public isNetworkTypeLte()Z
    .locals 3

    .prologue
    .line 162
    const-string v0, "DataShapingUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isNetworkTypeLte] mCurrentNetworkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mCurrentNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mCurrentNetworkType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 164
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkTypeLte(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 171
    if-nez p1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v1

    .line 174
    :cond_1
    const-string v2, "psNetworkType"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 176
    .local v0, "networkType":I
    const-string v2, "DataShapingUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isNetworkTypeLteIntent] networkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    .line 178
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mPowerManager:Landroid/os/PowerManager;

    .line 108
    :cond_0
    const-string v0, "DataShapingUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isScreenOn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public isSharedDefaultApnEstablished()Z
    .locals 6

    .prologue
    .line 320
    const-string v3, "phoneEx"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 322
    .local v2, "telephonyExService":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v2, :cond_0

    .line 323
    const-string v3, "DataShapingUtils"

    const-string v4, "[isSharedDefaultApnEstablished] mTelephonyExService is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x1

    .line 334
    :goto_0
    return v0

    .line 327
    :cond_0
    const/4 v0, 0x1

    .line 329
    .local v0, "isEstablished":Z
    :try_start_0
    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isSharedDefaultApn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 333
    :goto_1
    const-string v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isSharedDefaultApnEstablished]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, "remoteException":Landroid/os/RemoteException;
    const-string v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isSharedDefaultApnEstablished] remoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isSharedDefaultApnEstablished(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 338
    if-nez p1, :cond_0

    .line 345
    :goto_0
    return v0

    .line 342
    :cond_0
    const-string v1, "sharedDefaultApn"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 344
    .local v0, "isSharedDefaultApn":Z
    const-string v1, "DataShapingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSharedDefaultApnEstablishedIntent]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isUsbConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 140
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    const-string v3, "usb"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 143
    :cond_0
    const-string v3, "DataShapingUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isUsbConnected] isUsbConneted: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getCurrentState()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getCurrentState()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 143
    goto :goto_0

    :cond_2
    move v1, v2

    .line 144
    goto :goto_1
.end method

.method public isUsbConnected(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 148
    if-nez p1, :cond_0

    .line 153
    :goto_0
    return v1

    .line 151
    :cond_0
    const-string v2, "connected"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 152
    .local v0, "isUsbConnected":Z
    const-string v2, "DataShapingUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isUsbConnectedIntent] isUsbConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v2, "connected"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isWifiTetheringEnabled()Z
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 116
    :cond_0
    const-string v0, "DataShapingUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isWifiTetheringEnabled] isWifiApEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    return v0
.end method

.method public isWifiTetheringEnabled(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 121
    if-nez p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 124
    :cond_1
    const-string v2, "wifi_state"

    const/16 v3, 0xb

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 126
    .local v0, "state":I
    const-string v2, "DataShapingUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isWifiTetheringEnabledIntent] state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/16 v2, 0xd

    if-eq v0, v2, :cond_2

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    .line 129
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 412
    const-string v0, "DataShapingUtils"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iput v2, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mCurrentNetworkType:I

    .line 414
    iput-boolean v2, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsMobileConnection:Z

    .line 415
    iput-boolean v2, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsClosingDelayForMusic:Z

    .line 416
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mClosingDelayStartTime:J

    .line 418
    const/4 v0, 0x1

    const v1, 0x927c0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteUplinkDataTransfer(ZI)Z

    .line 419
    invoke-virtual {p0, v2}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteAccessStratumReport(Z)Z

    .line 420
    return-void
.end method

.method public setClosingDelayForMusic(Z)V
    .locals 0
    .param p1, "isClosingDelay"    # Z

    .prologue
    .line 396
    iput-boolean p1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsClosingDelayForMusic:Z

    .line 397
    return-void
.end method

.method public setClosingDelayStartTime(J)V
    .locals 1
    .param p1, "timeMillis"    # J

    .prologue
    .line 404
    iput-wide p1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mClosingDelayStartTime:J

    .line 405
    return-void
.end method

.method public setCurrentNetworkType(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 98
    :cond_0
    const-string v1, "psNetworkType"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 100
    .local v0, "networkType":I
    const-string v1, "DataShapingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setCurrentNetworkTypeIntent] networkType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mCurrentNetworkType:I

    goto :goto_0
.end method

.method public setLteAccessStratumReport(Z)Z
    .locals 6
    .param p1, "isEnable"    # Z

    .prologue
    .line 368
    const-string v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setLteAccessStratumReport] enable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v3, "phoneEx"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 371
    .local v2, "telephonyExService":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v2, :cond_0

    .line 372
    const-string v3, "DataShapingUtils"

    const-string v4, "[setLteAccessStratumReport] mTelephonyExService is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v0, 0x0

    .line 383
    :goto_0
    return v0

    .line 375
    :cond_0
    const/4 v0, 0x0

    .line 377
    .local v0, "isSuccess":Z
    :try_start_0
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setLteAccessStratumReport(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 381
    :goto_1
    const-string v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setLteAccessStratumReport] TelephonyManager return set result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 378
    :catch_0
    move-exception v1

    .line 379
    .local v1, "remoteException":Landroid/os/RemoteException;
    const-string v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setLteAccessStratumReport] remoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setLteAsReport()V
    .locals 6

    .prologue
    .line 74
    iget-object v3, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 78
    :cond_0
    iget-object v3, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 79
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v2, -0x1

    .line 80
    .local v2, "networkType":I
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 83
    :cond_1
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v0

    .line 84
    .local v0, "isMobile":Z
    const-string v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setLteAsReport] current network isMobile|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsMobileConnection|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsMobileConnection:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-boolean v3, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsMobileConnection:Z

    if-eq v0, v3, :cond_2

    .line 87
    iput-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsMobileConnection:Z

    .line 88
    iget-boolean v3, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsMobileConnection:Z

    if-eqz v3, :cond_2

    .line 89
    iget-boolean v3, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsMobileConnection:Z

    invoke-virtual {p0, v3}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteAccessStratumReport(Z)Z

    .line 92
    :cond_2
    return-void
.end method

.method public setLteUplinkDataTransfer(ZI)Z
    .locals 6
    .param p1, "isOn"    # Z
    .param p2, "safeTimer"    # I

    .prologue
    .line 349
    const-string v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setLteUplinkDataTransfer] isOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v3, "phoneEx"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 352
    .local v2, "telephonyExService":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v2, :cond_0

    .line 353
    const-string v3, "DataShapingUtils"

    const-string v4, "[setLteUplinkDataTransfer] mTelephonyExService is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v0, 0x0

    .line 364
    :goto_0
    return v0

    .line 356
    :cond_0
    const/4 v0, 0x0

    .line 358
    .local v0, "isSuccess":Z
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setLteUplinkDataTransfer(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 362
    :goto_1
    const-string v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setLteUplinkDataTransfer] TelephonyManager return set result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    :catch_0
    move-exception v1

    .line 360
    .local v1, "remoteException":Landroid/os/RemoteException;
    const-string v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setLteUplinkDataTransfer] remoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
