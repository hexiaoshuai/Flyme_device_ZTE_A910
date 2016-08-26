.class public Lcom/mediatek/fmradio/FmRadioUtils;
.super Ljava/lang/Object;
.source "FmRadioUtils.java"


# static fields
.field private static final CONVERT_RATE:I = 0xa

.field public static final DEFAULT_STATION:I = 0x3e8

.field public static final DEFAULT_STATION_FLOAT:F

.field private static final HIGHEST_STATION:I = 0x438

.field private static final IS_FM_SHORT_ANTENNA_SUPPORT:Z

.field private static final IS_FM_SUSPEND_SUPPORT:Z

.field private static final LOWEST_STATION:I = 0x36b

.field public static final LOW_SPACE_THRESHOLD:J = 0x80000L

.field private static final STEP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FmRx/Utils"

.field private static isFileInSdcard:Z

.field private static sStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const/16 v0, 0x3e8

    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v0

    sput v0, Lcom/mediatek/fmradio/FmRadioUtils;->DEFAULT_STATION_FLOAT:F

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/fmradio/FmRadioUtils;->sStorageManager:Landroid/os/storage/StorageManager;

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/fmradio/FmRadioUtils;->isFileInSdcard:Z

    .line 77
    const-string v0, "ro.mtk_fm_short_antenna_support"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 76
    sput-boolean v0, Lcom/mediatek/fmradio/FmRadioUtils;->IS_FM_SHORT_ANTENNA_SUPPORT:Z

    .line 80
    const-string v0, "ro.mtk_tcl_fm_at_suspend"

    .line 79
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/fmradio/FmRadioUtils;->IS_FM_SUSPEND_SUPPORT:Z

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeDecreaseStation(I)I
    .locals 2
    .param p0, "station"    # I

    .prologue
    .line 122
    add-int/lit8 v0, p0, -0x1

    .line 123
    .local v0, "result":I
    const/16 v1, 0x36b

    if-ge v0, v1, :cond_0

    .line 124
    const/16 v0, 0x438

    .line 126
    :cond_0
    return v0
.end method

.method public static computeFrequency(I)F
    .locals 2
    .param p0, "station"    # I

    .prologue
    .line 150
    int-to-float v0, p0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static computeIncreaseStation(I)I
    .locals 2
    .param p0, "station"    # I

    .prologue
    .line 106
    add-int/lit8 v0, p0, 0x1

    .line 107
    .local v0, "result":I
    const/16 v1, 0x438

    if-le v0, v1, :cond_0

    .line 108
    const/16 v0, 0x36b

    .line 110
    :cond_0
    return v0
.end method

