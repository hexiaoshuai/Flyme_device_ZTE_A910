.class final Lcom/android/server/am/ServiceRecord;
.super Landroid/os/Binder;
.source "ServiceRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ServiceRecord$StartItem;
    }
.end annotation


# static fields
.field static final MAX_DELIVERY_COUNT:I = 0x3

.field static final MAX_DONE_EXECUTING_COUNT:I = 0x6


# instance fields
.field final ams:Lcom/android/server/am/ActivityManagerService;

.field app:Lcom/android/server/am/ProcessRecord;

.field final appInfo:Landroid/content/pm/ApplicationInfo;

.field final bindings:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Lcom/android/server/am/IntentBindRecord;",
            ">;"
        }
    .end annotation
.end field

.field callStart:Z

.field final connections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field crashCount:I

.field final createTime:J

.field createdFromFg:Z

.field delayed:Z

.field delayedStop:Z

.field final deliveredStarts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord$StartItem;",
            ">;"
        }
    .end annotation
.end field

.field destroyTime:J

.field destroying:Z

.field executeFg:Z

.field executeNesting:I

.field executingStart:J

.field final exported:Z

.field foregroundId:I

.field foregroundNoti:Landroid/app/Notification;

.field final intent:Landroid/content/Intent$FilterComparison;

.field isForeground:Z

.field isolatedProc:Lcom/android/server/am/ProcessRecord;

.field lastActivity:J

.field private lastStartId:I

.field final name:Landroid/content/ComponentName;

.field nextRestartTime:J

.field final packageName:Ljava/lang/String;

.field final pendingStarts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord$StartItem;",
            ">;"
        }
    .end annotation
.end field

.field final permission:Ljava/lang/String;

.field final processName:Ljava/lang/String;

.field restartCount:I

.field restartDelay:J

.field restartTime:J

.field restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

.field final restarter:Ljava/lang/Runnable;

.field final serviceInfo:Landroid/content/pm/ServiceInfo;

.field final shortName:Ljava/lang/String;

.field startRequested:Z

.field startingBgTimeout:J

.field final stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

.field stopIfKilled:Z

.field stringName:Ljava/lang/String;

.field totalRestartCount:I

.field tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

.field final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;Landroid/content/ComponentName;Landroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;)V
    .locals 2
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "servStats"    # Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .param p3, "name"    # Landroid/content/ComponentName;
    .param p4, "intent"    # Landroid/content/Intent$FilterComparison;
    .param p5, "sInfo"    # Landroid/content/pm/ServiceInfo;
    .param p6, "callerIsFg"    # Z
    .param p7, "restarter"    # Ljava/lang/Runnable;

    .prologue
    .line 309
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 77
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 310
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 311
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 312
    iput-object p3, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 313
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    .line 314
    iput-object p4, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 315
    iput-object p5, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 316
    iget-object v0, p5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 317
    iget-object v0, p5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 318
    iget-object v0, p5, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 319
    iget-object v0, p5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    .line 320
    iget-boolean v0, p5, Landroid/content/pm/ServiceInfo;->exported:Z

    iput-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->exported:Z

    .line 321
    iput-object p7, p0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    .line 322
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->createTime:J

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 324
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 325
    iput-boolean p6, p0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 326
    return-void
.end method


