.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_addEasAccount:I = 0x55

.field static final TRANSACTION_addVPN:I = 0x58

.field static final TRANSACTION_deleteEasAccount:I = 0x56

.field static final TRANSACTION_deleteVPN:I = 0x59

.field static final TRANSACTION_encryptSDcards:I = 0x5d

.field static final TRANSACTION_getActiveAdmins:I = 0x4a

.field static final TRANSACTION_getActiveSyncDeviceId:I = 0x57

.field static final TRANSACTION_getAllowBTStatus:I = 0x21

.field static final TRANSACTION_getAllowBrowserStatus:I = 0x29

.field static final TRANSACTION_getAllowCameraStatus:I = 0x25

.field static final TRANSACTION_getAllowGPSStatus:I = 0x31

.field static final TRANSACTION_getAllowGoogleLBSStatus:I = 0x35

.field static final TRANSACTION_getAllowInternetSharingStatus:I = 0x23

.field static final TRANSACTION_getAllowLTEStatus:I = 0x37

.field static final TRANSACTION_getAllowStorageCardStatus:I = 0x2b

.field static final TRANSACTION_getAllowTextMessagingStatus:I = 0x27

.field static final TRANSACTION_getAllowVzwLBSStatus:I = 0x33

.field static final TRANSACTION_getAllowWifiStatus:I = 0x1f

.field static final TRANSACTION_getCameraDisabled:I = 0x47

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x39

.field static final TRANSACTION_getEdmVersion:I = 0x5e

.field static final TRANSACTION_getGlobalProxyAdmin:I = 0x42

.field static final TRANSACTION_getHTCPasswordExpiration:I = 0x1b

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x3b

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x3e

.field static final TRANSACTION_getPasswordAllowSimple:I = 0x1d

.field static final TRANSACTION_getPasswordComplexity:I = 0x17

.field static final TRANSACTION_getPasswordExpiration:I = 0x15

.field static final TRANSACTION_getPasswordExpirationTimeout:I = 0x14

.field static final TRANSACTION_getPasswordHistory:I = 0x19

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x12

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordMinimumLetters:I = 0xa

.field static final TRANSACTION_getPasswordMinimumLowerCase:I = 0x8

.field static final TRANSACTION_getPasswordMinimumNonLetter:I = 0x10

.field static final TRANSACTION_getPasswordMinimumNumeric:I = 0xc

.field static final TRANSACTION_getPasswordMinimumSymbols:I = 0xe

.field static final TRANSACTION_getPasswordMinimumUpperCase:I = 0x6

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getRemoveWarning:I = 0x4c

.field static final TRANSACTION_getStorageEncryption:I = 0x44

.field static final TRANSACTION_getStorageEncryptionStatus:I = 0x45

.field static final TRANSACTION_getVPNByConfigId:I = 0x5a

.field static final TRANSACTION_hasGrantedPolicy:I = 0x4e

.field static final TRANSACTION_htcSetActivePasswordState:I = 0x51

.field static final TRANSACTION_installCertification:I = 0x5c

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x38

.field static final TRANSACTION_isAdminActive:I = 0x49

.field static final TRANSACTION_isDiskEncryptionEnable:I = 0x2f

.field static final TRANSACTION_isSDEncryptionEnable:I = 0x2d

.field static final TRANSACTION_lockNow:I = 0x3f

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x4b

.field static final TRANSACTION_removeActiveAdmin:I = 0x4d

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x52

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x53

.field static final TRANSACTION_resetPassword:I = 0x3c

.field static final TRANSACTION_responseAsyncResult:I = 0x54

.field static final TRANSACTION_setActiveAdmin:I = 0x48

.field static final TRANSACTION_setActivePasswordState:I = 0x4f

.field static final TRANSACTION_setActivePasswordState2:I = 0x50

.field static final TRANSACTION_setAllowBT:I = 0x20

.field static final TRANSACTION_setAllowBrowser:I = 0x28

.field static final TRANSACTION_setAllowCamera:I = 0x24

.field static final TRANSACTION_setAllowGPS:I = 0x30

.field static final TRANSACTION_setAllowGoogleLBS:I = 0x34

.field static final TRANSACTION_setAllowInternetSharing:I = 0x22

.field static final TRANSACTION_setAllowLTE:I = 0x36

.field static final TRANSACTION_setAllowStorageCard:I = 0x2a

.field static final TRANSACTION_setAllowTextMessaging:I = 0x26

.field static final TRANSACTION_setAllowVzwLBS:I = 0x32

.field static final TRANSACTION_setAllowWifi:I = 0x1e

.field static final TRANSACTION_setCameraDisabled:I = 0x46

.field static final TRANSACTION_setDiskEncryptionEnable:I = 0x2e