.method public static computeStation(F)I
    .locals 1
    .param p0, "frequency"    # F

    .prologue
    .line 138
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private static ensureStorageManager(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    sget-object v0, Lcom/mediatek/fmradio/FmRadioUtils;->sStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 223
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 222
    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, Lcom/mediatek/fmradio/FmRadioUtils;->sStorageManager:Landroid/os/storage/StorageManager;

    .line 225
    :cond_0
    return-void
.end method

.method public static formatStation(I)Ljava/lang/String;
    .locals 7
    .param p0, "station"    # I

    .prologue
    .line 162
    int-to-float v2, p0

    const/high16 v3, 0x41200000    # 10.0f

    div-float v0, v2, v3

    .line 163
    .local v0, "frequency":F
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 164
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    .line 163
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "result":Ljava/lang/String;
    return-object v1
.end method

.method public static getDefaultStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 174
    invoke-static {p0}, Lcom/mediatek/fmradio/FmRadioUtils;->ensureStorageManager(Landroid/content/Context;)V

    .line 175
    sget-object v5, Lcom/mediatek/fmradio/FmRadioUtils;->sStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 176
    .local v4, "volumes":[Landroid/os/storage/StorageVolume;
    const/4 v3, 0x0

    .line 177
    .local v3, "mUSBVolume":Landroid/os/storage/StorageVolume;
    const/4 v2, 0x0

    .line 178
    .local v2, "mSDCardVolume":Landroid/os/storage/StorageVolume;
    array-length v0, v4

    .line 179
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 188
    const-string v5, "FmRx/Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mUSBVolume="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v5, "FmRx/Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mSDCardVolume="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-nez v2, :cond_3

    .line 191
    sput-boolean v8, Lcom/mediatek/fmradio/FmRadioUtils;->isFileInSdcard:Z

    .line 192
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 202
    :goto_1
    return-object v5

    .line 180
    :cond_0
    const-string v5, "FmRx/Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "storageVolumeList["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    aget-object v2, v4, v1

    .line 184
    :cond_1
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-nez v5, :cond_2

    .line 185
    aget-object v3, v4, v1

    .line 179
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_3
    const-string v5, "mounted"

    .line 195
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 194
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 195
    if-eqz v5, :cond_4

    .line 196
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 198
    const/4 v5, 0x1

    sput-boolean v5, Lcom/mediatek/fmradio/FmRadioUtils;->isFileInSdcard:Z

    .line 199
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 201
    :cond_4
    sput-boolean v8, Lcom/mediatek/fmradio/FmRadioUtils;->isFileInSdcard:Z

    .line 202
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public static getDefaultStorageState(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    invoke-static {p0}, Lcom/mediatek/fmradio/FmRadioUtils;->ensureStorageManager(Landroid/content/Context;)V

    .line 215
    sget-object v1, Lcom/mediatek/fmradio/FmRadioUtils;->sStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {p0}, Lcom/mediatek/fmradio/FmRadioUtils;->getDefaultStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "state":Ljava/lang/String;
    const-string v1, "FmRx/Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDefaultStorageState() return state:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-object v0
.end method

.method public static getPlaylistPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    invoke-static {p0}, Lcom/mediatek/fmradio/FmRadioUtils;->ensureStorageManager(Landroid/content/Context;)V

    .line 237
    sget-object v2, Lcom/mediatek/fmradio/FmRadioUtils;->sStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "externalStoragePaths":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/Playlists/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "path":Ljava/lang/String;
    return-object v1
.end method

.method public static hasEnoughSpace(Ljava/lang/String;)Z
    .locals 12
    .param p0, "recordingSdcard"    # Ljava/lang/String;

    .prologue
    .line 251
    const/4 v6, 0x0

    .line 253
    .local v6, "ret":Z
    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 254
    .local v5, "fs":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    .line 255
    .local v2, "blocks":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    .line 256
    .local v0, "blockSize":J
    mul-long v8, v2, v0

    .line 257
    .local v8, "spaceLeft":J
    const-string v7, "FmRx/Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "hasEnoughSpace: available space="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    const-wide/32 v10, 0x80000

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    const/4 v6, 0x1

    .line 262
    .end local v0    # "blockSize":J
    .end local v2    # "blocks":J
    .end local v5    # "fs":Landroid/os/StatFs;
    .end local v8    # "spaceLeft":J
    :goto_0
    return v6

    .line 258
    .restart local v0    # "blockSize":J
    .restart local v2    # "blocks":J
    .restart local v5    # "fs":Landroid/os/StatFs;
    .restart local v8    # "spaceLeft":J
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 259
    .end local v0    # "blockSize":J
    .end local v2    # "blocks":J
    .end local v5    # "fs":Landroid/os/StatFs;
    .end local v8    # "spaceLeft":J
    :catch_0
    move-exception v4

    .line 260
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "FmRx/Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "sdcard may be unmounted:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isFileInSdcard()Z
    .locals 1

    .prologue
    .line 287
    sget-boolean v0, Lcom/mediatek/fmradio/FmRadioUtils;->isFileInSdcard:Z

    return v0
.end method

.method public static isFmShortAntennaSupport()Z
    .locals 1

    .prologue
    .line 271
    sget-boolean v0, Lcom/mediatek/fmradio/FmRadioUtils;->IS_FM_SHORT_ANTENNA_SUPPORT:Z

    return v0
.end method

.method public static isFmSuspendSupport()Z
    .locals 1

    .prologue
    .line 280
    sget-boolean v0, Lcom/mediatek/fmradio/FmRadioUtils;->IS_FM_SUSPEND_SUPPORT:Z

    return v0
.end method

.method public static isValidStation(I)Z
    .locals 4
    .param p0, "station"    # I

    .prologue
    .line 92
    const/16 v1, 0x36b

    if-lt p0, v1, :cond_0

    const/16 v1, 0x438

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    .line 93
    .local v0, "isValid":Z
    :goto_0
    const-string v1, "FmRx/Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isValidStation: freq = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", valid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return v0

    .line 92
    .end local v0    # "isValid":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