# virtual methods
.method public cancelNotification()V
    .locals 4

    .prologue
    .line 513
    iget v2, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v2, :cond_0

    .line 516
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 517
    .local v1, "localPackageName":Ljava/lang/String;
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 518
    .local v0, "localForegroundId":I
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/ServiceRecord$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/server/am/ServiceRecord$2;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 535
    .end local v0    # "localForegroundId":I
    .end local v1    # "localPackageName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public clearDeliveredStartsLocked()V
    .locals 2

    .prologue
    .line 563
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 564
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 563
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 567
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "intent={"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-virtual {v4, v5, v6, v7, v10}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    const/16 v4, 0x7d

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 209
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "packageName="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "processName="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 212
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "permission="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 215
    .local v8, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 216
    .local v20, "nowReal":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_2

    .line 217
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "baseDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 219
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "resDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "dataDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    :cond_2
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "app="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_3

    .line 225
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "isolatedProc="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 227
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v4, :cond_4

    .line 228
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "delayed="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 230
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v4, :cond_6

    .line 231
    :cond_5
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "isForeground="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 232
    const-string v4, " foregroundId="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 233
    const-string v4, " foregroundNoti="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 235
    :cond_6
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "createTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->createTime:J

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    invoke-static {v4, v5, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 237
    const-string v4, " startingBgTimeout="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    move-object/from16 v0, p1

    invoke-static {v4, v5, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 239
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 240
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "lastActivity="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move-object/from16 v0, p1

    invoke-static {v4, v5, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 242
    const-string v4, " restartTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    move-object/from16 v0, p1

    invoke-static {v4, v5, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 244
    const-string v4, " createdFromFg="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 245
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-eqz v4, :cond_8

    .line 246
    :cond_7
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "startRequested="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 247
    const-string v4, " delayedStop="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 248
    const-string v4, " stopIfKilled="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 249
    const-string v4, " callStart="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->callStart:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 250
    const-string v4, " lastStartId="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 252
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eqz v4, :cond_9

    .line 253
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "executeNesting="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 254
    const-string v4, " executeFg="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 255
    const-string v4, " executingStart="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    move-object/from16 v0, p1

    invoke-static {v4, v5, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 257
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 259
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_b

    .line 260
    :cond_a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "destroying="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 261
    const-string v4, " destroyTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    move-object/from16 v0, p1

    invoke-static {v4, v5, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 263
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 265
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_d

    .line 267
    :cond_c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "restartCount="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 268
    const-string v4, " restartDelay="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-object/from16 v0, p1

    invoke-static {v4, v5, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 270
    const-string v4, " nextRestartTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-object/from16 v0, p1

    invoke-static {v4, v5, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 272
    const-string v4, " crashCount="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 274
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 275
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Delivered Starts:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    .line 278
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_f

    .line 279
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Pending Starts:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const-wide/16 v14, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    .line 282
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-lez v4, :cond_11

    .line 283
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Bindings:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_11

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/IntentBindRecord;

    .line 286
    .local v16, "b":Lcom/android/server/am/IntentBindRecord;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "* IntentBindRecord{"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    invoke-static/range {v16 .. v16}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/IntentBindRecord;->collectFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_10

    .line 289
    const-string v4, " CREATE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 291
    :cond_10
    const-string v4, "}:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/IntentBindRecord;->dumpInService(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 284
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 295
    .end local v16    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v19    # "i":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-lez v4, :cond_13

    .line 296
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "All Connections:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    const/16 v18, 0x0

    .local v18, "conni":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_13

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 299
    .local v17, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_12

    .line 300
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 299
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 297
    :cond_12
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 304
    .end local v17    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v18    # "conni":I
    .end local v19    # "i":I
    :cond_13
    return-void
.end method

.method dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p4, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ServiceRecord$StartItem;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ServiceRecord$StartItem;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 173
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_7

    .line 174
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 175
    .local v2, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-nez v2, :cond_1

    .line 176
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-=StartItem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is Null!!=-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 180
    const-string v3, " id="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 181
    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-eqz v3, :cond_2

    .line 182
    const-string v3, " dur="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    iget-wide v4, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    invoke-static {v4, v5, p4, p5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 185
    :cond_2
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-eqz v3, :cond_3

    .line 186
    const-string v3, " dc="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 188
    :cond_3
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-eqz v3, :cond_4

    .line 189
    const-string v3, " dxc="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 191
    :cond_4
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  intent="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_6

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    :goto_2
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    if-eqz v3, :cond_5

    .line 196
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  neededGrants="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 199
    :cond_5
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v3, :cond_0

    .line 200
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :cond_6
    const-string v3, "null"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 203
    .end local v2    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_7
    return-void
.end method

.method public findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;
    .locals 6
    .param p1, "id"    # I
    .param p2, "remove"    # Z

    .prologue
    .line 400
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 401
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 402
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 403
    .local v2, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-nez v2, :cond_1

    .line 404
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findDeliveredStart: -=StartItem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is Null!!=-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    :cond_1
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    if-ne v3, p1, :cond_0

    .line 408
    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 413
    .end local v2    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_2
    :goto_1
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public forceClearTracker()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 346
    :cond_0
    return-void
.end method

.method public getLastStartId()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    return v0
.end method

.method public getTracker()Lcom/android/internal/app/ProcessStats$ServiceState;
    .locals 6

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 338
    :goto_0
    return-object v0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessStatsService;->getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 336
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ProcessStats$ServiceState;->applyNewOwner(Ljava/lang/Object;)V

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    goto :goto_0
.end method

.method public hasAutoCreateConnections()Z
    .locals 4

    .prologue
    .line 382
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "conni":I
    :goto_0
    if-ltz v0, :cond_2

    .line 383
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 384
    .local v1, "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 385
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    iget v3, v3, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 386
    const/4 v3, 0x1

    .line 390
    .end local v1    # "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v2    # "i":I
    :goto_2
    return v3

    .line 384
    .restart local v1    # "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 382
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 390
    .end local v1    # "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v2    # "i":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public makeNextStartId()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 421
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 422
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-ge v0, v1, :cond_0

    .line 423
    iput v1, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 425
    :cond_0
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    return v0
.end method

.method public makeRestarting(IJ)V
    .locals 6
    .param p1, "memFactor"    # I
    .param p2, "now"    # J

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-nez v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessStatsService;->getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-nez v0, :cond_1

    .line 360
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/internal/app/ProcessStats$ServiceState;->setRestarting(ZIJ)V

    goto :goto_0
.end method

.method public postNotification()V
    .locals 8

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 430
    .local v4, "appUid":I
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 431
    .local v5, "appPid":I
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 434
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 435
    .local v3, "localPackageName":Ljava/lang/String;
    iget v6, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 436
    .local v6, "localForegroundId":I
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 437
    .local v2, "localForegroundNoti":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v0, Lcom/android/server/am/ServiceRecord$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ServiceRecord$1;-><init>(Lcom/android/server/am/ServiceRecord;Landroid/app/Notification;Ljava/lang/String;III)V

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 510
    .end local v2    # "localForegroundNoti":Landroid/app/Notification;
    .end local v3    # "localPackageName":Ljava/lang/String;
    .end local v6    # "localForegroundId":I
    :cond_0
    return-void
.end method

.method public resetRestartCounter()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 394
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 395
    iput-wide v2, p0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 396
    iput-wide v2, p0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 397
    return-void
.end method

.method public retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 364
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 365
    .local v2, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/IntentBindRecord;

    .line 366
    .local v3, "i":Lcom/android/server/am/IntentBindRecord;
    if-nez v3, :cond_0

    .line 367
    new-instance v3, Lcom/android/server/am/IntentBindRecord;

    .end local v3    # "i":Lcom/android/server/am/IntentBindRecord;
    invoke-direct {v3, p0, v2}, Lcom/android/server/am/IntentBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent$FilterComparison;)V

    .line 368
    .restart local v3    # "i":Lcom/android/server/am/IntentBindRecord;
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_0
    iget-object v4, v3, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBindRecord;

    .line 371
    .local v0, "a":Lcom/android/server/am/AppBindRecord;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 376
    .end local v0    # "a":Lcom/android/server/am/AppBindRecord;
    .local v1, "a":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 374
    .end local v1    # "a":Ljava/lang/Object;
    .restart local v0    # "a":Lcom/android/server/am/AppBindRecord;
    :cond_1
    new-instance v0, Lcom/android/server/am/AppBindRecord;

    .end local v0    # "a":Lcom/android/server/am/AppBindRecord;
    invoke-direct {v0, p0, v3, p2}, Lcom/android/server/am/AppBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 375
    .restart local v0    # "a":Lcom/android/server/am/AppBindRecord;
    iget-object v4, v3, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 376
    .restart local v1    # "a":Ljava/lang/Object;
    goto :goto_0
.end method

.method public stripForegroundServiceFlagFromNotification()V
    .locals 5

    .prologue
    .line 538
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-nez v3, :cond_0

    .line 560
    :goto_0
    return-void

    .line 542
    :cond_0
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 543
    .local v0, "localForegroundId":I
    iget v2, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 544
    .local v2, "localUserId":I
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 548
    .local v1, "localPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v4, Lcom/android/server/am/ServiceRecord$3;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/android/server/am/ServiceRecord$3;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;II)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 570
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    .line 578
    :goto_0
    return-object v1

    .line 573
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 574
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ServiceRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    goto :goto_0
.end method
