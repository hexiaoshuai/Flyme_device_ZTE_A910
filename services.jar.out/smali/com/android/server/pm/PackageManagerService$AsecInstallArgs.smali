.class Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsecInstallArgs"
.end annotation


# static fields
.field static final PUBLIC_RES_FILE_NAME:Ljava/lang/String; = "res.zip"

.field static final RES_FILE_NAME:Ljava/lang/String; = "pkg.apk"


# instance fields
.field cid:Ljava/lang/String;

.field legacyNativeLibraryDir:Ljava/lang/String;

.field packagePath:Ljava/lang/String;

.field resourcePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 9
    .param p2, "params"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    .prologue
    .line 10245
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 10246
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v3, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v4, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;)V

    .line 10251
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    if-eqz v0, :cond_0

    .line 10252
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v0}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->mInstallerUid:I

    .line 10256
    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 9
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "isForwardLocked"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 10277
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 10278
    invoke-static {}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v1

    # invokes: Lcom/android/server/pm/PackageManagerService;->isAsecExternal(Ljava/lang/String;)Z
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerService;->access$4300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    :goto_0
    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :cond_0
    or-int/2addr v3, v0

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, p3

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;)V

    .line 10281
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    .line 10282
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    .line 10283
    return-void

    :cond_1
    move v3, v0

    .line 10278
    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 12
    .param p2, "fullCodePath"    # Ljava/lang/String;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "isExternal"    # Z
    .param p5, "isForwardLocked"    # Z

    .prologue
    .line 10260
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 10261
    invoke-static {}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    const/16 v0, 0x8

    move v3, v0

    :goto_0
    if-eqz p5, :cond_2

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;)V

    .line 10265
    const-string v0, "pkg.apk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10266
    new-instance v0, Ljava/io/File;

    const-string v1, "pkg.apk"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 10270
    :cond_0
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 10271
    .local v9, "eidx":I
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 10272
    .local v11, "subStr1":Ljava/lang/String;
    const-string v0, "/"

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 10273
    .local v10, "sidx":I
    add-int/lit8 v0, v10, 0x1

    invoke-virtual {v11, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    .line 10274
    invoke-direct {p0, v11}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    .line 10275
    return-void

    .line 10261
    .end local v9    # "eidx":I
    .end local v10    # "sidx":I
    .end local v11    # "subStr1":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private cleanUp()V
    .locals 2

    .prologue
    .line 10480
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SD_INSTALL:Z

    if-eqz v0, :cond_0

    const-string v0, "PackageManager"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10483
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 10484
    return-void
.end method

.method private cleanUpResourcesLI(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10505
    .local p1, "allCodePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUp()V

    .line 10507
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 10508
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->instructionSets:[Ljava/lang/String;

    if-nez v8, :cond_0

    .line 10509
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "instructionSet == null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 10511
    :cond_0
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->instructionSets:[Ljava/lang/String;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->access$4200([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 10512
    .local v3, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10513
    .local v1, "codePath":Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 10514
    .local v2, "dexCodeInstructionSet":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v8, v1, v2}, Lcom/android/server/pm/Installer;->rmdex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 10515
    .local v7, "retCode":I
    if-gez v7, :cond_2

    .line 10516
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t remove dex file for package:  at location "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", retcode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10513
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10523
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "codePath":Ljava/lang/String;
    .end local v2    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v3    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "retCode":I
    :cond_3
    return-void
.end method

.method private getAllCodePaths()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10487
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10488
    .local v0, "codeFile":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10490
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 10491
    .local v1, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 10496
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :goto_0
    return-object v2

    .line 10492
    :catch_0
    move-exception v2

    .line 10496
    :cond_0
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method private setMountPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "mountPath"    # Ljava/lang/String;

    .prologue
    .line 10432
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10434
    .local v1, "mountFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v2, "pkg.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10435
    .local v0, "monolithicFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10436
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    .line 10437
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10438
    new-instance v2, Ljava/io/File;

    const-string v3, "res.zip"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->resourcePath:Ljava/lang/String;

    .line 10447
    :goto_0
    new-instance v2, Ljava/io/File;

    const-string v3, "lib"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->legacyNativeLibraryDir:Ljava/lang/String;

    .line 10448
    return-void

    .line 10440
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->resourcePath:Ljava/lang/String;

    goto :goto_0

    .line 10443
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    .line 10444
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->resourcePath:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method checkFreeStorage(Lcom/android/internal/app/IMediaContainerService;)Z
    .locals 8
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 10290
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    move-result v6

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->abiOverride:Ljava/lang/String;

    invoke-interface {p1, v5, v6, v7}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;ZLjava/lang/String;)J

    move-result-wide v0

    .line 10294
    .local v0, "sizeBytes":J
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isExternal()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10295
    new-instance v5, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v5, v4}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 10300
    .local v3, "target":Ljava/io/File;
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v2

    .line 10301
    .local v2, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide v6

    cmp-long v5, v0, v6

    if-gtz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    .line 10297
    .end local v2    # "storage":Landroid/os/storage/StorageManager;
    .end local v3    # "target":Ljava/io/File;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    .restart local v3    # "target":Ljava/io/File;
    goto :goto_0
.end method

.method cleanUpResourcesLI()V
    .locals 1

    .prologue
    .line 10501
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->getAllCodePaths()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUpResourcesLI(Ljava/util/List;)V

    .line 10502
    return-void
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .locals 9
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "temp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 10305
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-eqz v0, :cond_0

    .line 10306
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already staged; skipping copy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10307
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    .line 10308
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    move v0, v8

    .line 10330
    :goto_0
    return v0

    .line 10312
    :cond_0
    if-eqz p2, :cond_1

    .line 10313
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->createCopyFile()V

    .line 10322
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isExternal()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    move-result v5

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->abiOverride:Ljava/lang/String;

    const/4 v6, 0x0

    # invokes: Lcom/android/server/pm/PackageManagerService;->deriveAbiOverride(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/android/server/pm/PackageManagerService;->access$4400(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IMediaContainerService;->copyPackageToContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 10326
    .local v7, "newMountPath":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 10327
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    move v0, v8

    .line 10328
    goto :goto_0

    .line 10319
    .end local v7    # "newMountPath":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_1

    .line 10330
    .restart local v7    # "newMountPath":Ljava/lang/String;
    :cond_2
    const/16 v0, -0x12

    goto :goto_0
.end method

.method createCopyFile()V
    .locals 1

    .prologue
    .line 10286
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerService;->allocateExternalStageCidLegacy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    .line 10287
    return-void
.end method

.method doPostCopy(I)I
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 10566
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10567
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v1

    const-string v2, "pkg.apk"

    invoke-static {v0, v1, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10570
    :cond_0
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to finalize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10571
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 10572
    const/16 v0, -0x12

    .line 10576
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method doPostDeleteLI(Z)Z
    .locals 5
    .param p1, "delete"    # Z

    .prologue
    .line 10537
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_SD_INSTALL:Z

    if-eqz v2, :cond_0

    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doPostDeleteLI() del="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10538
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->getAllCodePaths()Ljava/util/List;

    move-result-object v0

    .line 10539
    .local v0, "allCodePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v1

    .line 10540
    .local v1, "mounted":Z
    if-eqz v1, :cond_1

    .line 10542
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10543
    const/4 v1, 0x0

    .line 10546
    :cond_1
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 10547
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUpResourcesLI(Ljava/util/List;)V

    .line 10549
    :cond_2
    if-nez v1, :cond_3

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method doPostInstall(II)I
    .locals 6
    .param p1, "status"    # I
    .param p2, "uid"    # I

    .prologue
    .line 10451
    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    .line 10452
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUp()V

    .line 10476
    .end local p1    # "status":I
    :cond_0
    :goto_0
    return p1

    .line 10456
    .restart local p1    # "status":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10457
    invoke-static {p2}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 10458
    .local v0, "groupOwner":I
    const-string v2, "pkg.apk"

    .line 10464
    .local v2, "protectedFile":Ljava/lang/String;
    :goto_1
    const/16 v3, 0x2710

    if-lt p2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 10466
    :cond_2
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to finalize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10467
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 10468
    const/16 p1, -0x12

    goto :goto_0

    .line 10460
    .end local v0    # "groupOwner":I
    .end local v2    # "protectedFile":Ljava/lang/String;
    :cond_3
    const/4 v0, -0x1

    .line 10461
    .restart local v0    # "groupOwner":I
    const/4 v2, 0x0

    .restart local v2    # "protectedFile":Ljava/lang/String;
    goto :goto_1

    .line 10471
    :cond_4
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v1

    .line 10472
    .local v1, "mounted":Z
    if-nez v1, :cond_0

    .line 10473
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    goto :goto_0
.end method

.method doPreCopy()I
    .locals 4

    .prologue
    .line 10554
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10555
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "com.android.defcontainer"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "pkg.apk"

    invoke-static {v0, v1, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10557
    const/16 v0, -0x12

    .line 10561
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method doPreInstall(I)I
    .locals 5
    .param p1, "status"    # I

    .prologue
    .line 10350
    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    .line 10352
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 10365
    .end local p1    # "status":I
    :cond_0
    :goto_0
    return p1

    .line 10354
    .restart local p1    # "status":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    .line 10355
    .local v0, "mounted":Z
    if-nez v0, :cond_0

    .line 10356
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 10358
    .local v1, "newMountPath":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 10359
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    goto :goto_0

    .line 10361
    :cond_2
    const/16 p1, -0x12

    goto :goto_0
.end method

.method doRename(ILandroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 8
    .param p1, "status"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "oldCodePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 10369
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v6, "/pkg.apk"

    # invokes: Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p3, v5, v6}, Lcom/android/server/pm/PackageManagerService;->access$4500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10370
    .local v2, "newCacheId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 10371
    .local v3, "newMountPath":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10373
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 10374
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to unmount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " before renaming"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10428
    :goto_0
    return v4

    .line 10378
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/internal/content/PackageHelper;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 10379
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to rename "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " which might be stale. Will try to clean up."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10382
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 10383
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Very strange. Cannot clean up stale container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10387
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/internal/content/PackageHelper;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 10388
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to rename "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " inspite of cleaning it up."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 10393
    :cond_2
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 10394
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mounting container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10395
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3e8

    invoke-static {v2, v5, v6}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 10400
    :goto_1
    if-nez v3, :cond_4

    .line 10401
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get cache path for  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 10398
    :cond_3
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 10404
    :cond_4
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Succesfully renamed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at new path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10407
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    .line 10409
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10410
    .local v1, "beforeCodeFile":Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    .line 10411
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10414
    .local v0, "afterCodeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    .line 10415
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-static {v1, v0, v4}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 10417
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1, v0, v4}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 10421
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    .line 10422
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    .line 10423
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setSplitCodePaths([Ljava/lang/String;)V

    .line 10424
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    .line 10425
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    .line 10426
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setSplitResourcePaths([Ljava/lang/String;)V

    .line 10428
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method getCodePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10336
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    return-object v0
.end method

.method getLegacyNativeLibraryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10346
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->legacyNativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10533
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->getAsecPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10341
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method matchContainer(Ljava/lang/String;)Z
    .locals 1
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 10526
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10527
    const/4 v0, 0x1

    .line 10529
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
