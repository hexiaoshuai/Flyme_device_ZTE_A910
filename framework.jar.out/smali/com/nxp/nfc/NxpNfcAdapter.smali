.class public final Lcom/nxp/nfc/NxpNfcAdapter;
.super Ljava/lang/Object;
.source "NxpNfcAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NXPNFC"

.field static sIsInitialized:Z

.field static sNfcAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/nfc/NfcAdapter;",
            "Lcom/nxp/nfc/NxpNfcAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

.field private static sService:Landroid/nfc/INfcAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nxp/nfc/NxpNfcAdapter;->sIsInitialized:Z

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nxp/nfc/NxpNfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method private attemptDeadServiceRecovery()V
    .locals 3

    .prologue
    .line 126
    const-string v1, "NXPNFC"

    const-string v2, "NFC service dead - attempting to recover"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lcom/nxp/nfc/NxpNfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v0

    .line 128
    .local v0, "service":Landroid/nfc/INfcAdapter;
    if-nez v0, :cond_0

    .line 129
    const-string v1, "NXPNFC"

    const-string v2, "could not retrieve NFC service during service recovery"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    sput-object v0, Lcom/nxp/nfc/NxpNfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 137
    invoke-static {}, Lcom/nxp/nfc/NxpNfcAdapter;->getNxpNfcAdapterInterface()Lcom/nxp/nfc/INxpNfcAdapter;

    move-result-object v1

    sput-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    goto :goto_0
.end method

.method public static declared-synchronized getNxpNfcAdapter(Landroid/nfc/NfcAdapter;)Lcom/nxp/nfc/NxpNfcAdapter;
    .locals 4
    .param p0, "adapter"    # Landroid/nfc/NfcAdapter;

    .prologue
    .line 71
    const-class v2, Lcom/nxp/nfc/NxpNfcAdapter;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/nxp/nfc/NxpNfcAdapter;->sIsInitialized:Z

    if-nez v1, :cond_3

    .line 72
    if-nez p0, :cond_0

    .line 73
    const-string v1, "NXPNFC"

    const-string v3, "could not find NFC support"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 76
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/nxp/nfc/NxpNfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v1

    sput-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 77
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    if-nez v1, :cond_1

    .line 78
    const-string v1, "NXPNFC"

    const-string v3, "could not retrieve NFC service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 81
    :cond_1
    invoke-static {}, Lcom/nxp/nfc/NxpNfcAdapter;->getNxpNfcAdapterInterface()Lcom/nxp/nfc/INxpNfcAdapter;

    move-result-object v1

    sput-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    .line 82
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    if-nez v1, :cond_2

    .line 83
    const-string v1, "NXPNFC"

    const-string v3, "could not retrieve NXP NFC service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 86
    :cond_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/nxp/nfc/NxpNfcAdapter;->sIsInitialized:Z

    .line 88
    :cond_3
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nxp/nfc/NxpNfcAdapter;

    .line 89
    .local v0, "nxpAdapter":Lcom/nxp/nfc/NxpNfcAdapter;
    if-nez v0, :cond_4

    .line 90
    new-instance v0, Lcom/nxp/nfc/NxpNfcAdapter;

    .end local v0    # "nxpAdapter":Lcom/nxp/nfc/NxpNfcAdapter;
    invoke-direct {v0}, Lcom/nxp/nfc/NxpNfcAdapter;-><init>()V

    .line 91
    .restart local v0    # "nxpAdapter":Lcom/nxp/nfc/NxpNfcAdapter;
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :cond_4
    monitor-exit v2

    return-object v0
.end method

