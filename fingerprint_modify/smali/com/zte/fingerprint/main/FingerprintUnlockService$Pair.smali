.class Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;
.super Ljava/lang/Object;
.source "FingerprintUnlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/FingerprintUnlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pair"
.end annotation


# instance fields
.field actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

.field final synthetic this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

.field uid:I

.field unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;


# direct methods
.method public constructor <init>(Lcom/zte/fingerprint/main/FingerprintUnlockService;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "fingerActionCallback"    # Lcom/android/fingerprints/keyguard/IFingerActionCallback;
    .param p4, "fingerprintUnlockCallback"    # Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->this$0:Lcom/zte/fingerprint/main/FingerprintUnlockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput p2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->uid:I

    .line 603
    iput-object p3, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .line 604
    iput-object p4, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 605
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "equals":Z
    instance-of v1, p1, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    if-eqz v1, :cond_0

    .line 611
    check-cast p1, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;

    .end local p1    # "o":Ljava/lang/Object;
    iget v1, p1, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->uid:I

    iget v2, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->uid:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 613
    :cond_0
    :goto_0
    return v0

    .line 611
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    iget v1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 621
    const-string v1, ", IFingerActionCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 623
    const-string v1, ", IFingerprintUnlockCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    iget-object v1, p0, Lcom/zte/fingerprint/main/FingerprintUnlockService$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
