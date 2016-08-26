.class public abstract Lcom/mediatek/bluetooth/IBluetoothProfileManager$Stub;
.super Landroid/os/Binder;
.source "IBluetoothProfileManager.java"

# interfaces
.implements Lcom/mediatek/bluetooth/IBluetoothProfileManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/IBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/IBluetoothProfileManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.bluetooth.IBluetoothProfileManager"

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_getConnectedDevices:I = 0x3

.field static final TRANSACTION_getPreferred:I = 0x7

.field static final TRANSACTION_getState:I = 0x4

.field static final TRANSACTION_isPreferred:I = 0x5

.field static final TRANSACTION_setPreferred:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.mediatek.bluetooth.IBluetoothProfileManager"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/bluetooth/IBluetoothProfileManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBluetoothProfileManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.mediatek.bluetooth.IBluetoothProfileManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/bluetooth/IBluetoothProfileManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/mediatek/bluetooth/IBluetoothProfileManager;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/mediatek/bluetooth/IBluetoothProfileManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/IBluetoothProfileManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 45
    :sswitch_0
    const-string v4, "com.mediatek.bluetooth.IBluetoothProfileManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v6, "com.mediatek.bluetooth.IBluetoothProfileManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 55
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 60
    .local v1, "_arg1":Landroid/bluetooth/BluetoothDevice;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/IBluetoothProfileManager$Stub;->connect(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 61
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    .line 67
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    const-string v6, "com.mediatek.bluetooth.IBluetoothProfileManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 72
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 77
    .restart local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/IBluetoothProfileManager$Stub;->disconnect(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 78
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 84
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    const-string v4, "com.mediatek.bluetooth.IBluetoothProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothProfileManager$Stub;->getConnectedDevices(Ljava/lang/String;)[Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 88
    .local v3, "_result":[Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v3, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 94
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[Landroid/bluetooth/BluetoothDevice;
    :sswitch_4
    const-string v4, "com.mediatek.bluetooth.IBluetoothProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 99
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 104
    .restart local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/IBluetoothProfileManager$Stub;->getState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 105
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 102
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":I
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_3

    .line 111
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :sswitch_5
    const-string v6, "com.mediatek.bluetooth.IBluetoothProfileManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    .line 116
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 121
    .restart local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/IBluetoothProfileManager$Stub;->isPreferred(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 122
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v3, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 119
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .line 128
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string v6, "com.mediatek.bluetooth.IBluetoothProfileManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    .line 133
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 139
    .restart local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    move v2, v5

    .line 140
    .local v2, "_arg2":Z
    :goto_6
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetooth/IBluetoothProfileManager$Stub;->setPreferred(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v3

    .line 141
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v3, :cond_7

    move v4, v5

    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 136
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_5

    :cond_9
    move v2, v4

    .line 139
    goto :goto_6

    .line 147
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :sswitch_7
    const-string v4, "com.mediatek.bluetooth.IBluetoothProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 152
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 157
    .restart local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :goto_7
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/IBluetoothProfileManager$Stub;->getPreferred(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 158
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 155
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":I
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_7

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
