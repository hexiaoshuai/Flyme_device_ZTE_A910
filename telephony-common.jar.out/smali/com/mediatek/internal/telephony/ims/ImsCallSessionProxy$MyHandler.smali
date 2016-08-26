.class Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;
.super Landroid/os/Handler;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final PAU_END_FLAG_FIELD:Ljava/lang/String; = ">"

.field private static final PAU_NAME_FIELD:Ljava/lang/String; = "<name:"

.field private static final PAU_NUMBER_FIELD:Ljava/lang/String; = "<tel:"

.field private static final PAU_SIP_NUMBER_FIELD:Ljava/lang/String; = "<sip:"


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;

    .prologue
    .line 695
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;-><init>(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)V

    return-void
.end method

.method private getDisplayNameFromPau(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "pau"    # Ljava/lang/String;

    .prologue
    .line 707
    const-string v2, ""

    .line 708
    .local v2, "value":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 709
    const-string v4, "ImsCallSessionProxy"

    const-string v5, "getDisplayNameFromPau()... pau is null !"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 722
    .end local v2    # "value":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 712
    .end local v3    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 713
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 714
    .local v0, "aChar":C
    const/16 v4, 0x22

    if-ne v0, v4, :cond_1

    .line 712
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 717
    :cond_1
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_3

    .end local v0    # "aChar":C
    :cond_2
    move-object v3, v2

    .line 722
    .end local v2    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 720
    .end local v3    # "value":Ljava/lang/String;
    .restart local v0    # "aChar":C
    .restart local v2    # "value":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pau"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 784
    const-string v2, ""

    .line 785
    .local v2, "value":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 786
    :cond_0
    const-string v4, "ImsCallSessionProxy"

    const-string v5, "getFieldValueFromPau()... pau or field is null !"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 800
    .end local v2    # "value":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 790
    .end local v3    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 791
    const-string v4, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFieldValueFromPau()... There is no such field in pau ! field / pau :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 793
    .end local v2    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 796
    .end local v3    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 797
    .local v1, "startIndex":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    .line 798
    const-string v4, ">"

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 799
    .local v0, "endIndex":I
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 800
    .end local v2    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method private handlePau(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pau"    # Ljava/lang/String;

    .prologue
    .line 751
    const-string v1, "<sip:"

    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->parseField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 752
    const-string v1, "<tel:"

    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->parseField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 753
    const-string v1, "ImsCallSessionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updated pau: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->getDisplayNameFromPau(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 759
    const-string v1, "ImsCallSessionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add display name to pau: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_0
    return-object p1
.end method

.method private parseField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "pau"    # Ljava/lang/String;
    .param p2, "targetField"    # Ljava/lang/String;

    .prologue
    .line 766
    const-string v3, ""

    .line 767
    .local v3, "val":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 768
    :cond_0
    const-string v4, "ImsCallSessionProxy"

    const-string v5, "parseTelTagFromPau()... pau or field is null !"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    .line 779
    .end local p1    # "pau":Ljava/lang/String;
    .local v1, "pau":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 771
    .end local v1    # "pau":Ljava/lang/String;
    .restart local p1    # "pau":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, "field":Ljava/lang/String;
    const-string v4, "[;@]+"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 774
    .local v2, "split":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v3, v2, v4

    .line 776
    const-string v4, ""

    if-eq v3, v4, :cond_2

    .line 777
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object v1, p1

    .line 779
    .end local p1    # "pau":Ljava/lang/String;
    .restart local v1    # "pau":Ljava/lang/String;
    goto :goto_0
.end method

.method private retrieveMergeFail()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xd3

    .line 929
    const/4 v2, 0x0

    .line 930
    .local v2, "mergeCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    const/4 v3, 0x0

    .line 931
    .local v3, "mergedCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    const/4 v1, 0x0

    .line 933
    .local v1, "isNotifyMergeFail":Z
    const-string v5, "ImsCallSessionProxy"

    const-string v6, "retrieveMergeFail"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 935
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    move-result-object v2

    .line 938
    :cond_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 939
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    move-result-object v3

    .line 942
    :cond_1
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    .line 943
    const-string v5, "ImsCallSessionProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retrieveMergeFail- MergeCallInfo: callId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " call status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " MergedCallInfo: callId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " call status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v5, v2, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v5, v6, :cond_5

    iget-object v5, v3, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v5, v6, :cond_5

    .line 949
    const/4 v1, 0x1

    .line 997
    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 998
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1000
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    new-instance v7, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v7}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v5, v6, v7}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const-string v6, ""

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$902(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 1007
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    sget-object v6, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallStatus:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1302(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 1008
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const-string v6, ""

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1102(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 1009
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    sget-object v6, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallStatus:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1402(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 1011
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z
    invoke-static {v5, v9}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1502(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 1012
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z
    invoke-static {v5, v9}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 1014
    :cond_4
    return-void

    .line 950
    :cond_5
    iget-object v5, v2, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v5, v6, :cond_6

    iget-object v5, v3, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v5, v6, :cond_6

    .line 953
    const-string v5, "ImsCallSessionProxy"

    const-string v6, "retrieveMergeFail- two active call and hold merged call"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 955
    .local v4, "result":Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->hold(ILandroid/os/Message;)V

    goto :goto_0

    .line 956
    .end local v4    # "result":Landroid/os/Message;
    :cond_6
    iget-object v5, v2, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v5, v6, :cond_7

    iget-object v5, v3, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v5, v6, :cond_7

    .line 959
    const-string v5, "ImsCallSessionProxy"

    const-string v6, "retrieveMergeFail- two hold call and resume merge call"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 961
    .restart local v4    # "result":Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->resume(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 967
    .end local v4    # "result":Landroid/os/Message;
    :cond_7
    const-string v5, "ImsCallSessionProxy"

    const-string v6, "retrieveMergeFail- swap two calls"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 969
    .restart local v4    # "result":Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->swap(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 971
    .end local v4    # "result":Landroid/os/Message;
    :cond_8
    if-eqz v2, :cond_9

    if-nez v3, :cond_2

    .line 973
    :cond_9
    if-eqz v2, :cond_b

    .line 974
    const-string v5, "ImsCallSessionProxy"

    const-string v6, "retrieveMergeFail- only merge call is left"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v5, v2, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-eq v5, v6, :cond_a

    .line 976
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 977
    .restart local v4    # "result":Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->resume(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 979
    .end local v4    # "result":Landroid/os/Message;
    :cond_a
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 981
    :cond_b
    if-eqz v3, :cond_d

    .line 982
    const-string v5, "ImsCallSessionProxy"

    const-string v6, "retrieveMergeFail- only merged call is left"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v5, v3, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-eq v5, v6, :cond_c

    .line 984
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 985
    .restart local v4    # "result":Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->hold(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 987
    .end local v4    # "result":Landroid/os/Message;
    :cond_c
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 993
    :cond_d
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1002
    :catch_0
    move-exception v0

    .line 1003
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "ImsCallSessionProxy"

    const-string v6, "RemoteException callSessionMergeFailed()"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private sipCauseFromCode(I)I
    .locals 9
    .param p1, "causeCode"    # I

    .prologue
    const/16 v3, 0x1fe

    const/16 v2, 0x154

    const/16 v8, 0x10

    const/4 v7, 0x2

    .line 804
    const-string v4, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sipCauseFromCode: causeCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    sparse-switch p1, :sswitch_data_0

    .line 889
    const-string v2, "ImsCallSessionProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WFC]mRatType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mRatType:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mRatType:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v2

    if-ne v2, v7, :cond_0

    if-eq p1, v8, :cond_0

    .line 892
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 894
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getDisconnectCause(I)I

    move-result p1

    .line 895
    const-string v2, "ImsCallSessionProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WFC] ConnectivityManager causeCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    .end local v0    # "connManager":Landroid/net/ConnectivityManager;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mRatType:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v2

    if-ne v2, v7, :cond_1

    const/16 v2, 0x7d1

    if-ne p1, v2, :cond_1

    .line 899
    const/16 v2, 0x389

    .line 922
    :goto_0
    :sswitch_0
    return v2

    .line 808
    :sswitch_1
    const/16 v2, 0x152

    goto :goto_0

    .line 812
    :sswitch_2
    const/16 v2, 0x150

    goto :goto_0

    .line 820
    :sswitch_3
    const/16 v2, 0x15f

    goto :goto_0

    .line 823
    :sswitch_4
    const/16 v2, 0x8d

    goto :goto_0

    .line 827
    :sswitch_5
    const/16 v2, 0x66

    goto :goto_0

    .line 835
    :sswitch_6
    const/16 v2, 0x162

    goto :goto_0

    .line 838
    :sswitch_7
    const/16 v2, 0xca

    goto :goto_0

    .line 841
    :sswitch_8
    const/16 v2, 0x1f6

    goto :goto_0

    .line 844
    :sswitch_9
    const/16 v2, 0x169

    goto :goto_0

    :sswitch_a
    move v2, v3

    .line 847
    goto :goto_0

    .line 851
    :sswitch_b
    const/16 v2, 0x151

    goto :goto_0

    .line 858
    :sswitch_c
    const/16 v2, 0x160

    goto :goto_0

    .line 862
    :sswitch_d
    const/16 v2, 0x14c

    goto :goto_0

    .line 869
    :sswitch_e
    const/16 v2, 0x14d

    goto :goto_0

    .line 872
    :sswitch_f
    const/16 v2, 0x153

    goto :goto_0

    .line 875
    :sswitch_10
    const/16 v2, 0x14f

    goto :goto_0

    .line 879
    :sswitch_11
    const/16 v2, 0x156

    goto :goto_0

    .line 883
    :sswitch_12
    const/16 v2, 0x149

    goto :goto_0

    .line 900
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mRatType:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v2

    if-ne v2, v7, :cond_3

    const/16 v2, 0x7d3

    if-eq p1, v2, :cond_2

    const/16 v2, 0x7d5

    if-ne p1, v2, :cond_3

    .line 903
    :cond_2
    const/16 v2, 0x38b

    goto :goto_0

    .line 904
    :cond_3
    const/16 v2, 0x7d4

    if-ne p1, v2, :cond_4

    .line 905
    const/16 v2, 0x38c

    goto :goto_0

    .line 909
    :cond_4
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ims/ImsService;->getImsServiceState()I

    move-result v1

    .line 911
    .local v1, "serviceState":I
    const-string v2, "ImsCallSessionProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serviceState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 914
    const/16 v2, 0x6f

    goto :goto_0

    .line 915
    :cond_5
    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 916
    const/16 v2, 0x6a

    goto :goto_0

    .line 917
    :cond_6
    if-ne p1, v8, :cond_7

    move v2, v3

    .line 918
    goto/16 :goto_0

    .line 922
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 806
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x3 -> :sswitch_e
        0x6 -> :sswitch_0
        0x8 -> :sswitch_f
        0x11 -> :sswitch_1
        0x12 -> :sswitch_7
        0x13 -> :sswitch_8
        0x15 -> :sswitch_9
        0x1c -> :sswitch_b
        0x1d -> :sswitch_6
        0x1f -> :sswitch_a
        0x22 -> :sswitch_3
        0x26 -> :sswitch_c
        0x29 -> :sswitch_2
        0x2a -> :sswitch_c
        0x2b -> :sswitch_6
        0x2c -> :sswitch_2
        0x2f -> :sswitch_c
        0x31 -> :sswitch_0
        0x37 -> :sswitch_d
        0x39 -> :sswitch_d
        0x3a -> :sswitch_6
        0x3f -> :sswitch_c
        0x41 -> :sswitch_0
        0x44 -> :sswitch_4
        0x45 -> :sswitch_3
        0x51 -> :sswitch_11
        0x58 -> :sswitch_c
        0x66 -> :sswitch_10
        0x6f -> :sswitch_3
        0x7f -> :sswitch_6
        0xf0 -> :sswitch_5
        0xf1 -> :sswitch_5
        0x17c -> :sswitch_12
    .end sparse-switch
.end method

.method private updatePau(Ljava/lang/String;)V
    .locals 5
    .param p1, "pau"    # Ljava/lang/String;

    .prologue
    .line 726
    const-string v2, "ImsCallSessionProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pau: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string v2, "<sip:"

    invoke-direct {p0, p1, v2}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 728
    .local v1, "sipNumber":Ljava/lang/String;
    const-string v2, "ImsCallSessionProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSipNumberFromPAU()... sipNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->handlePau(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 732
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    const-string v3, "pau"

    invoke-virtual {v2, v3, p1}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 734
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    const-string v3, "remote_uri"

    invoke-virtual {v2, v3, v1}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 739
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    :cond_1
    :goto_0
    return-void

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ImsCallSessionProxy"

    const-string v3, "RemoteException callSessionUpdated"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1020
    const-string v3, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive message by ImsCallSessionProxy - CallId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1663
    :cond_0
    :goto_0
    return-void

    .line 1047
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1048
    .local v9, "ar":Landroid/os/AsyncResult;
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v11, v3

    check-cast v11, [Ljava/lang/String;

    .line 1049
    .local v11, "callInfo":[Ljava/lang/String;
    const/16 v21, 0x0

    .line 1050
    .local v21, "msgType":I
    const/16 v12, 0xff

    .line 1052
    .local v12, "callMode":I
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_CALL_INFO_INDICATION"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const/4 v3, 0x1

    aget-object v3, v11, v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1054
    const/4 v3, 0x1

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1057
    :cond_1
    const/4 v3, 0x5

    aget-object v3, v11, v3

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1058
    const/4 v3, 0x5

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1061
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    aget-object v3, v11, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1062
    packed-switch v21, :pswitch_data_0

    goto :goto_0

    .line 1064
    :pswitch_0
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "IMS: +ECPI : conference assign call id"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    new-instance v4, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v4}, Lcom/android/ims/ImsCallProfile;-><init>()V

    .line 1067
    .local v4, "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    const/4 v3, 0x6

    aget-object v3, v11, v3

    if-eqz v3, :cond_3

    const/4 v3, 0x6

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1068
    const-string v3, "oi"

    const/4 v5, 0x6

    aget-object v5, v11, v5

    invoke-virtual {v4, v3, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string v3, "remote_uri"

    const/4 v5, 0x6

    aget-object v5, v11, v5

    invoke-virtual {v4, v3, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const-string v3, "oir"

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1083
    :goto_1
    new-instance v2, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsService;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v11, v8

    invoke-direct/range {v2 .. v8}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lcom/mediatek/internal/telephony/ims/ImsService;Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;Ljava/lang/String;)V

    .line 1086
    .local v2, "pendingConf":Lcom/android/ims/internal/IImsCallSession;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v2, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1088
    :catch_0
    move-exception v15

    .line 1089
    .local v15, "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException when session merged started"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1079
    .end local v2    # "pendingConf":Lcom/android/ims/internal/IImsCallSession;
    .end local v15    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v3, "oir"

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1095
    .end local v4    # "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v5, v11, v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1096
    sparse-switch v21, :sswitch_data_1

    goto/16 :goto_0

    .line 1098
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x3

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mState:I
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1702(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;I)I

    .line 1099
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "IMS: +ECPI : incoming call"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const/4 v3, 0x5

    aget-object v3, v11, v3

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1101
    const/4 v3, 0x5

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1104
    :cond_5
    const/16 v3, 0x15

    if-ne v12, v3, :cond_6

    .line 1105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const/4 v5, 0x4

    iput v5, v3, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 1108
    :cond_6
    const/16 v3, 0x16

    if-eq v12, v3, :cond_7

    const/16 v3, 0x17

    if-eq v12, v3, :cond_7

    const/16 v3, 0x18

    if-eq v12, v3, :cond_7

    const/16 v3, 0x19

    if-ne v12, v3, :cond_a

    .line 1112
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "mpty"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1119
    :goto_2
    const/4 v3, 0x6

    aget-object v3, v11, v3

    if-eqz v3, :cond_8

    const/4 v3, 0x6

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "oi"

    const/4 v6, 0x6

    aget-object v6, v11, v6

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "remote_uri"

    const/4 v6, 0x6

    aget-object v6, v11, v6

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "oir"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1132
    const/16 v24, 0x1

    .line 1134
    .local v24, "serviceId":I
    const-string v3, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS: sendIncomingCallIntent() call_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dialString = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x6

    aget-object v6, v11, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    const/16 v3, 0x8

    aget-object v3, v11, v3

    if-eqz v3, :cond_9

    const/16 v3, 0x8

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1139
    const/16 v3, 0x8

    aget-object v3, v11, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->getDisplayNameFromPau(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1140
    .local v14, "displayName":Ljava/lang/String;
    const-string v3, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get display name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from PAU for MT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x8

    aget-object v6, v11, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 1143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "cna"

    invoke-virtual {v3, v5, v14}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "cnap"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1152
    .end local v14    # "displayName":Ljava/lang/String;
    :cond_9
    new-instance v19, Landroid/content/Intent;

    const-string v3, "com.android.ims.IMS_INCOMING_CALL"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1153
    .local v19, "intent":Landroid/content/Intent;
    const-string v3, "android:imsCallID"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1154
    const-string v3, "android:imsDialString"

    const/4 v5, 0x6

    aget-object v5, v11, v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    const-string v3, "android:imsServiceId"

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1115
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v24    # "serviceId":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "mpty"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1159
    :sswitch_2
    const/16 v20, 0x1

    .line 1161
    .local v20, "isIbt":I
    const/4 v3, 0x2

    aget-object v3, v11, v3

    if-eqz v3, :cond_b

    .line 1162
    const/4 v3, 0x2

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1165
    :cond_b
    if-nez v20, :cond_e

    .line 1166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    const/4 v5, 0x0

    iput v5, v3, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1173
    :goto_3
    const/16 v3, 0x8

    aget-object v3, v11, v3

    if-eqz v3, :cond_c

    const/16 v3, 0x8

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1174
    const/16 v3, 0x8

    aget-object v3, v11, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->updatePau(Ljava/lang/String;)V

    .line 1177
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1179
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1185
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1802(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1169
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    const/4 v5, 0x1

    iput v5, v3, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    goto :goto_3

    .line 1181
    :catch_1
    move-exception v15

    .line 1182
    .restart local v15    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionProgressing"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1188
    .end local v15    # "e":Landroid/os/RemoteException;
    .end local v20    # "isIbt":I
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x4

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mState:I
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1702(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;I)I

    .line 1189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    const/4 v5, 0x3

    iput v5, v3, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1192
    const/16 v3, 0x16

    if-eq v12, v3, :cond_f

    const/16 v3, 0x17

    if-eq v12, v3, :cond_f

    const/16 v3, 0x18

    if-eq v12, v3, :cond_f

    const/16 v3, 0x19

    if-ne v12, v3, :cond_13

    .line 1196
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "mpty"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1203
    :goto_5
    const/16 v3, 0x8

    aget-object v3, v11, v3

    if-eqz v3, :cond_10

    const/16 v3, 0x8

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1204
    const/16 v3, 0x8

    aget-object v3, v11, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->updatePau(Ljava/lang/String;)V

    .line 1207
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 1212
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 1217
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1223
    :cond_12
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1802(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1199
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "mpty"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_5

    .line 1219
    :catch_2
    move-exception v15

    .line 1220
    .restart local v15    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionStarted()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1226
    .end local v15    # "e":Landroid/os/RemoteException;
    :sswitch_4
    const/16 v3, 0x8

    aget-object v3, v11, v3

    if-eqz v3, :cond_14

    const/16 v3, 0x8

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1227
    const/16 v3, 0x8

    aget-object v3, v11, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->updatePau(Ljava/lang/String;)V

    .line 1230
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1232
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1234
    :catch_3
    move-exception v15

    .line 1235
    .restart local v15    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionHeld"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1240
    .end local v15    # "e":Landroid/os/RemoteException;
    :sswitch_5
    const/16 v3, 0x8

    aget-object v3, v11, v3

    if-eqz v3, :cond_15

    const/16 v3, 0x8

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1241
    const/16 v3, 0x8

    aget-object v3, v11, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->updatePau(Ljava/lang/String;)V

    .line 1244
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1246
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mState:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 1247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 1250
    :catch_4
    move-exception v15

    .line 1251
    .restart local v15    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException SessionResumed"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1256
    .end local v15    # "e":Landroid/os/RemoteException;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x1

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsOnTerminated:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1902(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 1257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/16 v5, 0x8

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mState:I
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1702(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;I)I

    .line 1258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1802(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 1260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    sget-object v5, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2002(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    .line 1264
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x69

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 1266
    .local v23, "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->getLastCallFailCause(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1262
    .end local v23    # "result":Landroid/os/Message;
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    sget-object v5, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->DISCONNECT:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2002(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    goto :goto_7

    .line 1271
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/16 v3, 0x82

    move/from16 v0, v21

    if-ne v0, v3, :cond_0

    .line 1272
    const-string v3, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS: receive 130 URC, call_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v11, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x3

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mState:I
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1702(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;I)I

    .line 1274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    aget-object v5, v11, v5

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$502(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1278
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "callInfo":[Ljava/lang/String;
    .end local v12    # "callMode":I
    .end local v21    # "msgType":I
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1280
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_RINGBACK_TONE"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1284
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1287
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v16, v3

    check-cast v16, [Ljava/lang/String;

    .line 1290
    .local v16, "econfResult":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    aget-object v5, v16, v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x3

    aget-object v3, v16, v3

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x7

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mState:I
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1702(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;I)I

    .line 1295
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1297
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_ECONF_RESULT_INDICATION"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    const/4 v3, 0x3

    aget-object v3, v16, v3

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1302
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "merge call successed"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 1307
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    invoke-interface {v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1312
    :cond_19
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1502(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 1313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1308
    :catch_5
    move-exception v15

    .line 1309
    .restart local v15    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionMerged()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1316
    .end local v15    # "e":Landroid/os/RemoteException;
    :cond_1a
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "merge call failed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_0

    .line 1325
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "econfResult":[Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1327
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive DIAL_RESULT or DIAL_CONFERENCE_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 1331
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "dial call failed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x69

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 1337
    .restart local v23    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    sget-object v5, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2002(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    .line 1338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->getLastCallFailCause(Landroid/os/Message;)V

    .line 1339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1802(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1344
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v23    # "result":Landroid/os/Message;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1346
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_HOLD_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1349
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1c

    .line 1351
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "hold call failed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    const/16 v17, 0x0

    .line 1355
    .local v17, "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :try_start_6
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1b

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->CC_CALL_HOLD_FAILED_CAUSED_BY_TERMINATED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v5, :cond_1b

    .line 1358
    new-instance v18, Lcom/android/ims/ImsReasonInfo;

    const/16 v3, 0x94

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .end local v17    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .local v18, "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    move-object/from16 v17, v18

    .line 1363
    .end local v18    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .restart local v17    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, v17

    invoke-interface {v3, v5, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 1365
    :catch_6
    move-exception v15

    .line 1366
    .restart local v15    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionHoldFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1361
    .end local v15    # "e":Landroid/os/RemoteException;
    :cond_1b
    :try_start_7
    new-instance v18, Lcom/android/ims/ImsReasonInfo;

    invoke-direct/range {v18 .. v18}, Lcom/android/ims/ImsReasonInfo;-><init>()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    .end local v17    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .restart local v18    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    move-object/from16 v17, v18

    .end local v18    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .restart local v17    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    goto :goto_9

    .line 1370
    .end local v17    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :cond_1c
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "hold call successed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1376
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1378
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_RESUME_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1381
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1d

    .line 1383
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "resume call failed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    new-instance v6, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v6}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_0

    .line 1388
    :catch_7
    move-exception v15

    .line 1389
    .restart local v15    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionResumeFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1393
    .end local v15    # "e":Landroid/os/RemoteException;
    :cond_1d
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "resume call successed"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1399
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1401
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_MERGE_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1404
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1e

    .line 1406
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "merge call failed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_0

    .line 1411
    :cond_1e
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "merge call successed"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    invoke-interface {v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_8

    .line 1419
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1502(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 1420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1416
    :catch_8
    move-exception v15

    .line 1417
    .restart local v15    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionMerged()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1425
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "e":Landroid/os/RemoteException;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1427
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_SWAP_BEFORE_MERGE_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1f

    .line 1431
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "swap call failed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_0

    .line 1436
    :cond_1f
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "swap call successed"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    move-result-object v22

    .line 1442
    .local v22, "myCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    move-result-object v10

    .line 1443
    .local v10, "beMergedCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    if-nez v10, :cond_20

    .line 1444
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_0

    .line 1448
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsConferenceCallInBackgroundNecessarry:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1449
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    if-eqz v3, :cond_21

    .line 1450
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "beMergedCall in foreground merge conference call"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0xce

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 1452
    .restart local v23    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->inviteParticipantsByCallId(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1457
    .end local v23    # "result":Landroid/os/Message;
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0xce

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 1458
    .restart local v23    # "result":Landroid/os/Message;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "myCall in foreground merge conference call"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    iget-object v5, v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->inviteParticipantsByCallId(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1464
    .end local v23    # "result":Landroid/os/Message;
    :cond_22
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    if-eqz v3, :cond_23

    .line 1465
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "myCallI in foreground merge normal call"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0xce

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 1467
    .restart local v23    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->inviteParticipantsByCallId(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1470
    .end local v23    # "result":Landroid/os/Message;
    :cond_23
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "beMergedCall in foreground merge normal call"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0xce

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 1472
    .restart local v23    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    iget-object v5, v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->inviteParticipantsByCallId(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1483
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "beMergedCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    .end local v22    # "myCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    .end local v23    # "result":Landroid/os/Message;
    :sswitch_e
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_RETRIEVE_MERGE_FAIL_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 1488
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    new-instance v6, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v6}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_9

    .line 1495
    :cond_24
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const-string v5, ""

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$902(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 1496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    sget-object v5, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallStatus:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1302(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 1497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const-string v5, ""

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1102(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 1498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    sget-object v5, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallStatus:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1402(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 1499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1502(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 1500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1490
    :catch_9
    move-exception v15

    .line 1491
    .restart local v15    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionMergeFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1503
    .end local v15    # "e":Landroid/os/RemoteException;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1505
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_ADD_CONFERENCE_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1509
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 1510
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_0

    .line 1518
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsOnTerminated:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1900(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    .line 1522
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_26

    .line 1523
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x1

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2202(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 1525
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # operator++ for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2308(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    .line 1527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v5

    if-ge v3, v5, :cond_27

    .line 1528
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0xce

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 1530
    .restart local v23    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v7

    aget-object v6, v6, v7

    move-object/from16 v0, v23

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1534
    .end local v23    # "result":Landroid/os/Message;
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 1535
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 1537
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    new-instance v6, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v6}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_a

    .line 1551
    :cond_28
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2202(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1539
    :catch_a
    move-exception v15

    .line 1540
    .restart local v15    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException InviteFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1544
    .end local v15    # "e":Landroid/os/RemoteException;
    :cond_29
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    invoke-interface {v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_c

    .line 1546
    :catch_b
    move-exception v15

    .line 1547
    .restart local v15    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException InviteDelivered()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1556
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "e":Landroid/os/RemoteException;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1558
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_REMOVE_CONFERENCE_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsOnTerminated:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1900(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    .line 1565
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2a

    .line 1566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x1

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2202(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 1569
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # operator++ for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2308(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    .line 1570
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v5

    if-ge v3, v5, :cond_2b

    .line 1571
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0xce

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 1573
    .restart local v23    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v7

    aget-object v6, v6, v7

    move-object/from16 v0, v23

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->removeParticipants(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1576
    .end local v23    # "result":Landroid/os/Message;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1577
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 1579
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    new-instance v6, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v6}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_c

    .line 1593
    :cond_2c
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2202(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1581
    :catch_c
    move-exception v15

    .line 1582
    .restart local v15    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException RemoveFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1586
    .end local v15    # "e":Landroid/os/RemoteException;
    :cond_2d
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    invoke-interface {v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_d

    goto :goto_d

    .line 1588
    :catch_d
    move-exception v15

    .line 1589
    .restart local v15    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException RemoveDelivered()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1597
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "e":Landroid/os/RemoteException;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1599
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const/16 v25, 0x0

    .line 1601
    .local v25, "sipCauseCode":I
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_GET_LAST_CALL_FAIL_CAUSE"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2e

    .line 1605
    new-instance v17, Lcom/android/ims/ImsReasonInfo;

    invoke-direct/range {v17 .. v17}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    .line 1623
    .restart local v17    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :goto_e
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$2;->$SwitchMap$com$mediatek$internal$telephony$ims$ImsCallSessionProxy$CallErrorState:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    .line 1625
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1627
    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, v17

    invoke-interface {v3, v5, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_e

    goto/16 :goto_0

    .line 1629
    :catch_e
    move-exception v15

    .line 1630
    .restart local v15    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionStartFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1607
    .end local v15    # "e":Landroid/os/RemoteException;
    .end local v17    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :cond_2e
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v5, 0x0

    aget v13, v3, v5

    .line 1608
    .local v13, "causeCode":I
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->sipCauseFromCode(I)I

    move-result v25

    .line 1610
    const/16 v3, 0x149

    move/from16 v0, v25

    if-ne v0, v3, :cond_2f

    .line 1611
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v5, 0x1

    aget v27, v3, v5

    .line 1613
    .local v27, "vendorCause":I
    :try_start_10
    invoke-static/range {v27 .. v27}, Landroid/telephony/PhoneNumberUtils;->setSpecificEccCategory(I)V
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_f

    .line 1620
    .end local v27    # "vendorCause":I
    :cond_2f
    :goto_f
    new-instance v17, Lcom/android/ims/ImsReasonInfo;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-direct {v0, v1, v3}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .restart local v17    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    goto :goto_e

    .line 1614
    .end local v17    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .restart local v27    # "vendorCause":I
    :catch_f
    move-exception v15

    .line 1615
    .local v15, "e":Ljava/lang/NumberFormatException;
    const-string v3, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ECC redirect report is not a number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1635
    .end local v13    # "causeCode":I
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    .end local v27    # "vendorCause":I
    .restart local v17    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1637
    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, v17

    invoke-interface {v3, v5, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_10

    goto/16 :goto_0

    .line 1639
    :catch_10
    move-exception v15

    .line 1640
    .local v15, "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionTerminated()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1649
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "e":Landroid/os/RemoteException;
    .end local v17    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .end local v25    # "sipCauseCode":I
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1650
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v26, v3

    check-cast v26, [I

    .line 1653
    .local v26, "sipMessage":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1654
    if-eqz v26, :cond_0

    const/4 v3, 0x0

    aget v3, v26, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 1655
    const-string v3, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive sip cause ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    aget v6, v26, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1023
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x67 -> :sswitch_7
        0x68 -> :sswitch_8
        0x69 -> :sswitch_11
        0xc9 -> :sswitch_9
        0xcb -> :sswitch_a
        0xcc -> :sswitch_b
        0xcd -> :sswitch_c
        0xce -> :sswitch_f
        0xcf -> :sswitch_10
        0xd0 -> :sswitch_12
        0xd1 -> :sswitch_9
        0xd2 -> :sswitch_d
        0xd3 -> :sswitch_e
    .end sparse-switch

    .line 1062
    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch

    .line 1096
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_2
        0x6 -> :sswitch_3
        0x83 -> :sswitch_4
        0x84 -> :sswitch_5
        0x85 -> :sswitch_6
    .end sparse-switch

    .line 1623
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
