.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.super Landroid/os/Handler;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbHandler"
.end annotation


# instance fields
.field private bSmartUsb2:Z

.field private configured:I

.field private connected:I

.field private intentDelay:I

.field private last_configured:I

.field private last_connected:I

.field private mAtsMode:Ljava/lang/String;

.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigured:Z

.field private mConnected:Z

.field private mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mCurrentFunctions:Ljava/lang/String;

.field private mCurrentKernelFunctions:Ljava/lang/String;

.field private mDefaultFunctions:Ljava/lang/String;

.field private mDefaultKernelFunctions:Ljava/lang/String;

.field private mSecureKey:Ljava/lang/String;

.field private mUsbNotificationId:I

.field private mbModifyMpDec:Z

.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/os/Looper;)V
    .locals 18
    .parameter
    .parameter "looper"

    .prologue
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->intentDelay:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->connected:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->configured:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->bSmartUsb2:Z

    const-string v14, "0"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAtsMode:Ljava/lang/String;

    new-instance v14, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    const/16 v14, 0x46

    :try_start_0
    new-array v4, v14, [C

    .local v4, buffer4ats:[C
    new-instance v11, Ljava/io/FileReader;

    const-string v14, "/sys/devices/platform/android_usb/ats"

    invoke-direct {v11, v14}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .local v11, reader4ats:Ljava/io/FileReader;
    const/4 v14, 0x0

    const/16 v15, 0x46

    invoke-virtual {v11, v4, v14, v15}, Ljava/io/FileReader;->read([CII)I

    move-result v9

    .local v9, len4ats:I
    new-instance v14, Ljava/lang/String;

    const/4 v15, 0x0

    add-int/lit8 v16, v9, -0x1

    move/from16 v0, v16

    invoke-direct {v14, v4, v15, v0}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAtsMode:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[USBNET] UsbHandler: mAtsMode= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAtsMode:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #buffer4ats:[C
    .end local v9           #len4ats:I
    .end local v11           #reader4ats:Ljava/io/FileReader;
    :goto_0
    const/16 v14, 0x46

    :try_start_1
    new-array v3, v14, [C

    .local v3, buffer:[C
    new-instance v10, Ljava/io/FileReader;

    const-string v14, "/sys/class/android_usb/android0/functions"

    invoke-direct {v10, v14}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .local v10, reader:Ljava/io/FileReader;
    const/4 v14, 0x0

    const/16 v15, 0x46

    invoke-virtual {v10, v3, v14, v15}, Ljava/io/FileReader;->read([CII)I

    move-result v8

    .local v8, len:I
    new-instance v14, Ljava/lang/String;

    const/4 v15, 0x0

    add-int/lit8 v16, v8, -0x1

    move/from16 v0, v16

    invoke-direct {v14, v3, v15, v0}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultKernelFunctions:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[USBNET] UsbHandler: mDefaultKernelFunctions= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultKernelFunctions:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, bSkipCheckDefault:Z
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mbModifyMpDec:Z

    const-string v14, "ro.build.sense.version"

    const-string v15, "0"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    const/high16 v15, 0x4080

    cmpl-float v14, v14, v15

    if-lez v14, :cond_5

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p1

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mbSmartUsb:Z
    invoke-static {v0, v14}, Lcom/android/server/usb/UsbDeviceManager;->access$1002(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    const-string v14, "persist.sys.usb.config"

    const-string v15, "adb"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    const-string v15, "adb"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultKernelFunctions:Ljava/lang/String;

    const-string v15, "mtp"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v14, v15}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    const-string v14, "mtp,mass_storage,adb"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    :goto_2
    const/4 v2, 0x1

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v14

    const-string v15, "[USBNET] UsbHandler: Skip Check Default"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    move-object/from16 v0, p1

    #calls: Lcom/android/server/usb/UsbDeviceManager;->processOemUsbOverride(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v14}, Lcom/android/server/usb/UsbDeviceManager;->access$1200(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    const-string v14, "sys.usb.config"

    const-string v15, "none"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, config:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[USBNET] UsbHandler: mDefaultFunctions="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; mCurrentFunctions="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "resetting config to persistent property: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "sys.usb.config"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    new-instance v14, Ljava/io/File;

    const-string v15, "/sys/class/android_usb/android0/state"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .local v12, state:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v15, "adb"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v14, v15}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v0, v14}, Lcom/android/server/usb/UsbDeviceManager;->access$402(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    const-string v14, "persist.service.adb.enable"

    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, value:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_4

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .local v7, enable:C
    const/16 v14, 0x31

    if-ne v7, v14, :cond_9

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(Z)V

    :cond_3
    :goto_4
    const-string v14, "persist.service.adb.enable"

    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local v7           #enable:C
    :cond_4
    const-string v14, "ro.sf"

    const-string v15, "1"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecureKey:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[USBNET] mSecureKey= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecureKey:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    const-string v15, "adb"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v14, v15}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mPreAdbEnabled:Z
    invoke-static {v0, v14}, Lcom/android/server/usb/UsbDeviceManager;->access$1302(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "adb_enabled"

    invoke-static {v15}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    const/16 v16, 0x0

    new-instance v17, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    invoke-virtual/range {v14 .. v17}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v14

    const-string v15, "DEVPATH=/devices/virtual/android_usb/android0"

    invoke-virtual {v14, v15}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v14

    const-string v15, "DEVPATH=/devices/virtual/misc/usb_accessory"

    invoke-virtual {v14, v15}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v14

    const-string v15, "DEVPATH=/devices/virtual/switch/usb_connect2pc"

    invoke-virtual {v14, v15}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v14

    const-string v15, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {v14, v15}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v14

    const-string v15, "DEVPATH=/devices/platform/msm_otg"

    invoke-virtual {v14, v15}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "android.intent.action.BOOT_COMPLETED"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2           #bSkipCheckDefault:Z
    .end local v3           #buffer:[C
    .end local v5           #config:Ljava/lang/String;
    .end local v8           #len:I
    .end local v10           #reader:Ljava/io/FileReader;
    .end local v12           #state:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/String;
    :goto_5
    return-void

    :catch_0
    move-exception v6

    .local v6, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Error FileReader reader4ats"

    invoke-static {v14, v15, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/Exception;
    .restart local v2       #bSkipCheckDefault:Z
    .restart local v3       #buffer:[C
    .restart local v8       #len:I
    .restart local v10       #reader:Ljava/io/FileReader;
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_6
    :try_start_2
    const-string v14, "mass_storage,adb"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .end local v2           #bSkipCheckDefault:Z
    .end local v3           #buffer:[C
    .end local v8           #len:I
    .end local v10           #reader:Ljava/io/FileReader;
    :catch_1
    move-exception v6

    .restart local v6       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Error initializing UsbHandler"

    invoke-static {v14, v15, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .end local v6           #e:Ljava/lang/Exception;
    .restart local v2       #bSkipCheckDefault:Z
    .restart local v3       #buffer:[C
    .restart local v8       #len:I
    .restart local v10       #reader:Ljava/io/FileReader;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    const-string v15, "adboff"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultKernelFunctions:Ljava/lang/String;

    const-string v15, "mtp"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v14, v15}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "mtp,mass_storage"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    :goto_6
    const/4 v2, 0x1

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v14

    const-string v15, "[USBNET] UsbHandler: Skip Check Default"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_8
    const-string v14, "mass_storage"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    goto :goto_6

    .restart local v5       #config:Ljava/lang/String;
    .restart local v7       #enable:C
    .restart local v12       #state:Ljava/lang/String;
    .restart local v13       #value:Ljava/lang/String;
    :cond_9
    const/16 v14, 0x30

    if-ne v7, v14, :cond_3

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4
.end method

.method static synthetic access$3100(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(II)V

    return-void
.end method

.method private isHtcMode()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    new-instance v3, Ljava/lang/String;

    const-string v7, "0"

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v3, mHtcMode:Ljava/lang/String;
    const/4 v7, 0x5

    :try_start_0
    new-array v0, v7, [C

    .local v0, buffer4HtcMode:[C
    new-instance v5, Ljava/io/FileReader;

    const-string v7, "/sys/devices/platform/android_usb/usb_denied"

    invoke-direct {v5, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .local v5, reader4HtcMode:Ljava/io/FileReader;
    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v5, v0, v7, v8}, Ljava/io/FileReader;->read([CII)I

    move-result v2

    .local v2, len:I
    if-lez v2, :cond_0

    new-instance v4, Ljava/lang/String;

    const/4 v7, 0x0

    add-int/lit8 v8, v2, -0x1

    invoke-direct {v4, v0, v7, v8}, Ljava/lang/String;-><init>([CII)V

    .end local v3           #mHtcMode:Ljava/lang/String;
    .local v4, mHtcMode:Ljava/lang/String;
    move-object v3, v4

    .end local v4           #mHtcMode:Ljava/lang/String;
    .restart local v3       #mHtcMode:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[USBNET] mHtcMode= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0           #buffer4HtcMode:[C
    .end local v2           #len:I
    .end local v5           #reader4HtcMode:Ljava/io/FileReader;
    :goto_0
    const-string v7, "1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    :cond_1
    return v6

    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Error FileReader reader"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Error Exception"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setAdbEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(ZZ)V

    return-void
.end method

.method private setAdbEnabled(ZZ)V
    .locals 3
    .parameter "enable"
    .parameter "makeDefault"

    .prologue
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdbEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->access$402(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    :cond_0
    return-void
.end method

.method private setEnabledFunctions(Ljava/lang/String;Z)V
    .locals 13
    .parameter "functions"
    .parameter "makeDefault"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setEnabledFunctions("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, bRndisEnabled:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v10

    const-string v11, "send Fake intent while setEnabledFunctions"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_5

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "mass_storage,adb"

    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbState(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/16 v10, 0x46

    :try_start_0
    new-array v1, v10, [C

    .local v1, buffer:[C
    new-instance v6, Ljava/io/FileReader;

    const-string v10, "/sys/class/android_usb/android0/functions"

    invoke-direct {v6, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .local v6, reader:Ljava/io/FileReader;
    const/4 v10, 0x0

    const/16 v11, 0x46

    invoke-virtual {v6, v1, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    .local v5, len:I
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    add-int/lit8 v12, v5, -0x1

    invoke-direct {v10, v1, v11, v12}, Ljava/lang/String;-><init>([CII)V

    iput-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentKernelFunctions:Ljava/lang/String;

    if-nez p1, :cond_7

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentKernelFunctions:Ljava/lang/String;

    const-string v12, "diag"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v11, v12}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mDiagEnabled:Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1702(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentKernelFunctions:Ljava/lang/String;

    const-string v12, "diag_mdm"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v11, v12}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mDiagMdmEnabled:Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1802(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1           #buffer:[C
    .end local v5           #len:I
    .end local v6           #reader:Ljava/io/FileReader;
    :cond_1
    :goto_1
    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #calls: Lcom/android/server/usb/UsbDeviceManager;->needsOemUsbOverride()Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1900(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-nez v10, :cond_11

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "adb"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$2000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v8, "mtp,mass_storage,adb"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string p1, "adb"

    :cond_2
    :goto_2
    const-string v8, "none"

    invoke-direct {p0, v8}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Failed to disable USB"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string v10, "mass_storage"

    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbState(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v11, "mtp"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "rndis"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "mass_storage,adb"

    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v10, "mass_storage"

    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbState(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v1       #buffer:[C
    .restart local v5       #len:I
    .restart local v6       #reader:Ljava/io/FileReader;
    :cond_7
    :try_start_1
    const-string v10, "diag"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v11, 0x1

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mDiagEnabled:Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1702(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    const-string v10, "diag_mdm"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v11, 0x1

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mDiagMdmEnabled:Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1802(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .end local v1           #buffer:[C
    .end local v5           #len:I
    .end local v6           #reader:Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Error FileReader reader2"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #buffer:[C
    .restart local v5       #len:I
    .restart local v6       #reader:Ljava/io/FileReader;
    :cond_8
    :try_start_2
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentKernelFunctions:Ljava/lang/String;

    const-string v12, "diag"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v11, v12}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mDiagEnabled:Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1702(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentKernelFunctions:Ljava/lang/String;

    const-string v12, "diag_mdm"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v11, v12}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mDiagMdmEnabled:Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1802(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .end local v1           #buffer:[C
    .end local v5           #len:I
    .end local v6           #reader:Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Error Exception"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :cond_9
    const-string v8, "mass_storage,adb"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string p1, "adb"

    goto/16 :goto_2

    :cond_a
    const-string v8, "adb"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string p1, "mtp,mass_storage,adb"

    :cond_b
    const-string v8, "adb"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_c
    move-object v3, p1

    .local v3, functions2:Ljava/lang/String;
    const-string v8, "mass_storage"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "mtp,mass_storage"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_d
    const-string v3, "adboff"

    :cond_e
    const-string v8, "persist.sys.usb.config"

    invoke-static {v8, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set persist.sys.usb.config to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->waitForState(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    const/16 v8, 0x46

    :try_start_3
    new-array v1, v8, [C

    .restart local v1       #buffer:[C
    new-instance v6, Ljava/io/FileReader;

    const-string v8, "/sys/class/android_usb/android0/functions"

    invoke-direct {v6, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .restart local v6       #reader:Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x46

    invoke-virtual {v6, v1, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    .restart local v5       #len:I
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    add-int/lit8 v10, v5, -0x1

    invoke-direct {v8, v1, v9, v10}, Ljava/lang/String;-><init>([CII)V

    iput-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    const-string v9, "adb"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/server/usb/UsbDeviceManager;->access$2000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .end local v1           #buffer:[C
    .end local v5           #len:I
    .end local v6           #reader:Ljava/io/FileReader;
    :goto_4
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[USBNET] Update mDefaultFunctions = mCurrentFunctions = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .restart local v1       #buffer:[C
    .restart local v5       #len:I
    .restart local v6       #reader:Ljava/io/FileReader;
    :cond_f
    :try_start_4
    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    const-string v9, "adb"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .end local v1           #buffer:[C
    .end local v5           #len:I
    .end local v6           #reader:Ljava/io/FileReader;
    :catch_2
    move-exception v2

    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Error FileReader reader2"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Error Exception"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .end local v2           #e:Ljava/lang/Exception;
    :cond_10
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to switch persistent USB config to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "persist.sys.usb.config"

    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v3           #functions2:Ljava/lang/String;
    :cond_11
    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v11, "rndis"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v11, "ipton"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    :cond_12
    move v0, v9

    :goto_5
    if-eqz v0, :cond_13

    const-wide/16 v10, 0xbb8

    :try_start_5
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_13
    :goto_6
    const-string v8, "adb"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const-string p1, "mtp,mass_storage,adb"

    :cond_14
    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #calls: Lcom/android/server/usb/UsbDeviceManager;->processOemUsbOverride(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, p1}, Lcom/android/server/usb/UsbDeviceManager;->access$1200(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v8, "rndis"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    const-string v8, "mtp"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$2000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_15
    const-string v8, "ipton"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    const-string v8, "mtp"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$2000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_16
    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v8

    if-eqz v8, :cond_1a

    const-string v8, "adb"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$2000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_7
    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mDiagEnabled:Z
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v8

    if-eqz v8, :cond_1b

    const-string v8, "diag"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$2000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_8
    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mDiagMdmEnabled:Z
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1800(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v8

    if-eqz v8, :cond_1c

    const-string v8, "diag_mdm"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$2000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_9
    const-string v8, "ipton"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    :cond_17
    const-string v8, "rndis"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    const/4 v4, 0x0

    .local v4, iHostType:I
    :try_start_6
    new-instance v8, Ljava/io/File;

    const-string v10, "/sys/devices/platform/android_usb/os_type"

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[USBNET] iHostType ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_a
    if-ne v4, v9, :cond_1d

    const-string p1, "cdc_ethernet"

    .end local v4           #iHostType:I
    :cond_18
    :goto_b
    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    if-nez v0, :cond_1f

    const-string v8, "none"

    invoke-direct {p0, v8}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1f

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Failed to disable USB"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    goto/16 :goto_3

    :cond_19
    move v0, v8

    goto/16 :goto_5

    :catch_4
    move-exception v7

    .local v7, sEx:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v10, "InterruptedException"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .end local v7           #sEx:Ljava/lang/InterruptedException;
    :cond_1a
    const-string v8, "adb"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_7

    :cond_1b
    const-string v8, "diag"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    :cond_1c
    const-string v8, "diag_mdm"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_9

    .restart local v4       #iHostType:I
    :catch_5
    move-exception v7

    .local v7, sEx:Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .end local v7           #sEx:Ljava/io/IOException;
    :cond_1d
    const-string v8, "net.usb0.isharing.host"

    const-string v9, "win"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ncm"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    const-string p1, "cdc_network"

    goto :goto_b

    :cond_1e
    const-string v8, "net.usb0.isharing.host"

    const-string v9, "win"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mac"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    const-string p1, "cdc_ethernet"

    goto/16 :goto_b

    .end local v4           #iHostType:I
    :cond_1f
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "send Fake intent while setUsbConfig"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "rndis"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_20

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v8

    if-eqz v8, :cond_21

    const-string v8, "rndis,mass_storage,adb"

    invoke-direct {p0, v8}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbState(Ljava/lang/String;)V

    :cond_20
    :goto_c
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    goto/16 :goto_3

    :cond_21
    const-string v8, "rndis,mass_storage"

    invoke-direct {p0, v8}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbState(Ljava/lang/String;)V

    goto :goto_c

    :cond_22
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to switch USB config to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    goto/16 :goto_3
.end method

.method private setUsbConfig(Ljava/lang/String;)Z
    .locals 3
    .parameter "config"

    .prologue
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUsbConfig("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sys.usb.config"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->waitForState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final update2(II)V
    .locals 3
    .parameter "iMsgType"
    .parameter "delayed"

    .prologue
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USBNET] update2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$500(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$500(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v0

    if-lez p2, :cond_1

    .end local p2
    :goto_0
    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void

    .restart local p2
    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private updateAdbNotification()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const v11, 0x1040449

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$2800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x1040449

    .local v0, id:I
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v7, :cond_2

    const-string v7, "0"

    const-string v8, "persist.adb.notify"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbNotificationShown:Z
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$3000(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .local v5, r:Landroid/content/res/Resources;
    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, title:Ljava/lang/CharSequence;
    const v7, 0x104044a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, message:Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .local v3, notification:Landroid/app/Notification;
    const v7, 0x108050e

    iput v7, v3, Landroid/app/Notification;->icon:I

    const-wide/16 v7, 0x0

    iput-wide v7, v3, Landroid/app/Notification;->when:J

    const/4 v7, 0x2

    iput v7, v3, Landroid/app/Notification;->flags:I

    iput-object v6, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput v10, v3, Landroid/app/Notification;->defaults:I

    iput-object v9, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v9, v3, Landroid/app/Notification;->vibrate:[J

    const/4 v7, -0x1

    iput v7, v3, Landroid/app/Notification;->priority:I

    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.android.settings"

    const-string v9, "com.android.settings.DevelopmentSettings"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .local v1, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v10, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3, v7, v6, v2, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v8, 0x1

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbNotificationShown:Z
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$3002(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$2800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v7

    invoke-virtual {v7, v11, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #message:Ljava/lang/CharSequence;
    .end local v3           #notification:Landroid/app/Notification;
    .end local v4           #pi:Landroid/app/PendingIntent;
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v6           #title:Ljava/lang/CharSequence;
    :cond_2
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbNotificationShown:Z
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$3000(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbNotificationShown:Z
    invoke-static {v7, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$3002(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$2800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method

.method private updateAudioSourceFunction()V
    .locals 9

    .prologue
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v7, "audio_source"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v6, v7}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .local v3, enabled:Z
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->access$2500(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v6

    if-eq v3, v6, :cond_1

    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, intent:Landroid/content/Intent;
    const/high16 v6, 0x2000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v6, 0x4000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v7, "state"

    if-eqz v3, :cond_2

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v3, :cond_0

    :try_start_0
    new-instance v5, Ljava/util/Scanner;

    new-instance v6, Ljava/io/File;

    const-string v7, "/sys/class/android_usb/android0/f_audio_source/pcm"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .local v5, scanner:Ljava/util/Scanner;
    invoke-virtual {v5}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    .local v0, card:I
    invoke-virtual {v5}, Ljava/util/Scanner;->nextInt()I

    move-result v1

    .local v1, device:I
    const-string v6, "card"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "device"

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #card:I
    .end local v1           #device:I
    .end local v5           #scanner:Ljava/util/Scanner;
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendStickyBroadcast ACTION_USB_STATE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z
    invoke-static {v6, v3}, Lcom/android/server/usb/UsbDeviceManager;->access$2502(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .end local v4           #intent:Landroid/content/Intent;
    :cond_1
    return-void

    .restart local v4       #intent:Landroid/content/Intent;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "could not open audio source PCM file"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateCurrentAccessory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2300(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/hardware/usb/UsbAccessory;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$2300(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/usb/UsbAccessory;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entering USB accessory mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2400(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nativeGetAccessoryStrings failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exited USB accessory mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2400(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbSettingsManager;->accessoryDetached(Landroid/hardware/usb/UsbAccessory;)V

    :cond_4
    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/server/usb/UsbDeviceManager;->access$2302(Lcom/android/server/usb/UsbDeviceManager;[Ljava/lang/String;)[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private updateUsbNotification()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$2800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$2900(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, id:I
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .local v5, r:Landroid/content/res/Resources;
    iget-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v8, "mtp"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const v0, 0x1040441

    :cond_2
    :goto_1
    iget v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eq v0, v7, :cond_0

    iget v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$2800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v7

    iget v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    invoke-virtual {v7, v8}, Landroid/app/NotificationManager;->cancel(I)V

    iput v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    :cond_3
    if-eqz v0, :cond_0

    const v7, 0x1040445

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, message:Ljava/lang/CharSequence;
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, title:Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .local v3, notification:Landroid/app/Notification;
    const v7, 0x108052c

    iput v7, v3, Landroid/app/Notification;->icon:I

    const-wide/16 v7, 0x0

    iput-wide v7, v3, Landroid/app/Notification;->when:J

    const/4 v7, 0x2

    iput v7, v3, Landroid/app/Notification;->flags:I

    iput-object v6, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput v10, v3, Landroid/app/Notification;->defaults:I

    iput-object v9, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v9, v3, Landroid/app/Notification;->vibrate:[J

    const/4 v7, -0x2

    iput v7, v3, Landroid/app/Notification;->priority:I

    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.android.settings"

    const-string v9, "com.android.settings.UsbSettings"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .local v1, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v10, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3, v7, v6, v2, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$2800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v7

    invoke-virtual {v7, v0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    goto/16 :goto_0

    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #message:Ljava/lang/CharSequence;
    .end local v3           #notification:Landroid/app/Notification;
    .end local v4           #pi:Landroid/app/PendingIntent;
    .end local v6           #title:Ljava/lang/CharSequence;
    :cond_4
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v8, "ptp"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const v0, 0x1040442

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v8, "mass_storage"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const v0, 0x1040443

    goto/16 :goto_1

    :cond_6
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v8, "accessory"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const v0, 0x1040444

    goto/16 :goto_1

    :cond_7
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v8, "rndis"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string v8, "No known USB function in updateUsbNotification"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private updateUsbState()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbState(Ljava/lang/String;)V

    return-void
.end method

.method private updateUsbState(Ljava/lang/String;)V
    .locals 6
    .parameter "SetCurrentFunctions"

    .prologue
    const/4 v5, 0x1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "connected"

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "configured"

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v3, "cdc_ethernet"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "cdc_network"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string v3, "rndis"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendStickyBroadcast: SetCurrentFunctions= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_2
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, functions:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    aget-object v3, v0, v1

    const-string v4, "cdc_ethernet"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "rndis"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    aget-object v3, v0, v1

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method private waitForState(Ljava/lang/String;)Z
    .locals 4
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    const-string v1, "sys.usb.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitForState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") FAILED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "fd"
    .parameter "pw"

    .prologue
    const-string v1, "  USB Device State:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Current Functions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Default Functions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mConfigured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mCurrentAccessory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Kernel state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/state"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Kernel function list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/functions"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Mass storage backing file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/f_mass_storage/lun/file"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/high16 v11, 0x2000

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[USBNET] handleMessage: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; mConnected="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mConfiguration="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/KeyguardManager;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v8

    if-eqz v8, :cond_1

    move v4, v6

    .local v4, isLocked:Z
    :goto_0
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[USBNET] Unknown handleMessage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    .end local v4           #isLocked:Z
    :cond_1
    move v4, v7

    goto :goto_0

    .restart local v4       #isLocked:Z
    :pswitch_0
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v6, :cond_5

    move v8, v6

    :goto_2
    iput-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    iget v8, p1, Landroid/os/Message;->arg2:I

    if-ne v8, v6, :cond_6

    move v8, v6

    :goto_3
    iput-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v9, "accessory"

    #calls: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateCurrentAccessory()V

    :cond_2
    iget-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v8, :cond_4

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[USBNET] gotDisconnected, mPreAdbEnabled= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mPreAdbEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1300(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,mAdbEnabled= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v8

    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mPreAdbEnabled:Z
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager;->access$1300(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v9

    if-eq v8, v9, :cond_3

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mPreAdbEnabled:Z
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager;->access$1300(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v9

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v8, v9}, Lcom/android/server/usb/UsbDeviceManager;->access$402(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mPreAdbEnabledByUsb:Z
    invoke-static {v8, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$202(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "adb_enabled"

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mPreAdbEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1300(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-eqz v10, :cond_7

    :goto_4
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultKernelFunctions:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    :cond_4
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->access$1600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbState()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAudioSourceFunction()V

    goto/16 :goto_1

    :cond_5
    move v8, v7

    goto/16 :goto_2

    :cond_6
    move v8, v7

    goto/16 :goto_3

    :cond_7
    move v6, v7

    goto :goto_4

    :pswitch_1
    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabledByUsb:Z
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$2600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[USBNET] Switch adb by usb service"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabledByUsb:Z
    invoke-static {v8, v7}, Lcom/android/server/usb/UsbDeviceManager;->access$2602(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v6, :cond_8

    :goto_5
    invoke-direct {p0, v6, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(ZZ)V

    goto/16 :goto_1

    :cond_8
    move v6, v7

    goto :goto_5

    :cond_9
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v6, :cond_a

    :goto_6
    invoke-direct {p0, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(Z)V

    goto/16 :goto_1

    :cond_a
    move v6, v7

    goto :goto_6

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .local v0, functions:Ljava/lang/String;
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v6, :cond_b

    move v5, v6

    .local v5, makeDefault:Z
    :goto_7
    invoke-direct {p0, v0, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .end local v5           #makeDefault:Z
    :cond_b
    move v5, v7

    goto :goto_7

    .end local v0           #functions:Ljava/lang/String;
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAtsMode:Ljava/lang/String;

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    iget-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v8, :cond_c

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[USBNET] SYSTEM_READY and mConnected, isLocked= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v9

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mPreAdbEnabled:Z
    invoke-static {v8, v9}, Lcom/android/server/usb/UsbDeviceManager;->access$1302(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isHtcMode()Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v8

    if-eqz v8, :cond_d

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[USBNET] disable adb for isKeyguardSecure() while boot completed"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabledByUsb:Z
    invoke-static {v8, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$2602(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "adb_enabled"

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_c
    :goto_8
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbState()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAudioSourceFunction()V

    goto/16 :goto_1

    :cond_d
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v7

    if-nez v7, :cond_c

    if-nez v4, :cond_c

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[USBNET] enable adb for HSM while boot completed"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabledByUsb:Z
    invoke-static {v7, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$2602(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "adb_enabled"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    :cond_e
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[USBNET] In HTC mode, skip enable adb"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :pswitch_4
    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v8, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$1602(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$2400(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v8, v9}, Lcom/android/server/usb/UsbSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    :cond_f
    iget-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc:I
    invoke-static {v8, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$702(Lcom/android/server/usb/UsbDeviceManager;I)I

    :goto_9
    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc4Boot:I
    invoke-static {v8, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$2702(Lcom/android/server/usb/UsbDeviceManager;I)I

    const/4 v6, 0x5

    invoke-direct {p0, v6, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(II)V

    goto/16 :goto_1

    :cond_10
    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc:I
    invoke-static {v8, v7}, Lcom/android/server/usb/UsbDeviceManager;->access$702(Lcom/android/server/usb/UsbDeviceManager;I)I

    goto :goto_9

    :pswitch_5
    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc:I
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$700(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v8

    if-ne v8, v6, :cond_11

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc4Boot:I
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$2700(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v8

    if-nez v8, :cond_11

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[USBNET] gotConnect2PC=1, mPreAdbEnabled= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mPreAdbEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1300(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,mAdbEnabled= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,mAtsMode= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAtsMode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,mSecureKey= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecureKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v9

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mPreAdbEnabled:Z
    invoke-static {v8, v9}, Lcom/android/server/usb/UsbDeviceManager;->access$1302(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isHtcMode()Z

    move-result v8

    if-nez v8, :cond_15

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v8

    if-nez v8, :cond_13

    if-nez v4, :cond_13

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[USBNET] enable adb for HSM"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabledByUsb:Z
    invoke-static {v8, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$2602(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "adb_enabled"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_11
    :goto_a
    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc4Boot:I
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$2700(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v8

    if-ne v8, v6, :cond_12

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[USBNET] When BOOT_COMPLETED; update Connect2PC = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc:I
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$700(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc4Boot:I
    invoke-static {v8, v7}, Lcom/android/server/usb/UsbDeviceManager;->access$2702(Lcom/android/server/usb/UsbDeviceManager;I)I

    :cond_12
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent2:Landroid/content/Intent;
    invoke-virtual {v1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v8, "connected"

    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc:I
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager;->access$700(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v9

    if-eqz v9, :cond_16

    :goto_b
    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[USBNET] sendStickyBroadcast ACTION_USB_CONNECT2PC: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc:I
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$700(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v1           #intent2:Landroid/content/Intent;
    :cond_13
    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v8

    if-eqz v8, :cond_11

    if-eqz v4, :cond_11

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAtsMode:Ljava/lang/String;

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[USBNET] disable adb for isKeyguardSecure()"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabledByUsb:Z
    invoke-static {v8, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$2602(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "adb_enabled"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    :cond_14
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[USBNET] In ATS mode, skip- disable adb for isKeyguardSecure()"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_15
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[USBNET] In HTC mode, skip enable adb"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .restart local v1       #intent2:Landroid/content/Intent;
    :cond_16
    move v6, v7

    goto :goto_b

    .end local v1           #intent2:Landroid/content/Intent;
    :pswitch_6
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.htc.usb.USB_HOST_CABLE"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent3:Landroid/content/Intent;
    const-string v8, "connected"

    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mHostCable:I
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v9

    if-eqz v9, :cond_17

    :goto_c
    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[USBNET] sendStickyBroadcast ACTION_USB_HOST_CABLE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mHostCable:I
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_17
    move v6, v7

    goto :goto_c

    .end local v2           #intent3:Landroid/content/Intent;
    :pswitch_7
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.htc.usb.USB_HOST_MODE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, intent4:Landroid/content/Intent;
    const-string v7, "unsupported"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[USBNET] sendStickyBroadcast ACTION_USB_HOST_MODE"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "arg"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, m:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(ILjava/lang/Object;Z)V
    .locals 2
    .parameter "what"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, m:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendMessage(IZ)V
    .locals 2
    .parameter "what"
    .parameter "arg"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, m:Landroid/os/Message;
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateState(Ljava/lang/String;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->connected:I

    iput v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->last_connected:I

    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->configured:I

    iput v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->last_configured:I

    const-string v1, "DISCONNECTED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->connected:I

    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->configured:I

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    invoke-static {p0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->connected:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->configured:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->last_connected:I

    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->connected:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->last_configured:I

    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->configured:I

    if-ne v1, v2, :cond_3

    iput v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->intentDelay:I

    :goto_1
    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->intentDelay:I

    if-ne v1, v4, :cond_4

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0           #msg:Landroid/os/Message;
    :goto_2
    return-void

    :cond_0
    const-string v1, "CONNECTED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->connected:I

    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->configured:I

    goto :goto_0

    :cond_1
    const-string v1, "CONFIGURED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->connected:I

    iput v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->configured:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .restart local v0       #msg:Landroid/os/Message;
    :cond_3
    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->intentDelay:I

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->connected:I

    if-nez v1, :cond_5

    const-wide/16 v1, 0x3e8

    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_5
    const-wide/16 v1, 0x0

    goto :goto_3
.end method