.field static final TRANSACTION_setGlobalProxy:I = 0x41

.field static final TRANSACTION_setHTCPasswordExpiration:I = 0x1a

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x3a

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x3d

.field static final TRANSACTION_setPasswordAllowSimple:I = 0x1c

.field static final TRANSACTION_setPasswordComplexity:I = 0x16

.field static final TRANSACTION_setPasswordExpirationTimeout:I = 0x13

.field static final TRANSACTION_setPasswordHistory:I = 0x18

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x11

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordMinimumLetters:I = 0x9

.field static final TRANSACTION_setPasswordMinimumLowerCase:I = 0x7

.field static final TRANSACTION_setPasswordMinimumNonLetter:I = 0xf

.field static final TRANSACTION_setPasswordMinimumNumeric:I = 0xb

.field static final TRANSACTION_setPasswordMinimumSymbols:I = 0xd

.field static final TRANSACTION_setPasswordMinimumUpperCase:I = 0x5

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setSDEncryptionEnable:I = 0x2c

.field static final TRANSACTION_setStorageEncryption:I = 0x43

.field static final TRANSACTION_wipeAllSDcards:I = 0x5b

.field static final TRANSACTION_wipeData:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_1
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .local v4, _arg0:Landroid/content/ComponentName;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_0
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_1

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_2
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v16

    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_1
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_2

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_3
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_2
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_3

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_4
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_3
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_4

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_5
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_4
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_5

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_6
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_5
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_6

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_7
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_6
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_7

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_8
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_7
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_8

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_9
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_8
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_9

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_9
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_a

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_b
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_a
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_b

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_c
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_b
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_c

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_d
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_c
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_d

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_d
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_e

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_f
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_e
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_f

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_10
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_f
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_10

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_11
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_10
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_11

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_12
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_11
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_12

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_13
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .local v14, _arg1:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v14           #_arg1:J
    :cond_12
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_13

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_14
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v16

    .local v16, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:J
    :cond_13
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_14

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_15
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v16

    .restart local v16       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:J
    :cond_14
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_15

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_16
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordComplexity(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_15
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_16

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_17
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordComplexity(Landroid/content/ComponentName;)I

    move-result v16

    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_16
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_17

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_18
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistory(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_17
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_18

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_19
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_18
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_19

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_1a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_19

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setHTCPasswordExpiration(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_19
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_1a

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_1b
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getHTCPasswordExpiration(Landroid/content/ComponentName;)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_1a
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_1b

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_1c
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v5, 0x1

    .local v5, _arg1:Z
    :goto_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordAllowSimple(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:Z
    :cond_1b
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_1c

    :cond_1c
    const/4 v5, 0x0

    goto :goto_1d

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_1d
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1d

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_1e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordAllowSimple(Landroid/content/ComponentName;)Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_1e

    const/4 v3, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :cond_1d
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_1e

    .restart local v16       #_result:Z
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1f

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :sswitch_1e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowWifi(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_1f
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_20

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_1f
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v16

    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_20
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_21

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_20
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_21

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowBT(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_21
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_22

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_21
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_22

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_23
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowBTStatus(Landroid/content/ComponentName;)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_22
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_23

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_22
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_23

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowInternetSharing(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_23
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_24

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_23
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_24

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowInternetSharingStatus(Landroid/content/ComponentName;)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_24
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_25

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_24
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowCamera(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_25
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_26

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_25
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_26

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_27
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowCameraStatus(Landroid/content/ComponentName;)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_26
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_27

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_26
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_27

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowTextMessaging(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_27
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_28

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_27
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_28

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_29
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowTextMessagingStatus(Landroid/content/ComponentName;)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_28
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_29

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_28
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowBrowser(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_29
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_2a

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_29
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2a

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_2b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowBrowserStatus(Landroid/content/ComponentName;)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_2a
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_2b

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_2a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowStorageCard(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_2b
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_2c

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_2b
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2c

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowStorageCardStatus(Landroid/content/ComponentName;)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_2c
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_2d

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_2c
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2d

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v5, 0x1

    .local v5, _arg1:Z
    :goto_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSDEncryptionEnable(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:Z
    :cond_2d
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_2e

    :cond_2e
    const/4 v5, 0x0

    goto :goto_2f

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_2d
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2f

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_30
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSDEncryptionEnable(Landroid/content/ComponentName;)Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_30

    const/4 v3, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :cond_2f
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_30

    .restart local v16       #_result:Z
    :cond_30
    const/4 v3, 0x0

    goto :goto_31

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :sswitch_2e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_31

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_32

    const/4 v5, 0x1

    .restart local v5       #_arg1:Z
    :goto_33
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDiskEncryptionEnable(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:Z
    :cond_31
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_32

    :cond_32
    const/4 v5, 0x0

    goto :goto_33

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_2f
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_33

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_34
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDiskEncryptionEnable(Landroid/content/ComponentName;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_34

    const/4 v3, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :cond_33
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_34

    .restart local v16       #_result:Z
    :cond_34
    const/4 v3, 0x0

    goto :goto_35

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :sswitch_30
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_35

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowGPS(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_35
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_36

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_31
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_36

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_37
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowGPSStatus(Landroid/content/ComponentName;)I

    move-result v16

    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_36
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_37

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_32
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_37

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowVzwLBS(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_37
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_38

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_33
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_38

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_39
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowVzwLBSStatus(Landroid/content/ComponentName;)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_38
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_39

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_34
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_39

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowGoogleLBS(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_39
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_3a

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_35
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3a

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_3b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowGoogleLBSStatus(Landroid/content/ComponentName;)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_3a
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_3b

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_36
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3b

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowLTE(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_3b
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_3c

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_37
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3c

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_3d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowLTEStatus(Landroid/content/ComponentName;)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_3c
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_3d

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_38
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient()Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_3d

    const/4 v3, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_3d
    const/4 v3, 0x0

    goto :goto_3e

    .end local v16           #_result:Z
    :sswitch_39
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts()I

    move-result v16

    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v16           #_result:I
    :sswitch_3a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3e

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_3e
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_3f

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_3b
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3f

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_40
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_3f
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_40

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_3c
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_40

    const/4 v3, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_40
    const/4 v3, 0x0

    goto :goto_41

    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_3d
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_41

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .local v4, _arg0:Landroid/content/ComponentName;
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .restart local v14       #_arg1:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v14           #_arg1:J
    :cond_41
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_42

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_3e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_42

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_43
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v16

    .local v16, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:J
    :cond_42
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_43

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_3f
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_40
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:I
    :sswitch_41
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_43

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .local v4, _arg0:Landroid/content/ComponentName;
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v16

    .local v16, _result:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_44

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_45
    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v16           #_result:Landroid/content/ComponentName;
    :cond_43
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_44

    .restart local v5       #_arg1:Ljava/lang/String;
    .restart local v6       #_arg2:Ljava/lang/String;
    .restart local v16       #_result:Landroid/content/ComponentName;
    :cond_44
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_45

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v16           #_result:Landroid/content/ComponentName;
    :sswitch_42
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v16

    .restart local v16       #_result:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_45

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_46
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_45
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_46

    .end local v16           #_result:Landroid/content/ComponentName;
    :sswitch_43
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_46

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_47

    const/4 v5, 0x1

    .local v5, _arg1:Z
    :goto_48
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    move-result v16

    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:Z
    .end local v16           #_result:I
    :cond_46
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_47

    :cond_47
    const/4 v5, 0x0

    goto :goto_48

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_44
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_48

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_49
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_49

    const/4 v3, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :cond_48
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_49

    .restart local v16       #_result:Z
    :cond_49
    const/4 v3, 0x0

    goto :goto_4a

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :sswitch_45
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus()I

    move-result v16

    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v16           #_result:I
    :sswitch_46
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4a

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4b

    const/4 v5, 0x1

    .restart local v5       #_arg1:Z
    :goto_4c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:Z
    :cond_4a
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_4b

    :cond_4b
    const/4 v5, 0x0

    goto :goto_4c

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_47
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4c

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_4d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_4d

    const/4 v3, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :cond_4c
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_4d

    .restart local v16       #_result:Z
    :cond_4d
    const/4 v3, 0x0

    goto :goto_4e

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :sswitch_48
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4e

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4f

    const/4 v5, 0x1

    .restart local v5       #_arg1:Z
    :goto_50
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:Z
    :cond_4e
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_4f

    :cond_4f
    const/4 v5, 0x0

    goto :goto_50

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_49
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_50

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_51
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_51

    const/4 v3, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :cond_50
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_51

    .restart local v16       #_result:Z
    :cond_51
    const/4 v3, 0x0

    goto :goto_52

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :sswitch_4a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins()Ljava/util/List;

    move-result-object v18

    .local v18, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v18           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_4b
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_52

    const/4 v3, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_52
    const/4 v3, 0x0

    goto :goto_53

    .end local v4           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_4c
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_53

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .local v4, _arg0:Landroid/content/ComponentName;
    :goto_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_54

    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    .local v5, _arg1:Landroid/os/RemoteCallback;
    :goto_55
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:Landroid/os/RemoteCallback;
    :cond_53
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_54

    :cond_54
    const/4 v5, 0x0

    .restart local v5       #_arg1:Landroid/os/RemoteCallback;
    goto :goto_55

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:Landroid/os/RemoteCallback;
    :sswitch_4d
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_55

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_56
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :cond_55
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_56

    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_4e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_56

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_57

    const/4 v3, 0x1

    :goto_58
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    .end local v16           #_result:Z
    :cond_56
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_57

    .restart local v5       #_arg1:I
    .restart local v16       #_result:Z
    :cond_57
    const/4 v3, 0x0

    goto :goto_58

    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_4f
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, _arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, _arg7:I
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(IIIIIIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    .end local v8           #_arg4:I
    .end local v9           #_arg5:I
    .end local v10           #_arg6:I
    .end local v11           #_arg7:I
    :sswitch_50
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10       #_arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11       #_arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, _arg8:I
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState2(IIIIIIIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    .end local v8           #_arg4:I
    .end local v9           #_arg5:I
    .end local v10           #_arg6:I
    .end local v11           #_arg7:I
    .end local v12           #_arg8:I
    :sswitch_51
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10       #_arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11       #_arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .restart local v12       #_arg8:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_58

    const/4 v13, 0x1

    .local v13, _arg9:Z
    :goto_59
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v13}, Landroid/app/admin/IDevicePolicyManager$Stub;->htcSetActivePasswordState(IIIIIIIIIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v13           #_arg9:Z
    :cond_58
    const/4 v13, 0x0

    goto :goto_59

    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    .end local v8           #_arg4:I
    .end local v9           #_arg5:I
    .end local v10           #_arg6:I
    .end local v11           #_arg7:I
    .end local v12           #_arg8:I
    :sswitch_52
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_53
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_54
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_59

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .local v6, _arg2:Landroid/content/Intent;
    :goto_5a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->responseAsyncResult(IILandroid/content/Intent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v6           #_arg2:Landroid/content/Intent;
    :cond_59
    const/4 v6, 0x0

    .restart local v6       #_arg2:Landroid/content/Intent;
    goto :goto_5a

    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:Landroid/content/Intent;
    :sswitch_55
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5a

    sget-object v3, Lcom/htc/app/admin/EasAccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/app/admin/EasAccountInfo;

    .local v4, _arg0:Lcom/htc/app/admin/EasAccountInfo;
    :goto_5b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->addEasAccount(Lcom/htc/app/admin/EasAccountInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Lcom/htc/app/admin/EasAccountInfo;
    :cond_5a
    const/4 v4, 0x0

    .restart local v4       #_arg0:Lcom/htc/app/admin/EasAccountInfo;
    goto :goto_5b

    .end local v4           #_arg0:Lcom/htc/app/admin/EasAccountInfo;
    :sswitch_56
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->deleteEasAccount(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_57
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveSyncDeviceId()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_58
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5b

    sget-object v3, Lcom/htc/app/admin/VpnConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/app/admin/VpnConfigInfo;

    .local v4, _arg0:Lcom/htc/app/admin/VpnConfigInfo;
    :goto_5c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->addVPN(Lcom/htc/app/admin/VpnConfigInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Lcom/htc/app/admin/VpnConfigInfo;
    :cond_5b
    const/4 v4, 0x0

    .restart local v4       #_arg0:Lcom/htc/app/admin/VpnConfigInfo;
    goto :goto_5c

    .end local v4           #_arg0:Lcom/htc/app/admin/VpnConfigInfo;
    :sswitch_59
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5c

    sget-object v3, Lcom/htc/app/admin/VpnConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/app/admin/VpnConfigInfo;

    .restart local v4       #_arg0:Lcom/htc/app/admin/VpnConfigInfo;
    :goto_5d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->deleteVPN(Lcom/htc/app/admin/VpnConfigInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Lcom/htc/app/admin/VpnConfigInfo;
    :cond_5c
    const/4 v4, 0x0

    .restart local v4       #_arg0:Lcom/htc/app/admin/VpnConfigInfo;
    goto :goto_5d

    .end local v4           #_arg0:Lcom/htc/app/admin/VpnConfigInfo;
    :sswitch_5a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getVPNByConfigId(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_5b
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeAllSDcards()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_5c
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5d

    sget-object v3, Lcom/htc/app/admin/CertInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/app/admin/CertInfo;

    .local v4, _arg0:Lcom/htc/app/admin/CertInfo;
    :goto_5e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCertification(Lcom/htc/app/admin/CertInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Lcom/htc/app/admin/CertInfo;
    :cond_5d
    const/4 v4, 0x0

    .restart local v4       #_arg0:Lcom/htc/app/admin/CertInfo;
    goto :goto_5e

    .end local v4           #_arg0:Lcom/htc/app/admin/CertInfo;
    :sswitch_5d
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->encryptSDcards()I

    move-result v16

    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v16           #_result:I
    :sswitch_5e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEdmVersion()Ljava/lang/String;

    move-result-object v16

    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto/16 :goto_0

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
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
