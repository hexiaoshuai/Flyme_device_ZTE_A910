.class public Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;
.super Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
.source "SvltePhoneProxy.java"


# instance fields
.field protected mCdmaIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

.field protected mCdmaIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

.field private mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

.field protected mLteIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

.field protected mLteIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 2
    .param p1, "gsmPhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "cdmaPhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p3, "radioTechMode"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;I)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SvltePhoneProxy: cdmaPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gsmPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCdmaIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 90
    :goto_0
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLteIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 99
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updateIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)V

    .line 101
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCdmaIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    .line 103
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLteIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    .line 105
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updateIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)V

    .line 107
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getDefaultCsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->setCsPhone(Lcom/android/internal/telephony/PhoneBase;)V

    .line 108
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getDefaultPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->setPsPhone(Lcom/android/internal/telephony/PhoneBase;)V

    .line 110
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    .line 112
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaLteDcPhoneProxy: mIratController = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIratDataSwitchHelper = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->shareLTEServiceStateTracker(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V

    .line 118
    const-class v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    .line 120
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    if-nez v0, :cond_5

    .line 121
    const-string v0, "Get ITelephonyExt fail"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->log(Ljava/lang/String;)V

    .line 126
    :goto_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v0, p0}, Lcom/mediatek/common/telephony/ITelephonyExt;->startDataRoamingStrategy(Ljava/lang/Object;)V

    .line 130
    :cond_1
    return-void

    .line 88
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCdmaIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto/16 :goto_0

    .line 92
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCdmaIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    if-eqz v0, :cond_4

    .line 94
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLteIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto/16 :goto_1

    .line 96
    :cond_4
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLteIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto/16 :goto_1

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ITelephonyExt;->init(Landroid/content/Context;)V

    goto :goto_2
.end method

.method private createAndShareDcTracker()V
    .locals 2

    .prologue
    .line 149
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAndShareDcTracker: mSharedDcTracker ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iput-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 152
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iput-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 153
    return-void
.end method

