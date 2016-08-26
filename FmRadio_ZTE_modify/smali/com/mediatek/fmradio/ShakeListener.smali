.class public Lcom/mediatek/fmradio/ShakeListener;
.super Ljava/lang/Object;
.source "ShakeListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/fmradio/ShakeListener$OnShakeListener;
    }
.end annotation


# static fields
.field private static final SPEED_SHRESHOLD:I = 0xbb8

.field private static final UPTATE_INTERVAL_TIME:I = 0x46

.field private static singleInstance:Lcom/mediatek/fmradio/ShakeListener;


# instance fields
.field private lastUpdateTime:J

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private mContext:Landroid/content/Context;

.field private onShakeListener:Lcom/mediatek/fmradio/ShakeListener$OnShakeListener;

.field private sensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/fmradio/ShakeListener;->singleInstance:Lcom/mediatek/fmradio/ShakeListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mediatek/fmradio/ShakeListener;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/fmradio/ShakeListener;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v0, Lcom/mediatek/fmradio/ShakeListener;->singleInstance:Lcom/mediatek/fmradio/ShakeListener;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/mediatek/fmradio/ShakeListener;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/ShakeListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/fmradio/ShakeListener;->singleInstance:Lcom/mediatek/fmradio/ShakeListener;

    .line 29
    :cond_0
    sget-object v0, Lcom/mediatek/fmradio/ShakeListener;->singleInstance:Lcom/mediatek/fmradio/ShakeListener;

    return-object v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 82
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 54
    .local v2, "currentUpdateTime":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mediatek/fmradio/ShakeListener;->lastUpdateTime:J

    sub-long v10, v2, v14

    .line 55
    .local v10, "timeInterval":J
    const-wide/16 v14, 0x46

    cmp-long v14, v10, v14

    if-gez v14, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/mediatek/fmradio/ShakeListener;->lastUpdateTime:J

    .line 59
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x0

    aget v7, v14, v15

    .line 60
    .local v7, "x":F
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x1

    aget v12, v14, v15

    .line 61
    .local v12, "y":F
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x0

    aget v13, v14, v15

    .line 63
    .local v13, "z":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/fmradio/ShakeListener;->lastX:F

    sub-float v4, v7, v14

    .line 64
    .local v4, "deltaX":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/fmradio/ShakeListener;->lastY:F

    sub-float v5, v12, v14

    .line 65
    .local v5, "deltaY":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/fmradio/ShakeListener;->lastZ:F

    sub-float v6, v13, v14

    .line 67
    .local v6, "deltaZ":F
    move-object/from16 v0, p0

    iput v7, v0, Lcom/mediatek/fmradio/ShakeListener;->lastX:F

    .line 68
    move-object/from16 v0, p0

    iput v12, v0, Lcom/mediatek/fmradio/ShakeListener;->lastY:F

    .line 69
    move-object/from16 v0, p0

    iput v13, v0, Lcom/mediatek/fmradio/ShakeListener;->lastZ:F

    .line 71
    mul-float v14, v4, v4

    mul-float v15, v5, v5

    add-float/2addr v14, v15

    .line 72
    mul-float v15, v6, v6

    .line 71
    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 72
    long-to-double v0, v10

    move-wide/from16 v16, v0

    .line 71
    div-double v14, v14, v16

    .line 72
    const-wide v16, 0x40c3880000000000L    # 10000.0

    .line 71
    mul-double v8, v14, v16

    .line 73
    .local v8, "speed":D
    const-string v14, "FmRx/ShakeListener"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "speed: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/fmradio/ShakeListener;->onShakeListener:Lcom/mediatek/fmradio/ShakeListener$OnShakeListener;

    if-eqz v14, :cond_0

    const-wide v14, 0x40a7700000000000L    # 3000.0

    cmpl-double v14, v8, v14

    if-ltz v14, :cond_0

    .line 76
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/fmradio/ShakeListener;->onShakeListener:Lcom/mediatek/fmradio/ShakeListener$OnShakeListener;

    invoke-interface {v14}, Lcom/mediatek/fmradio/ShakeListener$OnShakeListener;->onShake()V

    goto :goto_0
.end method

.method public start(Lcom/mediatek/fmradio/ShakeListener$OnShakeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mediatek/fmradio/ShakeListener$OnShakeListener;

    .prologue
    const/4 v2, 0x1

    .line 34
    iget-object v0, p0, Lcom/mediatek/fmradio/ShakeListener;->mContext:Landroid/content/Context;

    .line 35
    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 34
    iput-object v0, p0, Lcom/mediatek/fmradio/ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    .line 36
    iget-object v0, p0, Lcom/mediatek/fmradio/ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/mediatek/fmradio/ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/fmradio/ShakeListener;->sensor:Landroid/hardware/Sensor;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/mediatek/fmradio/ShakeListener;->sensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/mediatek/fmradio/ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mediatek/fmradio/ShakeListener;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 43
    :cond_1
    iput-object p1, p0, Lcom/mediatek/fmradio/ShakeListener;->onShakeListener:Lcom/mediatek/fmradio/ShakeListener$OnShakeListener;

    .line 44
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/fmradio/ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/fmradio/ShakeListener;->onShakeListener:Lcom/mediatek/fmradio/ShakeListener$OnShakeListener;

    .line 50
    return-void
.end method
