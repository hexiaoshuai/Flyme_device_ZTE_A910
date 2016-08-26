.class Lcom/android/internal/telephony/MMTelSSRequest;
.super Ljava/lang/Object;
.source "MMTelSSTransport.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MMTelSSReq"

.field private static final MAX_POOL_SIZE:I = 0x4

.field static sNextSerial:I

.field private static sPool:Lcom/android/internal/telephony/MMTelSSRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sSerialMonitor:Ljava/lang/Object;


# instance fields
.field mNext:Lcom/android/internal/telephony/MMTelSSRequest;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I

.field mp:Landroid/os/Parcel;

.field requestParm:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    sput v1, Lcom/android/internal/telephony/MMTelSSRequest;->sNextSerial:I

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MMTelSSRequest;->sSerialMonitor:Ljava/lang/Object;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MMTelSSRequest;->sPoolSync:Ljava/lang/Object;

    .line 136
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSRequest;->sPool:Lcom/android/internal/telephony/MMTelSSRequest;

    .line 137
    sput v1, Lcom/android/internal/telephony/MMTelSSRequest;->sPoolSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    return-void
.end method

.method static obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;
    .locals 4
    .param p0, "request"    # I
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    sget-object v2, Lcom/android/internal/telephony/MMTelSSRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 161
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/MMTelSSRequest;->sPool:Lcom/android/internal/telephony/MMTelSSRequest;

    if-eqz v1, :cond_0

    .line 162
    sget-object v0, Lcom/android/internal/telephony/MMTelSSRequest;->sPool:Lcom/android/internal/telephony/MMTelSSRequest;

    .line 163
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mNext:Lcom/android/internal/telephony/MMTelSSRequest;

    sput-object v1, Lcom/android/internal/telephony/MMTelSSRequest;->sPool:Lcom/android/internal/telephony/MMTelSSRequest;

    .line 164
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mNext:Lcom/android/internal/telephony/MMTelSSRequest;

    .line 165
    sget v1, Lcom/android/internal/telephony/MMTelSSRequest;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/internal/telephony/MMTelSSRequest;->sPoolSize:I

    .line 167
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    if-nez v0, :cond_1

    .line 170
    new-instance v0, Lcom/android/internal/telephony/MMTelSSRequest;

    .end local v0    # "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    invoke-direct {v0}, Lcom/android/internal/telephony/MMTelSSRequest;-><init>()V

    .line 173
    .restart local v0    # "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/MMTelSSRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 174
    :try_start_1
    sget v1, Lcom/android/internal/telephony/MMTelSSRequest;->sNextSerial:I

    add-int/lit8 v3, v1, 0x1

    sput v3, Lcom/android/internal/telephony/MMTelSSRequest;->sNextSerial:I

    iput v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    .line 175
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    iput p0, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    .line 177
    iput-object p1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    .line 180
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_2

    .line 181
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Message target must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 175
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 185
    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    iget v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    return-object v0
.end method

.method static resetSerial()V
    .locals 2

    .prologue
    .line 212
    sget-object v1, Lcom/android/internal/telephony/MMTelSSRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcom/android/internal/telephony/MMTelSSRequest;->sNextSerial:I

    .line 214
    monitor-exit v1

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method onError(ILjava/lang/Object;)V
    .locals 4
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 241
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 243
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    const-string v1, "MMTelSSReq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMTelSSRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 249
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 254
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    .line 256
    :cond_1
    return-void
.end method

.method release()V
    .locals 3

    .prologue
    .line 197
    sget-object v1, Lcom/android/internal/telephony/MMTelSSRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    sget v0, Lcom/android/internal/telephony/MMTelSSRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 199
    sget-object v0, Lcom/android/internal/telephony/MMTelSSRequest;->sPool:Lcom/android/internal/telephony/MMTelSSRequest;

    iput-object v0, p0, Lcom/android/internal/telephony/MMTelSSRequest;->mNext:Lcom/android/internal/telephony/MMTelSSRequest;

    .line 200
    sput-object p0, Lcom/android/internal/telephony/MMTelSSRequest;->sPool:Lcom/android/internal/telephony/MMTelSSRequest;

    .line 201
    sget v0, Lcom/android/internal/telephony/MMTelSSRequest;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/MMTelSSRequest;->sPoolSize:I

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    .line 204
    :cond_0
    monitor-exit v1

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method serialString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 223
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget v4, p0, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "sn":Ljava/lang/String;
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "s":I
    :goto_0
    rsub-int/lit8 v4, v1, 0x4

    if-ge v0, v4, :cond_0

    .line 228
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