.method private shareLTEServiceStateTracker(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "gsmPhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "cdmaPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shareLTEServiceStateTracker: cdmaPhone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gsmPhone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    .line 174
    .local v0, "lteServiceStateTracker":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->setSvlteServiceStateTracker(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)V

    .line 176
    return-void
.end method

.method private updateCsPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "csPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCsPhone: mCsPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", csPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->log(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateCsPhoneForSvlte(Lcom/android/internal/telephony/PhoneBase;)V

    .line 259
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 261
    :cond_0
    return-void
.end method

.method private updateIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "targetPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIccPhoneBookInterfaceManager: targetPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 305
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 306
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCdmaIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLteIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    goto :goto_0
.end method

.method private updateIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "targetPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIccSmsInterfaceManager: targetPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 296
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 297
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCdmaIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLteIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto :goto_0
.end method

.method private updatePsPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "psPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 268
    const/4 v0, -0x1

    .line 269
    .local v0, "psType":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 270
    const/4 v0, 0x1

    .line 274
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updatePsPhoneAndCi(Lcom/android/internal/telephony/PhoneBase;)V

    .line 276
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updatePhoneIfNeeded(Lcom/android/internal/telephony/PhoneBase;)V

    .line 277
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateRecords()V

    .line 279
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->setPsServiceType(I)V

    .line 280
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->setPsServiceType(I)V

    .line 281
    return-void

    .line 271
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 272
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateRegistrantsInfo(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "targetPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 370
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimCsimPhone(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const-string v0, "SvltePhoneProxy updateRegistrantsInfo: usim+csim."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    const-string v0, "SvltePhoneProxy updateRegistrantsInfo: donothing."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->dispose()V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispose: mSharedDcTracker ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dispose()V

    .line 184
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->dispose()V

    .line 185
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/ITelephonyExt;->stopDataRoamingStrategy()V

    .line 188
    :cond_0
    return-void
.end method

.method protected getDefaultCsPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method protected getDefaultPsPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getRatMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v0

    .line 140
    .local v0, "ratMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultPsPhone: ratMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->isCdmaOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 144
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    goto :goto_0
.end method

.method public getIratController()Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    return-object v0
.end method

.method public getIratDataSwitchHelper()Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    const-string v0, "SvltePhoneProxy"

    return-object v0
.end method

.method public getRatMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .locals 5

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getSubId()I

    move-result v1

    .line 162
    .local v1, "subId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getCdmaRatModeKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 165
    .local v0, "ratMode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRatMode ratMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    aget-object v2, v2, v0

    return-object v2
.end method

.method public getSvlteServiceState()Landroid/telephony/ServiceState;
    .locals 3

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 316
    .local v0, "isInSvlteMode":Z
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 318
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getSvlteServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 320
    :goto_1
    return-object v1

    .line 314
    .end local v0    # "isInSvlteMode":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 320
    .restart local v0    # "isInSvlteMode":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 380
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimCsimPhone(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SvltePhoneProxy: use GSM phone to handlePinMmi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    .line 384
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->createAndShareDcTracker()V

    .line 235
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->setDcTracker(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 236
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getDefaultPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updatePsPhone(Lcom/android/internal/telephony/PhoneBase;)V

    .line 237
    return-void
.end method

.method public phoneObjectUpdater(I)V
    .locals 1
    .param p1, "newVoiceRadioTech"    # I

    .prologue
    .line 208
    const-string v0, "phoneObjectUpdater do not need phone update in SVLTE case."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 349
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimCsimPhone(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const-string v0, "SvltePhoneProxy registerForMmiComplete for usimcsim case"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 356
    :goto_0
    return-void

    .line 353
    :cond_0
    const-string v0, "SvltePhoneProxy registerForMmiComplete for activePhone case"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 325
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimCsimPhone(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const-string v0, "SvltePhoneProxy registerForMmiInitiate for usimcsim case"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 333
    :goto_0
    return-void

    .line 330
    :cond_0
    const-string v0, "SvltePhoneProxy registerForMmiInitiate for activePhone case"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected switchActivePhone(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "targetPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updateIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)V

    .line 286
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updateIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)V

    move-object v0, p1

    .line 287
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updateCsPhone(Lcom/android/internal/telephony/PhoneBase;)V

    move-object v0, p1

    .line 288
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updatePsPhone(Lcom/android/internal/telephony/PhoneBase;)V

    .line 290
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->switchActivePhone(Lcom/android/internal/telephony/Phone;)V

    .line 291
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updateRegistrantsInfo(Lcom/android/internal/telephony/Phone;)V

    .line 292
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 360
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimCsimPhone(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    const-string v0, "SvltePhoneProxy unregisterForMmiComplete for usimcsim case"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 367
    :goto_0
    return-void

    .line 364
    :cond_0
    const-string v0, "SvltePhoneProxy unregisterForMmiComplete for activePhone case"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 337
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimCsimPhone(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "SvltePhoneProxy unregisterForMmiInitiate for usimcsim case"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 345
    :goto_0
    return-void

    .line 342
    :cond_0
    const-string v0, "SvltePhoneProxy unregisterForMmiInitiate for activePhone case"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public updatePhoneObject(I)V
    .locals 1
    .param p1, "voiceRadioTech"    # I

    .prologue
    .line 203
    const-string v0, "updatePhoneObject do not need phone update in SVLTE case."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public updatePsPhoneAndCi(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p1, "psPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v3, 0x1

    .line 213
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->updatePsPhoneAndCi(Lcom/android/internal/telephony/PhoneBase;)V

    .line 214
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->updatePsCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 215
    const/4 v0, -0x1

    .line 216
    .local v0, "psType":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 217
    const/4 v0, 0x1

    .line 218
    const-string v1, "updatePsPhone: setBipPsType =1"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setBipPsType(I)V

    .line 225
    :cond_0
    :goto_0
    const-string v1, "updatePsPhoneAndCi: syncDataRegStateOrRatChanged."

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSvlteSstProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->syncDataRegStateOrRatChanged()V

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePsPhoneAndCi: psType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->setPsServiceType(I)V

    .line 229
    return-void

    .line 220
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 222
    const-string v1, "updatePsPhone: setBipPsType =0"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setBipPsType(I)V

    goto :goto_0
.end method