.method private static getNxpNfcAdapterInterface()Lcom/nxp/nfc/INxpNfcAdapter;
    .locals 3

    .prologue
    .line 110
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "You need a reference from NfcAdapter to use the  NXP NFC APIs"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_0
    :try_start_0
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNxpNfcAdapterInterface()Lcom/nxp/nfc/INxpNfcAdapter;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 116
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 117
    .restart local v0    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getServiceInterface()Landroid/nfc/INfcAdapter;
    .locals 2

    .prologue
    .line 99
    const-string/jumbo v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 100
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 101
    const/4 v1, 0x0

    .line 103
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public DefaultRouteSet(Ljava/lang/String;ZZZ)V
    .locals 5
    .param p1, "routeLoc"    # Ljava/lang/String;
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    const/4 v2, 0x0

    .line 414
    .local v2, "seID":I
    const/4 v1, 0x0

    .line 415
    .local v1, "result":Z
    :try_start_0
    const-string v3, "com.nxp.uicc.ID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    const/4 v2, 0x2

    .line 425
    :goto_0
    sget-object v3, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v3, v2, p2, p3, p4}, Lcom/nxp/nfc/INxpNfcAdapter;->DefaultRouteSet(IZZZ)V

    .line 430
    return-void

    .line 417
    :cond_0
    const-string v3, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 418
    const/4 v2, 0x1

    goto :goto_0

    .line 419
    :cond_1
    const-string v3, "com.nxp.host.ID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 420
    const/4 v2, 0x0

    goto :goto_0

    .line 422
    :cond_2
    const-string v3, "NXPNFC"

    const-string v4, "DefaultRouteSet: wrong default route ID"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v3, Ljava/io/IOException;

    const-string v4, "DefaultRouteSet failed: Wrong default route ID"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "NXPNFC"

    const-string v4, "confsetDefaultRoute failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    new-instance v3, Ljava/io/IOException;

    const-string v4, "confsetDefaultRoute failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public MifareCLTRouteSet(Ljava/lang/String;ZZZ)V
    .locals 5
    .param p1, "routeLoc"    # Ljava/lang/String;
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    const/4 v2, 0x0

    .line 443
    .local v2, "seID":I
    const/4 v1, 0x0

    .line 444
    .local v1, "result":Z
    :try_start_0
    const-string v3, "com.nxp.uicc.ID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    const/4 v2, 0x2

    .line 454
    :goto_0
    sget-object v3, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v3, v2, p2, p3, p4}, Lcom/nxp/nfc/INxpNfcAdapter;->MifareCLTRouteSet(IZZZ)V

    .line 459
    return-void

    .line 446
    :cond_0
    const-string v3, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 447
    const/4 v2, 0x1

    goto :goto_0

    .line 448
    :cond_1
    const-string v3, "com.nxp.host.ID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 449
    const/4 v2, 0x0

    goto :goto_0

    .line 451
    :cond_2
    const-string v3, "NXPNFC"

    const-string v4, "confMifareCLT: wrong default route ID"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v3, Ljava/io/IOException;

    const-string v4, "confMifareCLT failed: Wrong default route ID"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "NXPNFC"

    const-string v4, "confMifareCLT failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    new-instance v3, Ljava/io/IOException;

    const-string v4, "confMifareCLT failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public MifareDesfireRouteSet(Ljava/lang/String;ZZZ)V
    .locals 5
    .param p1, "routeLoc"    # Ljava/lang/String;
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    const/4 v2, 0x0

    .line 382
    .local v2, "seID":I
    const/4 v1, 0x0

    .line 383
    .local v1, "result":Z
    :try_start_0
    const-string v3, "com.nxp.uicc.ID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    const/4 v2, 0x2

    .line 396
    :goto_0
    const-string v3, "NXPNFC"

    const-string v4, "calling Services"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    sget-object v3, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v3, v2, p2, p3, p4}, Lcom/nxp/nfc/INxpNfcAdapter;->MifareDesfireRouteSet(IZZZ)V

    .line 402
    return-void

    .line 386
    :cond_0
    const-string v3, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 388
    const/4 v2, 0x1

    goto :goto_0

    .line 390
    :cond_1
    const-string v3, "com.nxp.host.ID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 391
    const/4 v2, 0x0

    goto :goto_0

    .line 393
    :cond_2
    const-string v3, "NXPNFC"

    const-string v4, "confMifareDesfireProtoRoute: wrong default route ID"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v3, Ljava/io/IOException;

    const-string v4, "confMifareProtoRoute failed: Wrong default route ID"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "NXPNFC"

    const-string v4, "confMifareDesfireProtoRoute failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    new-instance v3, Ljava/io/IOException;

    const-string v4, "confMifareDesfireProtoRoute failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public createNfcAla()Lcom/nxp/nfc/NfcAla;
    .locals 3

    .prologue
    .line 282
    :try_start_0
    new-instance v1, Lcom/nxp/nfc/NfcAla;

    sget-object v2, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v2}, Lcom/nxp/nfc/INxpNfcAdapter;->getNfcAlaInterface()Lcom/nxp/nfc/INfcAla;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nxp/nfc/NfcAla;-><init>(Lcom/nxp/nfc/INfcAla;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-object v1

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NXPNFC"

    const-string v2, "createNfcAla failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createNfcDta()Lcom/nxp/nfc/NfcDta;
    .locals 3

    .prologue
    .line 297
    :try_start_0
    new-instance v1, Lcom/nxp/nfc/NfcDta;

    sget-object v2, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v2}, Lcom/nxp/nfc/INxpNfcAdapter;->getNfcDtaInterface()Lcom/nxp/nfc/INfcDta;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nxp/nfc/NfcDta;-><init>(Lcom/nxp/nfc/INfcDta;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    return-object v1

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NXPNFC"

    const-string v2, "createNfcDta failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deSelectedSecureElement(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    :try_start_0
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v1, p1}, Lcom/nxp/nfc/INxpNfcAdapter;->deselectSecureElement(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NXPNFC"

    const-string v2, "deselectSecureElement failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    new-instance v1, Ljava/io/IOException;

    const-string v2, "deselectSecureElement failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAvailableSecureElementList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "arr":[Ljava/lang/String;
    :try_start_0
    const-string v4, "NXPNFC"

    const-string v5, "getAvailableSecureElementList-Enter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v4, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v4, p1}, Lcom/nxp/nfc/INxpNfcAdapter;->getSecureElementList(Ljava/lang/String;)[I

    move-result-object v3

    .line 154
    .local v3, "seList":[I
    array-length v4, v3

    new-array v0, v4, [Ljava/lang/String;

    .line 156
    if-eqz v3, :cond_3

    array-length v4, v3

    if-eqz v4, :cond_3

    .line 158
    const-string v4, "NXPNFC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAvailableSecureElementList-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 161
    const-string v4, "NXPNFC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAvailableSecure seList[i]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    aget v4, v3, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 164
    const-string v4, "com.nxp.smart_mx.ID"

    aput-object v4, v0, v2

    .line 159
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_0
    aget v4, v3, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 168
    const-string v4, "com.nxp.uicc.ID"

    aput-object v4, v0, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 180
    .end local v2    # "i":I
    .end local v3    # "seList":[I
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "NXPNFC"

    const-string v5, "getAvailableSecureElementList: failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failure in deselecting the selected Secure Element"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 170
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "i":I
    .restart local v3    # "seList":[I
    :cond_1
    :try_start_1
    aget v4, v3, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 171
    const-string v4, "com.nxp.all_se.ID"

    aput-object v4, v0, v2

    goto :goto_1

    .line 174
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "No Secure Element selected"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method

.method public getDefaultSelectedSecureElement(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    const/4 v1, 0x0

    .line 316
    .local v1, "seID":I
    :try_start_0
    sget-object v2, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v2, p1}, Lcom/nxp/nfc/INxpNfcAdapter;->getSelectedSecureElement(Ljava/lang/String;)I

    move-result v1

    .line 317
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 318
    const-string v2, "com.nxp.uicc.ID"

    .line 322
    :goto_0
    return-object v2

    .line 319
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 320
    const-string v2, "com.nxp.smart_mx.ID"

    goto :goto_0

    .line 321
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 322
    const-string v2, "com.nxp.all_se.ID"

    goto :goto_0

    .line 324
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No Secure Element selected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NXPNFC"

    const-string v3, "getSelectedSecureElement failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    new-instance v2, Ljava/io/IOException;

    const-string v3, "getSelectedSecureElement failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getNfcAccessExtras(Ljava/lang/String;)Lcom/nxp/nfc/INfcAccessExtras;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 267
    :try_start_0
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v1, p1}, Lcom/nxp/nfc/INxpNfcAdapter;->getNfcAccessExtrasInterface(Ljava/lang/String;)Lcom/nxp/nfc/INfcAccessExtras;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 270
    :goto_0
    return-object v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NXPNFC"

    const-string v2, "getNfcAccessExtras failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNxpNfcAdapterExtrasInterface(Landroid/nfc/INfcAdapterExtras;)Lcom/nxp/nfc/INxpNfcAdapterExtras;
    .locals 3
    .param p1, "extras"    # Landroid/nfc/INfcAdapterExtras;

    .prologue
    .line 465
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 466
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "You need a context on NxpNfcAdapter to use the  NXP NFC extras APIs"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 470
    :cond_1
    :try_start_0
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v1}, Lcom/nxp/nfc/INxpNfcAdapter;->getNxpNfcAdapterExtrasInterface()Lcom/nxp/nfc/INxpNfcAdapterExtras;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 473
    :goto_0
    return-object v1

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NXPNFC"

    const-string v2, "getNxpNfcAdapterExtrasInterface failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 473
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public selectDefaultSecureElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v2, 0x0

    .line 196
    .local v2, "seID":I
    const/4 v4, 0x0

    .line 198
    .local v4, "seSelected":Z
    const-string v5, "com.nxp.uicc.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 199
    const/4 v2, 0x2

    .line 212
    :goto_0
    :try_start_0
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, p1}, Lcom/nxp/nfc/INxpNfcAdapter;->getSelectedSecureElement(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v2, :cond_0

    .line 213
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, p1}, Lcom/nxp/nfc/INxpNfcAdapter;->deselectSecureElement(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_0
    :try_start_1
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, p1}, Lcom/nxp/nfc/INxpNfcAdapter;->getSecureElementList(Ljava/lang/String;)[I

    move-result-object v3

    .line 226
    .local v3, "seList":[I
    if-eqz v3, :cond_6

    array-length v5, v3

    if-eqz v5, :cond_6

    .line 228
    const-string v5, "com.nxp.all_se.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_5

    .line 229
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_6

    .line 230
    aget v5, v3, v1

    if-ne v5, v2, :cond_1

    .line 232
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, p1, v2}, Lcom/nxp/nfc/INxpNfcAdapter;->selectSecureElement(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    const/4 v4, 0x1

    .line 229
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 200
    .end local v1    # "i":I
    .end local v3    # "seList":[I
    :cond_2
    const-string v5, "com.nxp.smart_mx.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 201
    const/4 v2, 0x1

    goto :goto_0

    .line 202
    :cond_3
    const-string v5, "com.nxp.all_se.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 203
    const/4 v2, 0x3

    goto :goto_0

    .line 205
    :cond_4
    const-string v5, "NXPNFC"

    const-string/jumbo v6, "selectDefaultSecureElement: wrong Secure Element ID"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "selectDefaultSecureElement failed: Wronf Secure Element ID"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "NXPNFC"

    const-string/jumbo v6, "selectDefaultSecureElement: getSelectedSecureElement failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failure in deselecting the selected Secure Element"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 238
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "seList":[I
    :cond_5
    :try_start_2
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, p1, v2}, Lcom/nxp/nfc/INxpNfcAdapter;->selectSecureElement(Ljava/lang/String;I)I

    .line 239
    const/4 v4, 0x1

    .line 244
    :cond_6
    if-nez v4, :cond_7

    .line 245
    const-string v5, "com.nxp.uicc.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 246
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, v2}, Lcom/nxp/nfc/INxpNfcAdapter;->storeSePreference(I)V

    .line 247
    new-instance v5, Ljava/io/IOException;

    const-string v6, "UICC not detected"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 256
    .end local v3    # "seList":[I
    :catch_1
    move-exception v0

    .line 257
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v5, "NXPNFC"

    const-string/jumbo v6, "selectUiccCardEmulation: getSecureElementList failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_7
    return-void

    .line 248
    .restart local v3    # "seList":[I
    :cond_8
    :try_start_3
    const-string v5, "com.nxp.smart_mx.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 249
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, v2}, Lcom/nxp/nfc/INxpNfcAdapter;->storeSePreference(I)V

    .line 250
    new-instance v5, Ljava/io/IOException;

    const-string v6, "SMART_MX not detected"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 251
    :cond_9
    const-string v5, "com.nxp.all_se.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 252
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, v2}, Lcom/nxp/nfc/INxpNfcAdapter;->storeSePreference(I)V

    .line 253
    new-instance v5, Ljava/io/IOException;

    const-string v6, "ALL_SE not detected"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
.end method