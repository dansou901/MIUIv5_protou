.class public Lcom/htc/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/view/VolumePanel$SoundPoolHelp;,
        Lcom/htc/view/VolumePanel$SeekBarStyle;,
        Lcom/htc/view/VolumePanel$SoundID;,
        Lcom/htc/view/VolumePanel$StreamControl;,
        Lcom/htc/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final BEEP_DURATION:I = 0x96

#the value of this static final field might be set in the static constructor
.field private static final Debug_volporting:Z = false

.field private static final FREE_DELAY:I = 0x927c0

#the value of this static final field might be set in the static constructor
.field private static final ICS_LAYOUT_COLOR_BG_DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final ICS_LAYOUT_COLOR_DEBUG:Z = false

.field private static final INTENT_ACTION_MY_CONFIGURAGE_CHANGE:Ljava/lang/String; = "com.htc.view.intent.action.debug_configuagechange"

.field private static final INTENT_ENTER_HOME:Ljava/lang/String; = null

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_MUSIC_MUTE_OFF:I = 0xd

.field private static final MSG_MUSIC_MUTE_ON:I = 0xc

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_REMOVE_LISTEN_ENTER_HOME:I = 0xe

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_UPDATE_ROTAETE:I = 0xb

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final MUSIC_MUTE_ACTION:Ljava/lang/String; = "com.htc.view.music_mute"

.field private static final MUSIC_MUTE_EXTRA_NEW_STATE:Ljava/lang/String; = "new_state"

.field private static final MUSIC_MUTE_PERMISSIONS:Ljava/lang/String; = "com.htc.view.intent.category.MUTE_MUSIC"

.field public static final PLAY_SOUND_DELAY:I = 0x0

.field public static final PLAY_SOUND_DELAY_4_SAME_VOLUME:I = 0x96

.field private static SCREEN_MODE_ILANDSCAPE:I = 0x0

.field private static SCREEN_MODE_IPORTRAIT:I = 0x0

.field private static SCREEN_MODE_LANDSCAPE:I = 0x0

.field private static SCREEN_MODE_PORTRAIT:I = 0x0

.field private static final STREAMS:[Lcom/htc/view/VolumePanel$StreamResources; = null

.field private static final STREAM_DUMMY:I = -0x2

.field private static final STREAM_MASTER:I = -0x64

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field private static final TIMEOUT_DELAY_MEDIA:I = 0x7d0

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static last_stream_index:I

.field private static last_stream_type:I

.field private static mCustomizeUI:Z

.field private static final mNewStyle:Z


# instance fields
.field final RINGER_MODE_OUTDOOR:I

.field private isRotate:Z

.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field mClsHtcSeekBar:Ljava/lang/Class;

.field protected mContext:Landroid/content/Context;

.field mCustomizeIconNames:[Ljava/lang/CharSequence;

.field mCustomizeIconRes:[I

.field mCustomizeIconSilenceRes:I

.field mCustomizeIconVibeRes:I

.field private final mDialog:Landroid/app/Dialog;

.field private final mDivider:Landroid/view/View;

.field final mEnterHomeReceiver:Landroid/content/BroadcastReceiver;

.field mHtcSeekBar_setDisplayMode:Ljava/lang/reflect/Method;

.field mIconWidth:I

.field mLastFlags:I

.field private final mMoreButton:Landroid/view/View;

.field private mNewSkinPackage:Ljava/lang/String;

.field private final mPanel:Landroid/view/ViewGroup;

.field private mRes:Landroid/content/res/Resources;

.field private final mRetryDelay:I

.field private final mRetryDuratinons:I

.field private mRetryTimes:I

.field private mRingIsSilent:Z

.field mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

.field private mScreenWidth:I

.field mSeekBarStyle:Lcom/htc/view/VolumePanel$SeekBarStyle;

.field private mShowCombinedVolumes:Z

.field private mSkinRes:Landroid/content/res/Resources;

.field private final mSliderGroup:Landroid/view/ViewGroup;

.field private mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z

.field m_HtcDimension_m1:I

.field m_HtcDimension_m2:I

.field m_HtcDimension_m3:I

.field m_HtcDimension_m4:I

.field private needRotate:Z

.field private panel_orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    .line 152
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v3, 0x407f5c29

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    .line 153
    sput-boolean v2, Lcom/htc/view/VolumePanel;->mCustomizeUI:Z

    .line 180
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v3, 0x408fae14

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    const-string v0, "com.htc.intent.action.NOTIFY_ENTER_HOME"

    :goto_1
    sput-object v0, Lcom/htc/view/VolumePanel;->INTENT_ENTER_HOME:Ljava/lang/String;

    .line 278
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/htc/view/VolumePanel$StreamResources;

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v3, v0, v2

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v3, v0, v1

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->VoiceStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v3, v0, v6

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v3, v0, v7

    const/4 v3, 0x4

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->NotificationStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v4, v0, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->AlarmStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v4, v0, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->MasterStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v4, v0, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->RemoteStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v4, v0, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->SystemStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v4, v0, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->DtmfStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v4, v0, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->DummyStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v4, v0, v3

    sput-object v0, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    .line 309
    sput v2, Lcom/htc/view/VolumePanel;->SCREEN_MODE_PORTRAIT:I

    .line 310
    sput v1, Lcom/htc/view/VolumePanel;->SCREEN_MODE_LANDSCAPE:I

    .line 311
    sput v6, Lcom/htc/view/VolumePanel;->SCREEN_MODE_IPORTRAIT:I

    .line 312
    sput v7, Lcom/htc/view/VolumePanel;->SCREEN_MODE_ILANDSCAPE:I

    .line 463
    const-string v0, "volPorting"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/view/VolumePanel;->Debug_volporting:Z

    .line 464
    const-string v0, "volLayoutD"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    .line 465
    const-string v0, "volLayoutBGD"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_BG_DEBUG:Z

    .line 1438
    sput v5, Lcom/htc/view/VolumePanel;->last_stream_type:I

    .line 1439
    sput v5, Lcom/htc/view/VolumePanel;->last_stream_index:I

    return-void

    :cond_0
    move v0, v2

    .line 152
    goto :goto_0

    .line 180
    :cond_1
    const-string v0, "android.intent.action.NOTIFY_ENTER_HOME"

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 28
    .parameter "context"
    .parameter "volumeService"

    .prologue
    .line 522
    invoke-direct/range {p0 .. p0}, Landroid/os/Handler;-><init>()V

    .line 170
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 174
    const/16 v24, 0x3

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/VolumePanel;->RINGER_MODE_OUTDOOR:I

    .line 313
    sget v24, Lcom/htc/view/VolumePanel;->SCREEN_MODE_PORTRAIT:I

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/VolumePanel;->panel_orientation:I

    .line 314
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/view/VolumePanel;->isRotate:Z

    .line 315
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/view/VolumePanel;->needRotate:Z

    .line 321
    const/16 v24, 0x32

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/VolumePanel;->mRetryDelay:I

    .line 322
    const/16 v24, 0x3e8

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/VolumePanel;->mRetryDuratinons:I

    .line 323
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/VolumePanel;->mRetryTimes:I

    .line 324
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    .line 330
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mCustomizeIconNames:[Ljava/lang/CharSequence;

    .line 331
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mCustomizeIconRes:[I

    .line 332
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/VolumePanel;->mCustomizeIconSilenceRes:I

    .line 333
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/VolumePanel;->mCustomizeIconVibeRes:I

    .line 334
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mClsHtcSeekBar:Ljava/lang/Class;

    .line 341
    sget-object v24, Lcom/htc/view/VolumePanel$SeekBarStyle;->SeekBar_Undefine:Lcom/htc/view/VolumePanel$SeekBarStyle;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mSeekBarStyle:Lcom/htc/view/VolumePanel$SeekBarStyle;

    .line 460
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mRes:Landroid/content/res/Resources;

    .line 461
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;

    .line 462
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    .line 517
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/VolumePanel;->mIconWidth:I

    .line 518
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 519
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    .line 520
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    .line 521
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    .line 849
    new-instance v24, Lcom/htc/view/VolumePanel$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/view/VolumePanel$5;-><init>(Lcom/htc/view/VolumePanel;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mEnterHomeReceiver:Landroid/content/BroadcastReceiver;

    .line 1358
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/VolumePanel;->mLastFlags:I

    .line 2459
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mHtcSeekBar_setDisplayMode:Ljava/lang/reflect/Method;

    .line 523
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 524
    const-string v24, "audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/media/AudioManager;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 525
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 529
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x111000a

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    .line 532
    .local v20, useMasterVolume:Z
    if-eqz v20, :cond_1

    .line 533
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    sget-object v24, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v9, v0, :cond_1

    .line 534
    sget-object v24, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    aget-object v19, v24, v9

    .line 535
    .local v19, streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    move/from16 v24, v0

    const/16 v25, -0x64

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    const/16 v24, 0x1

    :goto_1
    move/from16 v0, v24

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/htc/view/VolumePanel$StreamResources;->show:Z

    .line 533
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 535
    :cond_0
    const/16 v24, 0x0

    goto :goto_1

    .line 539
    .end local v9           #i:I
    .end local v19           #streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    :cond_1
    const-string v24, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 542
    .local v10, inflater:Landroid/view/LayoutInflater;
    sget-boolean v24, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v24, :cond_2

    .line 544
    const-string v24, "VolumePanel"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "VolumePanel initial in HTC sense = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_2
    const v24, 0x403001c

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    .line 548
    .local v21, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    move-object/from16 v24, v0

    new-instance v25, Lcom/htc/view/VolumePanel$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/view/VolumePanel$1;-><init>(Lcom/htc/view/VolumePanel;)V

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x1020018

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/RotateRelativeLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x411002e

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 557
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 558
    .local v6, dm:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "window"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/WindowManager;

    .line 559
    .local v23, wm:Landroid/view/WindowManager;
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 560
    const-string v24, "VolumePanel"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "dm.widthPixels: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " dm.heightPixels "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 564
    .local v18, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x411002f

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x4110031

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x4110030

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    .line 568
    :try_start_0
    const-string v24, "volume_panel_follow_layout"

    const-string v25, "bool"

    const-string v26, "com.htc.framework"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v24

    sput-boolean v24, Lcom/htc/view/VolumePanel;->mCustomizeUI:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 571
    :goto_2
    sget-boolean v24, Lcom/htc/view/VolumePanel;->mCustomizeUI:Z

    if-eqz v24, :cond_3

    .line 572
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->fnPreinitRefec()V

    .line 574
    :cond_3
    sget-boolean v24, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    if-eqz v24, :cond_6

    sget-boolean v24, Lcom/htc/view/VolumePanel;->mCustomizeUI:Z

    if-nez v24, :cond_6

    .line 575
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/view/VolumePanel;->initSense40Panelayout(Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 646
    :cond_4
    :goto_3
    new-instance v24, Lcom/htc/view/VolumePanel$2;

    const v25, 0x10302f5

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/view/VolumePanel$2;-><init>(Lcom/htc/view/VolumePanel;Landroid/content/Context;I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v24, v0

    const-string v25, "Volume control"

    invoke-virtual/range {v24 .. v25}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v24, v0

    new-instance v25, Lcom/htc/view/VolumePanel$3;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/view/VolumePanel$3;-><init>(Lcom/htc/view/VolumePanel;)V

    invoke-virtual/range {v24 .. v25}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v22

    .line 666
    .local v22, window:Landroid/view/Window;
    sget-boolean v24, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    if-nez v24, :cond_10

    .line 667
    const/16 v24, 0x30

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 670
    :goto_4
    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 671
    .local v11, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v24, 0x0

    move-object/from16 v0, v24

    iput-object v0, v11, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 673
    sget-boolean v24, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    if-nez v24, :cond_11

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x105004a

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v24

    move/from16 v0, v24

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 676
    const/16 v24, -0x2

    move/from16 v0, v24

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 679
    :goto_5
    sget-boolean v24, Lcom/htc/view/VolumePanel;->mCustomizeUI:Z

    if-eqz v24, :cond_5

    .line 680
    const/16 v24, 0x30

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 681
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 682
    const/16 v24, 0x0

    move/from16 v0, v24

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 686
    :cond_5
    const/16 v24, 0x7e4

    move/from16 v0, v24

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 688
    const/16 v24, -0x2

    move/from16 v0, v24

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 689
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, -0x5

    move/from16 v0, v24

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 690
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, -0x3

    move/from16 v0, v24

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 691
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 692
    const v24, 0x40028

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 695
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Landroid/media/ToneGenerator;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 696
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Lcom/htc/view/VolumePanel$SoundPoolHelp;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    .line 697
    const-string v24, "vibrator"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/Vibrator;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 699
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x1110028

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    .line 700
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    move/from16 v24, v0

    if-nez v24, :cond_12

    if-nez v20, :cond_12

    const/16 v24, 0x1

    :goto_6
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 702
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    move/from16 v24, v0

    if-nez v24, :cond_13

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 708
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->listenToRingerMode()V

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->resetPanelRotation()V

    .line 710
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->listenToMusicMuteRequest()V

    .line 711
    return-void

    .line 577
    .end local v11           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v22           #window:Landroid/view/Window;
    :cond_6
    sget-boolean v24, Lcom/htc/view/VolumePanel;->mCustomizeUI:Z

    if-eqz v24, :cond_e

    .line 578
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_b

    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    .line 580
    .local v16, panelWidth:I
    :goto_8
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    iget v15, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 584
    .local v15, panelHeight:I
    :goto_9
    :try_start_1
    const-string v24, "icon_volume_panel"

    const-string v25, "array"

    const-string v26, "com.htc.framework"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 585
    .local v12, nStringID_icon_volume_panel:I
    if-lez v12, :cond_7

    .line 586
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mCustomizeIconNames:[Ljava/lang/CharSequence;

    .line 587
    :cond_7
    const/4 v4, 0x0

    .line 588
    .local v4, IconSlience:Ljava/lang/String;
    const-string v24, "icon_volume_panel_silence"

    const-string v25, "string"

    const-string v26, "com.htc.framework"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 589
    .local v13, nStringID_icon_volume_panel_silence:I
    if-lez v13, :cond_8

    .line 590
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 591
    :cond_8
    const/4 v5, 0x0

    .line 592
    .local v5, IconVibe:Ljava/lang/String;
    const-string v24, "icon_volume_panel_vibe"

    const-string v25, "string"

    const-string v26, "com.htc.framework"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 593
    .local v14, nStringID_icon_volume_panel_vibe:I
    if-lez v14, :cond_9

    .line 594
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 595
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mCustomizeIconNames:[Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mCustomizeIconNames:[Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    if-lez v24, :cond_a

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mCustomizeIconNames:[Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mCustomizeIconRes:[I

    .line 597
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mCustomizeIconNames:[Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v9, v0, :cond_a

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mCustomizeIconRes:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mCustomizeIconNames:[Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    aget-object v24, v24, v9

    check-cast v24, Ljava/lang/String;

    const/16 v26, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v24

    aput v24, v25, v9

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mCustomizeIconRes:[I

    move-object/from16 v24, v0

    aget v24, v24, v9

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 600
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mCustomizeIconRes:[I

    .line 606
    .end local v9           #i:I
    :cond_a
    const/16 v24, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v4, v1}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/VolumePanel;->mCustomizeIconSilenceRes:I

    .line 607
    const/16 v24, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v5, v1}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/VolumePanel;->mCustomizeIconVibeRes:I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 615
    .end local v4           #IconSlience:Ljava/lang/String;
    .end local v5           #IconVibe:Ljava/lang/String;
    .end local v12           #nStringID_icon_volume_panel:I
    .end local v13           #nStringID_icon_volume_panel_silence:I
    .end local v14           #nStringID_icon_volume_panel_vibe:I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 617
    .local v17, param:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    .line 619
    sget-boolean v24, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v24, :cond_4

    .line 621
    const-string v24, "VolumePanel"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "VolumePanel width. = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 578
    .end local v15           #panelHeight:I
    .end local v16           #panelWidth:I
    .end local v17           #param:Landroid/view/ViewGroup$LayoutParams;
    :cond_b
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    goto/16 :goto_8

    .line 580
    .restart local v16       #panelWidth:I
    :cond_c
    iget v15, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    goto/16 :goto_9

    .line 597
    .restart local v4       #IconSlience:Ljava/lang/String;
    .restart local v5       #IconVibe:Ljava/lang/String;
    .restart local v9       #i:I
    .restart local v12       #nStringID_icon_volume_panel:I
    .restart local v13       #nStringID_icon_volume_panel_silence:I
    .restart local v14       #nStringID_icon_volume_panel_vibe:I
    .restart local v15       #panelHeight:I
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_a

    .line 608
    .end local v4           #IconSlience:Ljava/lang/String;
    .end local v5           #IconVibe:Ljava/lang/String;
    .end local v9           #i:I
    .end local v12           #nStringID_icon_volume_panel:I
    .end local v13           #nStringID_icon_volume_panel_silence:I
    .end local v14           #nStringID_icon_volume_panel_vibe:I
    :catch_0
    move-exception v7

    .line 610
    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v24, "VolumePanel"

    const-string v25, "load string fail:IllegalStateException "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 611
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v8

    .line 612
    .local v8, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v24, "VolumePanel"

    const-string v25, "res not found"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 625
    .end local v8           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v15           #panelHeight:I
    .end local v16           #panelWidth:I
    :cond_e
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_f

    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    .line 628
    .restart local v16       #panelWidth:I
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 629
    .restart local v17       #param:Landroid/view/ViewGroup$LayoutParams;
    move/from16 v0, v16

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const-string v25, "popup_full_dark"

    const-string v26, "drawable"

    const-string v27, "com.htc"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 633
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    move-object/from16 v24, v0

    check-cast v24, Landroid/widget/ImageView;

    const-string v25, "common_divider"

    const-string v26, "drawable"

    const-string v27, "com.htc"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 634
    :catch_2
    move-exception v8

    .line 635
    .restart local v8       #ex:Landroid/content/res/Resources$NotFoundException;
    const-string v24, "VolumePanel"

    const-string v25, "common_divider not found"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 625
    .end local v8           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v16           #panelWidth:I
    .end local v17           #param:Landroid/view/ViewGroup$LayoutParams;
    :cond_f
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    goto :goto_c

    .line 669
    .restart local v22       #window:Landroid/view/Window;
    :cond_10
    const/16 v24, 0x11

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_4

    .line 678
    .restart local v11       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_5

    .line 700
    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_6

    .line 706
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 569
    .end local v11           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v22           #window:Landroid/view/Window;
    :catch_3
    move-exception v24

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/htc/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/view/VolumePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/view/VolumePanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/view/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/htc/view/VolumePanel;->INTENT_ENTER_HOME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/view/VolumePanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/htc/view/VolumePanel;->isRotate:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/view/VolumePanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/htc/view/VolumePanel;->needRotate:Z

    return v0
.end method

.method private addOtherVolumes()V
    .locals 5

    .prologue
    .line 1233
    iget-boolean v3, p0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 1246
    :cond_0
    return-void

    .line 1235
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1237
    sget-object v3, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget v2, v3, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    .line 1238
    .local v2, streamType:I
    sget-object v3, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/htc/view/VolumePanel$StreamResources;->show:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-ne v2, v3, :cond_3

    .line 1235
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1241
    :cond_3
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1242
    .local v1, sc:Lcom/htc/view/VolumePanel$StreamControl;
    iget-object v3, v1, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1243
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v1, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1244
    invoke-direct {p0, v1}, Lcom/htc/view/VolumePanel;->updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V

    goto :goto_1
.end method

.method private ceateToneGenerator(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;
    .locals 13
    .parameter "streamType"

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x2

    .line 1883
    monitor-enter p0

    .line 1884
    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_3

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-nez v0, :cond_3

    .line 1885
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1886
    .local v2, listSrcFile:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x7

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "/system/media/audio/ui/Volume-1.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, "/system/media/audio/ui/Volume-2.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const-string v1, "/system/media/audio/ui/Volume-3.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x3

    const-string v1, "/system/media/audio/ui/Volume-4.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x4

    const-string v1, "/system/media/audio/ui/Volume-5.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x5

    const-string v1, "/system/media/audio/ui/Volume-6.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x6

    const-string v1, "/system/media/audio/ui/Volume-7.mp3"

    aput-object v1, v9, v0

    .line 1895
    .local v9, effectSound:[Ljava/lang/String;
    const/4 v0, 0x7

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "/system/media/audio/ui/Volume-1.aac"

    aput-object v1, v10, v0

    const/4 v0, 0x1

    const-string v1, "/system/media/audio/ui/Volume-2.aac"

    aput-object v1, v10, v0

    const/4 v0, 0x2

    const-string v1, "/system/media/audio/ui/Volume-3.aac"

    aput-object v1, v10, v0

    const/4 v0, 0x3

    const-string v1, "/system/media/audio/ui/Volume-4.aac"

    aput-object v1, v10, v0

    const/4 v0, 0x4

    const-string v1, "/system/media/audio/ui/Volume-5.aac"

    aput-object v1, v10, v0

    const/4 v0, 0x5

    const-string v1, "/system/media/audio/ui/Volume-6.aac"

    aput-object v1, v10, v0

    const/4 v0, 0x6

    const-string v1, "/system/media/audio/ui/Volume-7.aac"

    aput-object v1, v10, v0

    .line 1904
    .local v10, effectSound1:[Ljava/lang/String;
    const-string v0, "VolumePanel"

    const-string v1, "prepare sound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    new-instance v11, Ljava/io/File;

    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1906
    .local v11, fileChk:Ljava/io/File;
    sget-boolean v0, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    if-eqz v0, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1907
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    array-length v0, v9

    if-ge v12, v0, :cond_2

    .line 1908
    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare sound"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v10, v12

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    aget-object v0, v10, v12

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1907
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1912
    .end local v12           #i:I
    :cond_1
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_1
    array-length v0, v9

    if-ge v12, v0, :cond_2

    .line 1913
    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare sound"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v9, v12

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    aget-object v0, v9, v12

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1912
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1918
    :cond_2
    iget-object v6, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    new-instance v0, Lcom/htc/view/VolumePanel$SoundPoolHelp;

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/view/VolumePanel$SoundPoolHelp;-><init>(Lcom/htc/view/VolumePanel;Ljava/util/List;III)V

    aput-object v0, v6, p1

    monitor-exit p0

    move-object v3, v0

    .line 1921
    .end local v2           #listSrcFile:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #effectSound:[Ljava/lang/String;
    .end local v10           #effectSound1:[Ljava/lang/String;
    .end local v11           #fileChk:Ljava/io/File;
    .end local v12           #i:I
    :goto_2
    return-object v3

    :cond_3
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    new-instance v3, Lcom/htc/view/VolumePanel$SoundPoolHelp;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v4, p0

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/htc/view/VolumePanel$SoundPoolHelp;-><init>(Lcom/htc/view/VolumePanel;Ljava/util/List;III)V

    aput-object v3, v0, p1

    monitor-exit p0

    goto :goto_2

    .line 1925
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private collapse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1342
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1343
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1344
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1345
    .local v0, count:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1346
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1348
    :cond_0
    return-void
.end method

.method private createSliders()V
    .locals 23

    .prologue
    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "mode_ringer_streams_affected"

    const/16 v20, 0x24

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 984
    .local v15, silentableStreams:I
    or-int/lit8 v15, v15, 0x8

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mRes:Landroid/content/res/Resources;

    .line 988
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->getSkinPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    .line 989
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->setSkinRes()V

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "layout_inflater"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 993
    .local v7, inflater:Landroid/view/LayoutInflater;
    new-instance v18, Ljava/util/HashMap;

    sget-object v19, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 996
    .local v13, res:Landroid/content/res/Resources;
    const/4 v9, 0x0

    .line 997
    .local v9, list_primary_m:F
    const/4 v8, 0x0

    .line 999
    .local v8, list_item_primary_text:I
    :try_start_0
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_0

    .line 1000
    const-string v18, "VolumePanel"

    const-string v19, ">>LOAD font size (list_primary_m) "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_0
    const-string v18, "list_primary_m"

    const-string v19, "dimen"

    const-string v20, "com.htc"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 1002
    const-string v18, "list_primary"

    const-string v19, "color"

    const-string v20, "com.htc"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 1003
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_1

    .line 1004
    const-string v18, "VolumePanel"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "font size (list_primary_m): "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1011
    :cond_1
    :goto_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    sget-object v18, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_21

    .line 1012
    sget-object v18, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    aget-object v16, v18, v6

    .line 1013
    .local v16, streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    move/from16 v17, v0

    .line 1014
    .local v17, streamType:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    sget-object v18, Lcom/htc/view/VolumePanel$StreamResources;->NotificationStream:Lcom/htc/view/VolumePanel$StreamResources;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1015
    sget-object v16, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    .line 1017
    :cond_2
    new-instance v14, Lcom/htc/view/VolumePanel$StreamControl;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Lcom/htc/view/VolumePanel$StreamControl;-><init>(Lcom/htc/view/VolumePanel;Lcom/htc/view/VolumePanel$1;)V

    .line 1018
    .local v14, sc:Lcom/htc/view/VolumePanel$StreamControl;
    move/from16 v0, v17

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    .line 1019
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_3

    .line 1020
    const-string v18, "VolumePanel"

    const-string v19, ">>inflater.inflate volume_adjust_item"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_3
    const v18, 0x403001d

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 1022
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_4

    .line 1023
    const-string v18, "VolumePanel"

    const-string v19, "<<inflater.inflate volume_adjust_item"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_4
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1027
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const v19, 0x4110030

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    .line 1028
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1030
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const v19, 0x4110032

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    .line 1031
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1032
    sget-boolean v18, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v18, :cond_5

    .line 1033
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, -0x100

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1035
    :cond_5
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const v19, 0x4110033

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 1036
    const/16 v18, 0x1

    iget v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    move/from16 v19, v0

    shl-int v18, v18, v19

    and-int v18, v18, v15

    if-eqz v18, :cond_6

    .line 1037
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1039
    :cond_6
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1040
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_7

    .line 1041
    const-string v18, "VolumePanel"

    const-string v19, "ico setBackgroundColor"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_7
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x106000d

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1043
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_8

    .line 1044
    const-string v18, "VolumePanel"

    const-string v19, "ico setContentDescription"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_8
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1046
    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    .line 1047
    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1048
    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->iconVibrateRes:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    .line 1049
    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->iconOutDoorRes:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    .line 1050
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->mCustomizeIconSilenceRes:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 1051
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->mCustomizeIconSilenceRes:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1052
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->mCustomizeIconVibeRes:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    .line 1053
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->mCustomizeIconVibeRes:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    .line 1054
    :cond_a
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_b

    .line 1055
    const-string v18, "VolumePanel"

    const-string v19, "ico setImageResource"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_b
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    iget v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1058
    sget-boolean v18, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v18, :cond_c

    .line 1059
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, -0xff0001

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1063
    :cond_c
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const v19, 0x4110013

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    .line 1064
    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->desTextRes:I

    .line 1065
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_d

    .line 1066
    const-string v18, "VolumePanel"

    const-string v19, "set text"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_d
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 1068
    sget-boolean v18, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v18, :cond_e

    .line 1069
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/high16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1071
    :cond_e
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const v19, 0x4110034

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/SeekBar;

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    .line 1072
    sget-boolean v18, Lcom/htc/view/VolumePanel;->mCustomizeUI:Z

    if-eqz v18, :cond_f

    .line 1073
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/view/VolumePanel;->fnInitSeeekBar(Landroid/widget/SeekBar;)V

    .line 1074
    :cond_f
    sget-boolean v18, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v18, :cond_10

    .line 1075
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    const/16 v19, -0x100

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setBackgroundColor(I)V

    .line 1076
    :cond_10
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_11

    .line 1077
    const-string v18, "VolumePanel"

    const-string v19, "getVolumeThumb"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->getVolumeThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1079
    .local v4, dwThum:Landroid/graphics/drawable/Drawable;
    sget-boolean v18, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    if-eqz v18, :cond_1c

    .line 1081
    sget-boolean v18, Lcom/htc/view/VolumePanel;->mCustomizeUI:Z

    if-nez v18, :cond_15

    .line 1084
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 1085
    .local v11, param:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1086
    const/16 v18, -0x2

    move/from16 v0, v18

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1087
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1088
    const-string v18, "VolumePanel"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "set icon width="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1094
    if-eqz v13, :cond_13

    .line 1096
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_12

    .line 1097
    const-string v18, "VolumePanel"

    const-string v19, "setTextSize"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_12
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1099
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1101
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x3dcccccd

    const/high16 v20, 0x3f80

    const/high16 v21, 0x3f80

    const/16 v22, -0x1

    invoke-virtual/range {v18 .. v22}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1104
    :cond_13
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1105
    .local v10, m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1106
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_14

    .line 1107
    const-string v18, "VolumePanel"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "volumeStreamText.setMargins "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_14
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1110
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10           #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1111
    .restart local v10       #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1112
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 1113
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10           #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1114
    .restart local v10       #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1117
    .end local v10           #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11           #param:Landroid/view/ViewGroup$LayoutParams;
    :cond_15
    :try_start_1
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "common_div"

    const-string v21, "drawable"

    const-string v22, "com.htc"

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1118
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "common_list_divider"

    const-string v21, "drawable"

    const-string v22, "com.htc"

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1132
    :goto_2
    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_16

    if-nez v17, :cond_1d

    :cond_16
    const/4 v12, 0x1

    .line 1134
    .local v12, plusOne:I
    :goto_3
    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_17

    .line 1135
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v19

    add-int v19, v19, v12

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1136
    :cond_17
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1137
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mSeekBarStyle:Lcom/htc/view/VolumePanel$SeekBarStyle;

    move-object/from16 v18, v0

    sget-object v19, Lcom/htc/view/VolumePanel$SeekBarStyle;->SeekBar_Undefine:Lcom/htc/view/VolumePanel$SeekBarStyle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_19

    .line 1143
    sget-boolean v18, Lcom/htc/view/VolumePanel;->mCustomizeUI:Z

    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mClsHtcSeekBar:Ljava/lang/Class;

    move-object/from16 v18, v0

    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1e

    .line 1145
    :cond_18
    const-string v18, "VolumePanel"

    const-string v19, "SeekBar with assert will load by ourself latter"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    sget-object v18, Lcom/htc/view/VolumePanel$SeekBarStyle;->SeekBar_GEP:Lcom/htc/view/VolumePanel$SeekBarStyle;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mSeekBarStyle:Lcom/htc/view/VolumePanel$SeekBarStyle;

    .line 1152
    :cond_19
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mSeekBarStyle:Lcom/htc/view/VolumePanel$SeekBarStyle;

    move-object/from16 v18, v0

    sget-object v19, Lcom/htc/view/VolumePanel$SeekBarStyle;->SeekBar_HTC:Lcom/htc/view/VolumePanel$SeekBarStyle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_20

    .line 1153
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_1a

    .line 1154
    const-string v18, "VolumePanel"

    const-string v19, "load Seek drawable"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_1a
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/view/VolumePanel;->getVolumeProgressDrawable(Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1157
    if-eqz v4, :cond_1f

    .line 1158
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 1167
    :cond_1b
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1006
    .end local v4           #dwThum:Landroid/graphics/drawable/Drawable;
    .end local v6           #i:I
    .end local v12           #plusOne:I
    .end local v14           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    .end local v16           #streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    .end local v17           #streamType:I
    :catch_0
    move-exception v5

    .line 1007
    .local v5, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v18, "VolumePanel"

    const-string v19, "fail to get font stytle"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const/high16 v9, 0x41d0

    .line 1009
    const v8, 0x424140

    goto/16 :goto_0

    .line 1119
    .end local v5           #ex:Landroid/content/res/Resources$NotFoundException;
    .restart local v4       #dwThum:Landroid/graphics/drawable/Drawable;
    .restart local v6       #i:I
    .restart local v14       #sc:Lcom/htc/view/VolumePanel$StreamControl;
    .restart local v16       #streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    .restart local v17       #streamType:I
    :catch_1
    move-exception v5

    .line 1120
    .restart local v5       #ex:Landroid/content/res/Resources$NotFoundException;
    const-string v18, "VolumePanel"

    const-string v19, "sc.line_divider:common_list_divider not found"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1124
    .end local v5           #ex:Landroid/content/res/Resources$NotFoundException;
    :cond_1c
    :try_start_2
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "zzz_common_review_divider"

    const-string v21, "drawable"

    const-string v22, "android"

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1125
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "zzz_common_review_divider"

    const-string v21, "drawable"

    const-string v22, "android"

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 1126
    :catch_2
    move-exception v5

    .line 1127
    .restart local v5       #ex:Landroid/content/res/Resources$NotFoundException;
    const-string v18, "VolumePanel"

    const-string v19, "sc.line_divider:zzz_common_review_divider not found"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1132
    .end local v5           #ex:Landroid/content/res/Resources$NotFoundException;
    :cond_1d
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 1148
    .restart local v12       #plusOne:I
    :cond_1e
    const-string v18, "VolumePanel"

    const-string v19, "SeekBar with htc defalut assert"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    sget-object v18, Lcom/htc/view/VolumePanel$SeekBarStyle;->SeekBar_HTC:Lcom/htc/view/VolumePanel$SeekBarStyle;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mSeekBarStyle:Lcom/htc/view/VolumePanel$SeekBarStyle;

    goto/16 :goto_4

    .line 1160
    :cond_1f
    const-string v18, "VolumePanel"

    const-string v19, "Seek bar HTC Thumb load fail"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1163
    :cond_20
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_1b

    .line 1164
    const-string v18, "VolumePanel"

    const-string v19, "use HTCSeekbar default drawable"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1169
    .end local v4           #dwThum:Landroid/graphics/drawable/Drawable;
    .end local v12           #plusOne:I
    .end local v14           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    .end local v16           #streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    .end local v17           #streamType:I
    :cond_21
    return-void
.end method

.method private expand()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 1333
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1334
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1335
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1337
    :cond_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1338
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1339
    return-void
.end method

.method private fnInitSeeekBar(Landroid/widget/SeekBar;)V
    .locals 6
    .parameter "seekbar"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2483
    const/4 v0, 0x1

    .line 2484
    .local v0, DISPLAY_MODE_BLACK:I
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mHtcSeekBar_setDisplayMode:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 2485
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mHtcSeekBar_setDisplayMode:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2486
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 2489
    .local v2, mParamObjs1:[Ljava/lang/Object;
    :try_start_0
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mHtcSeekBar_setDisplayMode:Ljava/lang/reflect/Method;

    invoke-virtual {v3, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2490
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Init HtcSeekbar:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2502
    .end local v2           #mParamObjs1:[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 2491
    .restart local v2       #mParamObjs1:[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 2493
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 2494
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 2496
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 2497
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 2499
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private fnPreinitRefec()V
    .locals 4

    .prologue
    .line 2463
    :try_start_0
    const-string v2, "com.htc.widget.HtcSeekBar"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/view/VolumePanel;->mClsHtcSeekBar:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2469
    :goto_0
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 2470
    .local v1, parms:[Ljava/lang/Class;
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mClsHtcSeekBar:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 2472
    :try_start_1
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mClsHtcSeekBar:Ljava/lang/Class;

    const-string v3, "setDisplayMode"

    check-cast v1, [Ljava/lang/Class;

    .end local v1           #parms:[Ljava/lang/Class;
    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/view/VolumePanel;->mHtcSeekBar_setDisplayMode:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2479
    :cond_0
    :goto_1
    return-void

    .line 2464
    :catch_0
    move-exception v0

    .line 2466
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2474
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 2476
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 2236
    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 2237
    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 2238
    return-void
.end method

.method private getGenerator(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1929
    monitor-enter p0

    .line 1930
    :try_start_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v0, v0, p1

    monitor-exit p0

    return-object v0

    .line 1932
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getHtcSenseRes(Ljava/lang/String;I)I
    .locals 5
    .parameter "htcResName"
    .parameter "defResId"

    .prologue
    .line 963
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 974
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 965
    .restart local p2
    :cond_1
    :try_start_0
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_2

    .line 966
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>getHtcSenseRes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_2
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    const-string v4, "com.htc.framework"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 968
    .local v1, resId:I
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_3

    .line 969
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<getHtcSenseRes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    :cond_3
    if-eqz v1, :cond_0

    move p2, v1

    goto :goto_0

    .line 972
    .end local v1           #resId:I
    :catch_0
    move-exception v0

    .line 973
    .local v0, npeException:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private getOrCreateSoundPool(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1872
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 1877
    :goto_0
    return-object v0

    .line 1873
    :cond_0
    monitor-enter p0

    .line 1874
    :try_start_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 1875
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->ceateToneGenerator(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 1879
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1877
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v0, v0, p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .parameter "streamType"

    .prologue
    .line 1856
    monitor-enter p0

    .line 1857
    :try_start_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1859
    :try_start_1
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1867
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    return-object v1

    .line 1860
    :catch_0
    move-exception v0

    .line 1861
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 1862
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1868
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getSkinDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "drawableName"
    .parameter "drawableID"

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 493
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;

    if-nez v2, :cond_1

    .line 495
    :cond_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 503
    :goto_0
    return-object v0

    .line 498
    :cond_1
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v1

    .line 501
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "VolumePanel"

    const-string v3, "progress_horizontal or seek_thumb resource not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSkinPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 469
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 471
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 472
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v3, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-object v3

    .line 473
    :catch_0
    move-exception v2

    .line 474
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 476
    const-string v3, ""

    goto :goto_0
.end method

.method private getStreamMaxVolume(I)I
    .locals 4
    .parameter "streamType"

    .prologue
    .line 928
    const/4 v0, 0x0

    .line 929
    .local v0, max:I
    const/16 v1, -0x64

    if-ne p1, v1, :cond_1

    .line 930
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v0

    .line 936
    :goto_0
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 937
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStreamMaxVolume ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_0
    return v0

    .line 931
    :cond_1
    const/16 v1, -0xc8

    if-ne p1, v1, :cond_2

    .line 932
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->getRemoteStreamMaxVolume()I

    move-result v0

    goto :goto_0

    .line 934
    :cond_2
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 943
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v0

    .line 948
    :goto_0
    return v0

    .line 945
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    goto :goto_0

    .line 948
    :cond_1
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getVolumeProgressDrawable(Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "seekBar"

    .prologue
    .line 1173
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 1174
    .local v1, layer:Landroid/graphics/drawable/LayerDrawable;
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "common_progress_empty"

    const-string v7, "drawable"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1175
    .local v3, progress_empty:I
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "common_progress_full"

    const-string v7, "drawable"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1178
    .local v4, progress_full:I
    const-string v5, "common_progress_empty"

    invoke-direct {p0, v5, v3}, Lcom/htc/view/VolumePanel;->getSkinDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1179
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    const-string v5, "common_progress_full"

    invoke-direct {p0, v5, v4}, Lcom/htc/view/VolumePanel;->getSkinDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-direct {v2, v5, v6, v7}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 1180
    .local v2, progress:Landroid/graphics/drawable/ClipDrawable;
    const/high16 v5, 0x102

    invoke-virtual {v1, v5, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 1181
    const v5, 0x102000d

    invoke-virtual {v1, v5, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 1183
    return-object v1
.end method

.method private getVolumeThumb()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 1188
    const/4 v1, 0x0

    .line 1189
    .local v1, progress_button:I
    sget-boolean v3, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    if-eqz v3, :cond_0

    const-string v2, "common_progress_button"

    .line 1190
    .local v2, strThumbDrawableName:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "com.htc"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1192
    :try_start_0
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1195
    :goto_1
    return-object v3

    .line 1189
    .end local v2           #strThumbDrawableName:Ljava/lang/String;
    :cond_0
    const-string v2, "common_music_progress_button"

    goto :goto_0

    .line 1193
    .restart local v2       #strThumbDrawableName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1194
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "assets not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private initSense40Panelayout(Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .locals 13
    .parameter "dm"

    .prologue
    const/4 v12, 0x0

    .line 715
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 718
    .local v4, res:Landroid/content/res/Resources;
    :try_start_0
    const-string v7, "margin_l"

    const-string v8, "dimen"

    const-string v9, "com.htc"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 719
    const-string v7, "margin_m"

    const-string v8, "dimen"

    const-string v9, "com.htc"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    .line 720
    const-string v7, "margin_s"

    const-string v8, "dimen"

    const-string v9, "com.htc"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    .line 721
    const-string v7, "margin_xs"

    const-string v8, "dimen"

    const-string v9, "com.htc"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :goto_0
    sget-boolean v7, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_0

    .line 738
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "m1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,m2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " m3="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " m4="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_0
    const/4 v6, 0x0

    .line 741
    .local v6, screenWidth:I
    const/4 v5, 0x0

    .line 742
    .local v5, screenHeight:I
    const/4 v0, 0x0

    .line 743
    .local v0, FootBarHeight:I
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 744
    const/16 v0, 0x30

    .line 747
    :cond_1
    iget v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v7, v8, :cond_6

    iget v7, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int v6, v7, v0

    .line 749
    :goto_1
    iget v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v7, v8, :cond_7

    iget v5, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 752
    :goto_2
    sget-boolean v7, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_2

    .line 753
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dm.widthPixels="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,dm.heightPixels="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "screenWidth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,screenHeight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_2
    iput v6, p0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    .line 757
    const/4 v2, 0x0

    .line 758
    .local v2, panelWidth:I
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 759
    int-to-double v7, v6

    const-wide v9, 0x3fb1eb851eb851ecL

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    .line 760
    int-to-double v7, v6

    const-wide v9, 0x3fe3333333333333L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    sub-int v2, v5, v7

    .line 767
    :goto_3
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 768
    .local v3, param:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 769
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 772
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 773
    const/4 v7, -0x2

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 775
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    sget-boolean v7, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_3

    .line 778
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changed panelWidth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIconWidths="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_3
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7, v12, v12, v12, v12}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 782
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "popup_full_bright"

    const-string v10, "drawable"

    const-string v11, "com.htc"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 785
    sget-boolean v7, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_BG_DEBUG:Z

    if-nez v7, :cond_9

    .line 788
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "popup_full_bright"

    const-string v10, "drawable"

    const-string v11, "com.htc"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 789
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "padding left="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "padding top="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "padding right="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "padding bottom="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :goto_4
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 802
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget v8, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iget v10, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    iget v11, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iget v12, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    sub-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 808
    :goto_5
    :try_start_1
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "common_div"

    const-string v10, "drawable"

    const-string v11, "com.htc"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 812
    :goto_6
    sget-boolean v7, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v7, :cond_4

    .line 815
    :cond_4
    iput v6, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 816
    iput v5, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 817
    return-object p1

    .line 722
    .end local v0           #FootBarHeight:I
    .end local v2           #panelWidth:I
    .end local v3           #param:Landroid/view/ViewGroup$LayoutParams;
    .end local v5           #screenHeight:I
    .end local v6           #screenWidth:I
    :catch_0
    move-exception v1

    .line 724
    .local v1, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v7, "VolumePanel"

    const-string v8, "##################getDimension(res.getIdentifier(\"margin_l\") fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 726
    iput v12, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 727
    iput v12, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    .line 728
    iput v12, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    .line 729
    iput v12, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    goto/16 :goto_0

    .line 731
    :cond_5
    const/16 v7, 0x16

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 732
    const/16 v7, 0x10

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    .line 733
    const/16 v7, 0xa

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    .line 734
    const/16 v7, 0x9

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    goto/16 :goto_0

    .line 747
    .end local v1           #ex:Landroid/content/res/Resources$NotFoundException;
    .restart local v0       #FootBarHeight:I
    .restart local v5       #screenHeight:I
    .restart local v6       #screenWidth:I
    :cond_6
    iget v6, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto/16 :goto_1

    .line 749
    :cond_7
    iget v7, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int v5, v7, v0

    goto/16 :goto_2

    .line 762
    .restart local v2       #panelWidth:I
    :cond_8
    div-int/lit8 v7, v6, 0x6

    iput v7, p0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    .line 763
    iget v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v2, v6, v7

    goto/16 :goto_3

    .line 795
    .restart local v3       #param:Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 796
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7, v12, v12, v12, v12}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_4

    .line 804
    :cond_a
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget v8, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iget v10, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    sub-int/2addr v9, v10

    invoke-virtual {v7, v12, v8, v12, v9}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_5

    .line 809
    :catch_1
    move-exception v1

    .line 810
    .restart local v1       #ex:Landroid/content/res/Resources$NotFoundException;
    const-string v7, "VolumePanel"

    const-string v8, "mDivider:common_div not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 918
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    .line 923
    :goto_0
    return v0

    .line 920
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_2

    .line 921
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 923
    :cond_2
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method private listenToEnterHome()V
    .locals 3

    .prologue
    .line 870
    const-string v1, "VolumePanel"

    const-string v2, "listenToEnterHome"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 872
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v1, Lcom/htc/view/VolumePanel;->INTENT_ENTER_HOME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 873
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mEnterHomeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 874
    return-void
.end method

.method private listenToMusicMuteRequest()V
    .locals 5

    .prologue
    .line 890
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 891
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.view.music_mute"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 892
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/htc/view/VolumePanel$6;

    invoke-direct {v2, p0}, Lcom/htc/view/VolumePanel$6;-><init>(Lcom/htc/view/VolumePanel;)V

    const-string v3, "com.htc.view.intent.category.MUTE_MUSIC"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 915
    return-void
.end method

.method private listenToRingerMode()V
    .locals 3

    .prologue
    .line 821
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 822
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 823
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 824
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 825
    const-string v1, "com.htc.view.intent.action.debug_configuagechange"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 827
    :cond_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/htc/view/VolumePanel$4;

    invoke-direct {v2, p0}, Lcom/htc/view/VolumePanel$4;-><init>(Lcom/htc/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 847
    return-void
.end method

.method private postUpdatePanelRotation()V
    .locals 1

    .prologue
    const/16 v0, 0xb

    .line 2028
    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 2029
    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 2030
    return-void
.end method

.method private removeListenToEnterHome()V
    .locals 4

    .prologue
    .line 877
    const-string v0, "VolumePanel"

    const-string v1, "removeListenToEnterHome"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :try_start_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :try_start_1
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    .line 881
    const-string v0, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRotate, needRotate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/view/VolumePanel;->isRotate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/view/VolumePanel;->needRotate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_0
    iget-boolean v0, p0, Lcom/htc/view/VolumePanel;->isRotate:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/view/VolumePanel;->needRotate:Z

    if-nez v0, :cond_1

    .line 883
    const-string v0, "VolumePanel"

    const-string v2, "removeListenToEnterHome- unregisterReceiver"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mEnterHomeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 886
    :cond_1
    monitor-exit v1

    .line 888
    :goto_0
    return-void

    .line 886
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 887
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private reorderSliders(I)V
    .locals 4
    .parameter "activeStreamType"

    .prologue
    .line 1201
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 1202
    const-string v1, "VolumePanel"

    const-string v2, "reorderSliders"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1204
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 1230
    :goto_0
    return-void

    .line 1206
    :cond_1
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1207
    .local v0, active:Lcom/htc/view/VolumePanel$StreamControl;
    if-nez v0, :cond_2

    .line 1209
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown stream type! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #active:Lcom/htc/view/VolumePanel$StreamControl;
    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1211
    .restart local v0       #active:Lcom/htc/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_2

    .line 1212
    iput p1, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    .line 1213
    iget-object v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1214
    const/4 p1, -0x2

    .line 1218
    :cond_2
    if-nez v0, :cond_3

    .line 1219
    const-string v1, "VolumePanel"

    const-string v2, "fail to get dummpy stream type! - "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 1229
    :goto_1
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->addOtherVolumes()V

    goto :goto_0

    .line 1222
    :cond_3
    iget-object v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1223
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1224
    iput p1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 1225
    iget-object v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1226
    invoke-direct {p0, v0}, Lcom/htc/view/VolumePanel;->updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V

    goto :goto_1
.end method

.method private resetTimeout()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 2226
    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 2227
    iget v1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/16 v0, 0x7d0

    .line 2229
    .local v0, dlgTimeoutDelay:I
    :goto_0
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 2230
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dlgTimeoutDelay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2233
    return-void

    .line 2227
    .end local v0           #dlgTimeoutDelay:I
    :cond_1
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method private setMusicIcon(II)V
    .locals 5
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    .line 1943
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1944
    :try_start_1
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 1945
    monitor-exit p0

    .line 1960
    :cond_0
    :goto_0
    return-void

    .line 1946
    :cond_1
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1947
    .local v2, sc:Lcom/htc/view/VolumePanel$StreamControl;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1949
    if-eqz v2, :cond_0

    .line 1950
    :try_start_2
    iget v3, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 1951
    .local v0, index:I
    iput p1, v2, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    .line 1952
    iput p2, v2, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1953
    iget-object v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v3, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->isMuted(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget v3, v2, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1957
    .end local v0           #index:I
    .end local v2           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :catch_0
    move-exception v1

    .line 1958
    .local v1, npeException:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1947
    .end local v1           #npeException:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 1953
    .restart local v0       #index:I
    .restart local v2       #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_3
    iget v3, v2, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method private setMusicMute(Z)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 2180
    if-eqz p1, :cond_0

    .line 2182
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 2193
    :goto_0
    return-void

    .line 2186
    :cond_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 2187
    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 2188
    .local v0, volume:I
    if-nez v0, :cond_1

    .line 2189
    const/4 v0, 0x1

    .line 2191
    :cond_1
    invoke-direct {p0, v3, v0, v2}, Lcom/htc/view/VolumePanel;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private setSkinRes()V
    .locals 4

    .prologue
    .line 480
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No skin package matches with the given name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSliencIcon(I)V
    .locals 5
    .parameter "resId"

    .prologue
    .line 1965
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1966
    :try_start_1
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 1967
    monitor-exit p0

    .line 1980
    :cond_0
    :goto_0
    return-void

    .line 1968
    :cond_1
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1969
    .local v2, sc:Lcom/htc/view/VolumePanel$StreamControl;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1971
    if-eqz v2, :cond_0

    .line 1972
    :try_start_2
    iget v3, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 1973
    .local v0, index:I
    iget v3, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->isMuted(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_0

    .line 1974
    :cond_2
    iget-object v3, v2, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1977
    .end local v0           #index:I
    .end local v2           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :catch_0
    move-exception v1

    .line 1978
    .local v1, npeException:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1969
    .end local v1           #npeException:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method private setStreamVolume(III)V
    .locals 1
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 953
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    .line 960
    :goto_0
    return-void

    .line 955
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 956
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0, p2}, Landroid/media/AudioService;->setRemoteStreamVolume(I)V

    goto :goto_0

    .line 958
    :cond_1
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private updateCustomIcon(IILandroid/widget/ImageView;)V
    .locals 4
    .parameter "nIdex"
    .parameter "nMaxIndex"
    .parameter "iconView"

    .prologue
    .line 1699
    if-lez p1, :cond_1

    .line 1700
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mCustomizeIconRes:[I

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mCustomizeIconRes:[I

    array-length v3, v3

    mul-int/2addr v2, v3

    div-int/2addr v2, p2

    aget v0, v1, v2

    .line 1701
    .local v0, iconId:I
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 1702
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sc.icon.setImageResource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    :cond_0
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1706
    .end local v0           #iconId:I
    :cond_1
    return-void
.end method

.method private updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V
    .locals 8
    .parameter "sc"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 1250
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    .line 1251
    const-string v3, "VolumePanel"

    const-string v4, "updateSlider"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_0
    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v1

    .line 1253
    .local v1, nVol:I
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1254
    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 1256
    .local v0, muted:Z
    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-eq v3, v6, :cond_2

    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v3, v7, :cond_7

    :cond_1
    iget-boolean v3, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-nez v3, :cond_7

    :cond_2
    if-eqz v0, :cond_7

    .line 1258
    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v3, v6, :cond_6

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 1260
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v4, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1268
    :goto_0
    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 1269
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget v4, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v4}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1297
    :cond_3
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mCustomizeIconRes:[I

    if-nez v3, :cond_9

    .line 1298
    iget-object v4, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1305
    :goto_2
    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v3, v6, :cond_5

    .line 1306
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_4

    .line 1307
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSlider muted = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", RingerMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v5}, Landroid/media/AudioService;->getRingerMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :cond_4
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 1312
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v4, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1324
    :cond_5
    :goto_3
    return-void

    .line 1263
    :cond_6
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 1266
    :cond_7
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 1298
    :cond_8
    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_1

    .line 1300
    :cond_9
    if-nez v0, :cond_a

    .line 1301
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    iget-object v4, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v3, v4}, Lcom/htc/view/VolumePanel;->updateCustomIcon(IILandroid/widget/ImageView;)V

    goto :goto_2

    .line 1303
    :cond_a
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v4, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1315
    :cond_b
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v3}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    .line 1316
    .local v2, ringerMode:I
    if-ne v2, v7, :cond_5

    .line 1317
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v4, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method private updateStates()V
    .locals 4

    .prologue
    .line 1351
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1352
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1353
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1354
    .local v2, sc:Lcom/htc/view/VolumePanel$StreamControl;
    invoke-direct {p0, v2}, Lcom/htc/view/VolumePanel;->updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V

    .line 1352
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1356
    .end local v2           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2097
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2177
    :cond_0
    :goto_0
    return-void

    .line 2100
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 2105
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/view/VolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 2110
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 2115
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 2120
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 2125
    :pswitch_5
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_1

    .line 2126
    const-string v0, "VolumePanel"

    const-string v1, ">>MSG_VIBRATE onVibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    :cond_1
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onVibrate()V

    .line 2128
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    .line 2129
    const-string v0, "VolumePanel"

    const-string v1, "<<MSG_VIBRATE onVibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2134
    :pswitch_6
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2135
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2136
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    goto :goto_0

    .line 2141
    :pswitch_7
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2142
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->updateStates()V

    goto :goto_0

    .line 2148
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/view/VolumePanel;->onRemoteVolumeChanged(II)V

    goto :goto_0

    .line 2153
    :pswitch_9
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto :goto_0

    .line 2157
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/view/VolumePanel;->onSliderVisibilityChanged(II)V

    goto :goto_0

    .line 2161
    :pswitch_b
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->updatePanelRotation()V

    goto :goto_0

    .line 2165
    :pswitch_c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/view/VolumePanel;->setMusicMute(Z)V

    goto :goto_0

    .line 2169
    :pswitch_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/view/VolumePanel;->setMusicMute(Z)V

    goto/16 :goto_0

    .line 2173
    :pswitch_e
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->removeListenToEnterHome()V

    goto/16 :goto_0

    .line 2097
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method protected internalPlaySound(IIZ)V
    .locals 4
    .parameter "streamType"
    .parameter "nInsex"
    .parameter "bCreatePlayer"

    .prologue
    .line 1736
    monitor-enter p0

    .line 1737
    const/4 v1, 0x0

    .line 1738
    .local v1, soundPoolHelp:Lcom/htc/view/VolumePanel$SoundPoolHelp;
    if-eqz p3, :cond_0

    .line 1739
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getOrCreateSoundPool(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;

    move-result-object v1

    .line 1742
    :goto_0
    if-nez v1, :cond_1

    .line 1743
    const-string v2, "VolumePanel"

    const-string v3, "soundPoolHelp released abort retry"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    monitor-exit p0

    .line 1748
    :goto_1
    return-void

    .line 1741
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getGenerator(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;

    move-result-object v1

    goto :goto_0

    .line 1747
    :cond_1
    invoke-virtual {v1, p2}, Lcom/htc/view/VolumePanel$SoundPoolHelp;->fnplay(I)I

    move-result v0

    .line 1748
    .local v0, nRet:I
    monitor-exit p0

    goto :goto_1

    .line 1752
    .end local v0           #nRet:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2351
    iget-object v6, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    if-ne p1, v6, :cond_2

    .line 2352
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->expand()V

    .line 2455
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    .line 2456
    :cond_1
    return-void

    .line 2353
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/htc/view/VolumePanel$StreamControl;

    if-eqz v6, :cond_0

    .line 2354
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    .line 2357
    .local v2, sc:Lcom/htc/view/VolumePanel$StreamControl;
    iget v6, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-eq v6, v10, :cond_1

    .line 2363
    iget v6, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v6, v4, :cond_b

    .line 2365
    sget-boolean v5, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_3

    .line 2366
    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick sc.seekbarView.getProgress() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getProgress()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    :cond_3
    iget-object v5, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    if-nez v5, :cond_7

    .line 2369
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v6, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v5, v6, v8}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 2370
    iget v5, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v5}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v3

    .line 2371
    .local v3, volume:I
    if-nez v3, :cond_4

    const/4 v3, 0x1

    .line 2372
    :cond_4
    iget-object v5, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2373
    iget v5, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v5, v3, v8}, Lcom/htc/view/VolumePanel;->setStreamVolume(III)V

    .line 2380
    .end local v3           #volume:I
    :goto_1
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mCustomizeIconRes:[I

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/htc/view/VolumePanel;->mCustomizeIconSilenceRes:I

    if-gtz v5, :cond_9

    .line 2381
    :cond_5
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    and-int/lit16 v4, v4, 0x380

    if-eqz v4, :cond_8

    .line 2385
    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v4, v4, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v5, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    invoke-direct {p0, v4, v5}, Lcom/htc/view/VolumePanel;->setMusicIcon(II)V

    .line 2453
    :cond_6
    :goto_2
    iget-boolean v4, p0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->expand()V

    goto/16 :goto_0

    .line 2377
    :cond_7
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v6, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v5, v6, v9}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 2378
    iget-object v5, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 2388
    :cond_8
    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v4, v4, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v5, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    invoke-direct {p0, v4, v5}, Lcom/htc/view/VolumePanel;->setMusicIcon(II)V

    goto :goto_2

    .line 2392
    :cond_9
    iget v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v4}, Lcom/htc/view/VolumePanel;->isMuted(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2393
    iget v4, p0, Lcom/htc/view/VolumePanel;->mCustomizeIconSilenceRes:I

    invoke-direct {p0, v4}, Lcom/htc/view/VolumePanel;->setSliencIcon(I)V

    goto :goto_2

    .line 2395
    :cond_a
    iget-object v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    iget-object v5, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    iget-object v6, v2, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/view/VolumePanel;->updateCustomIcon(IILandroid/widget/ImageView;)V

    goto :goto_2

    .line 2404
    :cond_b
    iget-object v6, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 2405
    .local v1, ringerMode:I
    const/4 v0, 0x2

    .line 2406
    .local v0, newRingMode:I
    packed-switch v1, :pswitch_data_0

    .line 2421
    const-string v4, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknow sound profile:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    const/4 v0, 0x2

    .line 2426
    :goto_3
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2427
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v5, :cond_d

    iget v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v4}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v4

    if-nez v4, :cond_d

    .line 2429
    iget-object v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4, v9}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2430
    iget v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v4, v9, v8}, Lcom/htc/view/VolumePanel;->setStreamVolume(III)V

    goto/16 :goto_2

    .line 2408
    :pswitch_0
    const/4 v0, 0x1

    .line 2409
    goto :goto_3

    .line 2411
    :pswitch_1
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xd8

    if-ne v6, v7, :cond_c

    move v0, v4

    .line 2413
    :goto_4
    goto :goto_3

    :cond_c
    move v0, v5

    .line 2411
    goto :goto_4

    .line 2415
    :pswitch_2
    const/4 v0, 0x2

    .line 2416
    goto :goto_3

    .line 2418
    :pswitch_3
    const/4 v0, 0x0

    .line 2419
    goto :goto_3

    .line 2432
    :cond_d
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v9, :cond_6

    .line 2434
    invoke-virtual {p0, v10}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 2406
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 2017
    monitor-enter p0

    .line 2018
    :try_start_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 2019
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 2020
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/view/VolumePanel$SoundPoolHelp;->release()V

    .line 2022
    :cond_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 2018
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2024
    :cond_1
    monitor-exit p0

    .line 2025
    return-void

    .line 2024
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onMuteChanged(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 1510
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMuteChanged(streamType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flags: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :cond_0
    const/4 v1, 0x0

    .line 1513
    .local v1, sc:Lcom/htc/view/VolumePanel$StreamControl;
    monitor-enter p0

    .line 1514
    :try_start_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 1515
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->createSliders()V

    .line 1517
    :cond_1
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    move-object v1, v0

    .line 1518
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1519
    if-eqz v1, :cond_2

    .line 1520
    iget-object v3, v1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v2, v1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/htc/view/VolumePanel;->isMuted(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v1, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1523
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/htc/view/VolumePanel;->onVolumeChanged(II)V

    .line 1524
    return-void

    .line 1518
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1520
    :cond_3
    iget v2, v1, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method protected onPlaySound(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x3

    .line 1710
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 1711
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlaySound(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1715
    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1717
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onStopSounds()V

    .line 1721
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 1722
    .local v0, index:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/view/VolumePanel;->mRetryTimes:I

    .line 1723
    if-lez v0, :cond_2

    .line 1727
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/htc/view/VolumePanel;->internalPlaySound(IIZ)V

    .line 1729
    :cond_2
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_3

    .line 1730
    const-string v1, "VolumePanel"

    const-string v2, "--onPlaySound(streamType: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    :cond_3
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 2242
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    .line 2244
    const-string v3, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressChanged progress = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " sStreamType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    iget v2, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    const-string v3, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressChanged streamVolume = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    iget v2, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 2249
    .local v1, tag:Ljava/lang/Object;
    if-eqz p3, :cond_3

    instance-of v2, v1, Lcom/htc/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 2250
    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 2252
    .local v0, sc:Lcom/htc/view/VolumePanel$StreamControl;
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_3

    .line 2255
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 2257
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 2259
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3, v6}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 2264
    :cond_1
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, p2, v3}, Lcom/htc/view/VolumePanel;->setStreamVolume(III)V

    .line 2265
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-eq v2, v5, :cond_2

    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-nez v2, :cond_3

    .line 2269
    :cond_2
    invoke-virtual {p0, v5}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 2270
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {p0, v5, v2, v6}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2275
    .end local v0           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_3
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    .line 2276
    const-string v2, "VolumePanel"

    const-string v3, "--onProgressChanged progress  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    return-void
.end method

.method protected onRemoteVolumeChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/16 v3, -0xc8

    .line 1786
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteVolumeChanged(stream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    :cond_0
    monitor-enter p0

    .line 1788
    :try_start_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 1789
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->createSliders()V

    .line 1791
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1792
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1793
    :cond_2
    monitor-enter p0

    .line 1794
    :try_start_1
    iget v0, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_3

    .line 1795
    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Lcom/htc/view/VolumePanel;->reorderSliders(I)V

    .line 1797
    :cond_3
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2}, Lcom/htc/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 1798
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1803
    :cond_4
    :goto_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_5

    .line 1804
    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1805
    invoke-virtual {p0, v4, p1, p2}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1808
    :cond_5
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_6

    .line 1809
    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1810
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1811
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onStopSounds()V

    .line 1814
    :cond_6
    invoke-virtual {p0, v5}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1815
    invoke-virtual {p0, v5}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x927c0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1817
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    .line 1818
    return-void

    .line 1791
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1798
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1800
    :cond_7
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_4

    const-string v0, "VolumePanel"

    const-string v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    .line 1821
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    :cond_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 1825
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/htc/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 1827
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 14
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v13, 0x2

    const/16 v12, -0xc8

    const/4 v11, 0x3

    .line 1531
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v3

    .line 1534
    .local v3, index:I
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v8, p1}, Landroid/media/AudioService;->isStreamMute(I)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eq p1, v13, :cond_1

    const/4 v8, 0x5

    if-eq p1, v8, :cond_0

    if-ne p1, v11, :cond_2

    :cond_0
    iget-boolean v8, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-nez v8, :cond_2

    .line 1535
    :cond_1
    const/4 v3, 0x0

    .line 1540
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/view/VolumePanel;->mRingIsSilent:Z

    .line 1542
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_3

    .line 1543
    const-string v8, "VolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onShowVolumeChanged(streamType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", flags: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "), index: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v5

    .line 1550
    .local v5, max:I
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_4

    .line 1551
    const-string v8, "VolumePanel"

    const-string v9, "++onShowVolumeChanged update by streamType"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :cond_4
    if-eq p1, v13, :cond_5

    if-eq p1, v11, :cond_5

    iget-boolean v8, p0, Lcom/htc/view/VolumePanel;->isRotate:Z

    if-eqz v8, :cond_5

    .line 1554
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->resetPanelRotation()V

    .line 1556
    :cond_5
    sparse-switch p1, :sswitch_data_0

    .line 1625
    :cond_6
    :goto_0
    :sswitch_0
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_7

    .line 1626
    const-string v8, "VolumePanel"

    const-string v9, "++onShowVolumeChanged update progress"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :cond_7
    const/4 v6, 0x0

    .line 1629
    .local v6, sc:Lcom/htc/view/VolumePanel$StreamControl;
    monitor-enter p0

    .line 1630
    :try_start_0
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v8, :cond_c

    .line 1631
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1697
    :cond_8
    :goto_1
    return-void

    .line 1559
    .end local v6           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->updatePanelRotation()V

    goto :goto_0

    .line 1565
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->updatePanelRotation()V

    .line 1567
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mCustomizeIconRes:[I

    if-eqz v8, :cond_9

    iget v8, p0, Lcom/htc/view/VolumePanel;->mCustomizeIconSilenceRes:I

    if-gtz v8, :cond_b

    .line 1568
    :cond_9
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v11}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v8

    and-int/lit16 v8, v8, 0x380

    if-eqz v8, :cond_a

    .line 1572
    sget-object v8, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v8, v8, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    sget-object v9, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v9, v9, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    invoke-direct {p0, v8, v9}, Lcom/htc/view/VolumePanel;->setMusicIcon(II)V

    goto :goto_0

    .line 1575
    :cond_a
    sget-object v8, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v8, v8, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    sget-object v9, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v9, v9, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    invoke-direct {p0, v8, v9}, Lcom/htc/view/VolumePanel;->setMusicIcon(II)V

    goto :goto_0

    .line 1579
    :cond_b
    iget v8, p0, Lcom/htc/view/VolumePanel;->mCustomizeIconSilenceRes:I

    invoke-direct {p0, v8}, Lcom/htc/view/VolumePanel;->setSliencIcon(I)V

    goto :goto_0

    .line 1590
    :sswitch_3
    add-int/lit8 v3, v3, 0x1

    .line 1591
    add-int/lit8 v5, v5, 0x1

    .line 1592
    goto :goto_0

    .line 1614
    :sswitch_4
    add-int/lit8 v3, v3, 0x1

    .line 1615
    add-int/lit8 v5, v5, 0x1

    .line 1616
    goto :goto_0

    .line 1620
    :sswitch_5
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_6

    const-string v8, "VolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showing remote volume "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " over "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1632
    .restart local v6       #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_c
    :try_start_1
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    move-object v6, v0

    .line 1633
    if-nez v6, :cond_d

    .line 1635
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    iget v9, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1636
    .local v1, active:Lcom/htc/view/VolumePanel$StreamControl;
    if-eqz v1, :cond_d

    iget v8, v1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v8, p1, :cond_d

    .line 1637
    move-object v6, v1

    .line 1640
    .end local v1           #active:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_d
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1641
    if-eqz v6, :cond_12

    .line 1642
    iget-object v8, v6, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    .line 1643
    .local v2, curMax:I
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_e

    .line 1644
    const-string v8, "VolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Seekbar current max:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_e
    if-eq v2, v5, :cond_10

    .line 1647
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_f

    .line 1648
    const-string v8, "VolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set process max :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_f
    iget-object v8, v6, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v8, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1652
    :cond_10
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_11

    .line 1653
    const-string v8, "VolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set process index :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    :cond_11
    iget-object v8, v6, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v8, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1657
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mCustomizeIconRes:[I

    if-eqz v8, :cond_12

    .line 1658
    iget-object v8, v6, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v5, v8}, Lcom/htc/view/VolumePanel;->updateCustomIcon(IILandroid/widget/ImageView;)V

    .line 1662
    .end local v2           #curMax:I
    :cond_12
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_13

    .line 1663
    const-string v8, "VolumePanel"

    const-string v9, "--onShowVolumeChanged update progress"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_13
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    .line 1666
    .local v4, isShowing:Z
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_14

    .line 1667
    const-string v8, "VolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mDialog, isShowing:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    :cond_14
    if-nez v4, :cond_17

    .line 1670
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_15

    .line 1671
    const-string v8, "VolumePanel"

    const-string v9, "++onShowVolumeChanged dialog show"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :cond_15
    if-ne p1, v12, :cond_19

    const/4 v7, -0x1

    .line 1675
    .local v7, stream:I
    :goto_2
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v7}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 1676
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1678
    iget-boolean v8, p0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v8, :cond_16

    .line 1679
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->collapse()V

    .line 1681
    :cond_16
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1682
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_17

    .line 1683
    const-string v8, "VolumePanel"

    const-string v9, "--onShowVolumeChanged dialog show"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    .end local v7           #stream:I
    :cond_17
    if-eq p1, v12, :cond_18

    and-int/lit8 v8, p2, 0x10

    if-eqz v8, :cond_18

    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v8, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v8

    if-eqz v8, :cond_18

    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_18

    .line 1692
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0x12c

    invoke-virtual {p0, v8, v9, v10}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1694
    :cond_18
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_8

    .line 1695
    const-string v8, "VolumePanel"

    const-string v9, "--onShowVolumeChanged"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1640
    .end local v4           #isShowing:Z
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .restart local v4       #isShowing:Z
    :cond_19
    move v7, p1

    .line 1673
    goto :goto_2

    .line 1556
    nop

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_5
        0x0 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_4
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "visible"

    .prologue
    const/4 v1, 0x1

    .line 1838
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    :cond_0
    if-ne p2, v1, :cond_2

    .line 1840
    .local v1, isVisible:Z
    :goto_0
    sget-object v3, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 1841
    sget-object v3, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 1842
    .local v2, streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    iget v3, v2, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    .line 1843
    iput-boolean v1, v2, Lcom/htc/view/VolumePanel$StreamResources;->show:Z

    .line 1844
    if-nez v1, :cond_1

    iget v3, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    .line 1845
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1850
    .end local v2           #streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    :cond_1
    monitor-exit p0

    return-void

    .line 1839
    .end local v0           #i:I
    .end local v1           #isVisible:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1840
    .restart local v0       #i:I
    .restart local v1       #isVisible:Z
    .restart local v2       #streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1838
    .end local v0           #i:I
    .end local v1           #isVisible:Z
    .end local v2           #streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 2327
    return-void
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 1758
    monitor-enter p0

    .line 1759
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1760
    .local v1, numStreamTypes:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1761
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v2, v3, v0

    .line 1762
    .local v2, soundPoolHelp:Lcom/htc/view/VolumePanel$SoundPoolHelp;
    if-eqz v2, :cond_0

    .line 1763
    invoke-virtual {v2}, Lcom/htc/view/VolumePanel$SoundPoolHelp;->fnstop()V

    .line 1760
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1766
    .end local v2           #soundPoolHelp:Lcom/htc/view/VolumePanel$SoundPoolHelp;
    :cond_1
    monitor-exit p0

    .line 1767
    return-void

    .line 1766
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    const/16 v3, -0xc8

    .line 2330
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 2331
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Lcom/htc/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 2332
    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 2337
    .local v0, sc:Lcom/htc/view/VolumePanel$StreamControl;
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v3, :cond_1

    .line 2338
    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2348
    .end local v0           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_0
    :goto_0
    return-void

    .line 2341
    .restart local v0       #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_1
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-nez v2, :cond_0

    .line 2342
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-nez v2, :cond_0

    .line 2343
    iget-object v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1780
    :cond_0
    :goto_0
    return-void

    .line 1775
    :cond_1
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_2

    .line 1776
    const-string v0, "VolumePanel"

    const-string v1, ">>mVibrator.vibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :cond_2
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1778
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    .line 1779
    const-string v0, "VolumePanel"

    const-string v1, "<<mVibrator.vibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 11
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    .line 1442
    sget-boolean v5, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_0

    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onVolumeChanged(streamType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", flags: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_0
    monitor-enter p0

    .line 1444
    :try_start_0
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v5, :cond_1

    .line 1445
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->createSliders()V

    .line 1447
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1448
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_7

    .line 1449
    monitor-enter p0

    .line 1450
    :try_start_1
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v5, :cond_3

    .line 1451
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1506
    :cond_2
    :goto_0
    return-void

    .line 1447
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1453
    :cond_3
    const/4 v1, -0x1

    .line 1454
    .local v1, activeStreamTypeInternal:I
    :try_start_3
    iget v5, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_b

    .line 1455
    iget v1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 1464
    :cond_4
    :goto_1
    iget v5, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-eq v5, v8, :cond_5

    if-eq v1, p1, :cond_6

    .line 1466
    :cond_5
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->reorderSliders(I)V

    .line 1468
    :cond_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1469
    iget v5, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-eq v5, v8, :cond_c

    .line 1470
    invoke-virtual {p0, p1, p2}, Lcom/htc/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 1476
    .end local v1           #activeStreamTypeInternal:I
    :cond_7
    :goto_2
    and-int/lit8 v5, p2, 0x4

    if-eqz v5, :cond_9

    .line 1479
    const/4 v4, 0x0

    .line 1480
    .local v4, playSoundDelay:I
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    .line 1483
    .local v2, index:I
    sget v5, Lcom/htc/view/VolumePanel;->last_stream_type:I

    if-ne v5, p1, :cond_8

    sget v5, Lcom/htc/view/VolumePanel;->last_stream_index:I

    if-ne v5, v2, :cond_8

    .line 1485
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v3

    .line 1486
    .local v3, max:I
    if-ne v2, v3, :cond_8

    .line 1487
    const/16 v4, 0x96

    .line 1489
    .end local v3           #max:I
    :cond_8
    sput p1, Lcom/htc/view/VolumePanel;->last_stream_type:I

    .line 1490
    sput v2, Lcom/htc/view/VolumePanel;->last_stream_index:I

    .line 1491
    invoke-virtual {p0, v9}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1492
    invoke-virtual {p0, v9, p1, p2}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    int-to-long v6, v4

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1495
    .end local v2           #index:I
    .end local v4           #playSoundDelay:I
    :cond_9
    and-int/lit8 v5, p2, 0x8

    if-eqz v5, :cond_a

    .line 1496
    invoke-virtual {p0, v9}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1497
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1498
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onStopSounds()V

    .line 1501
    :cond_a
    invoke-virtual {p0, v10}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1502
    invoke-virtual {p0, v10}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/32 v6, 0x927c0

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1504
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    .line 1505
    sget-boolean v5, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_2

    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--onVolumeChanged(streamType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", flags: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1457
    .restart local v1       #activeStreamTypeInternal:I
    :cond_b
    :try_start_4
    iget v5, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-eq v5, v8, :cond_4

    .line 1458
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    iget v6, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1459
    .local v0, active:Lcom/htc/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_4

    .line 1460
    iget v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    goto/16 :goto_1

    .line 1468
    .end local v0           #active:Lcom/htc/view/VolumePanel$StreamControl;
    .end local v1           #activeStreamTypeInternal:I
    :catchall_1
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 1472
    .restart local v1       #activeStreamTypeInternal:I
    :cond_c
    const-string v5, "VolumePanel"

    const-string v6, "onVolumeChanged unknown mActiveStreamType"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 1412
    invoke-virtual {p0, v1}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1416
    :goto_0
    return-void

    .line 1415
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 1430
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/htc/view/VolumePanel;->postMuteChanged(II)V

    .line 1431
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 1419
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/htc/view/VolumePanel;->postVolumeChanged(II)V

    .line 1420
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 1423
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1427
    :goto_0
    return-void

    .line 1425
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1426
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 1396
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1398
    return-void

    .line 1396
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/16 v1, 0x8

    .line 1389
    invoke-virtual {p0, v1}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1393
    :goto_0
    return-void

    .line 1391
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1392
    invoke-virtual {p0, v1, p1, p2}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postVolumeChanged(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    .line 1360
    if-nez p2, :cond_1

    .line 1361
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") --drop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_0
    :goto_0
    return-void

    .line 1367
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1368
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_2

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")  still processing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_2
    iget v0, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/htc/view/VolumePanel;->mLastFlags:I

    if-eq v0, p2, :cond_0

    .line 1372
    :cond_3
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_4

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++postVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1383
    invoke-virtual {p0, v3, p1, p2}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1384
    iput p2, p0, Lcom/htc/view/VolumePanel;->mLastFlags:I

    .line 1385
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--postVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected resetPanelRotation()V
    .locals 5

    .prologue
    .line 2197
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    .line 2198
    const-string v2, "VolumePanel"

    const-string v3, "resetPanelRotation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    :cond_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    if-nez v2, :cond_1

    .line 2223
    :goto_0
    return-void

    .line 2202
    :cond_1
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    monitor-enter v3

    .line 2203
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/htc/view/VolumePanel;->isRotate:Z

    .line 2204
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/view/VolumePanel;->needRotate:Z

    .line 2205
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    if-nez v2, :cond_2

    .line 2206
    monitor-exit v3

    goto :goto_0

    .line 2221
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2207
    :cond_2
    :try_start_1
    sget v2, Lcom/htc/view/VolumePanel;->SCREEN_MODE_PORTRAIT:I

    iput v2, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    .line 2208
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    sget v4, Lcom/htc/view/VolumePanel;->SCREEN_MODE_PORTRAIT:I

    invoke-virtual {v2, v4}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 2209
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 2210
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2211
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2212
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2213
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2214
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2216
    sget-boolean v2, Lcom/htc/view/VolumePanel;->mCustomizeUI:Z

    if-eqz v2, :cond_3

    .line 2217
    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 2219
    :cond_3
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 2220
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->forceTimeout()V

    .line 2221
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public resetProgressBar(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 508
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    .line 509
    const-string v0, "VolumePanel"

    const-string v1, "resetProgressBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_0
    monitor-enter p0

    .line 511
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 512
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->forceTimeout()V

    .line 514
    return-void

    .line 512
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setVolumePanelOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    if-nez v0, :cond_1

    .line 2015
    :cond_0
    :goto_0
    return-void

    .line 1987
    :cond_1
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_2

    .line 1988
    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolumePanelOrientation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    :cond_2
    iget v0, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    if-ne v0, p1, :cond_3

    .line 1991
    const-string v0, "VolumePanel"

    const-string v1, "setVolumePanelOrientation --orientation not change --skip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1997
    :cond_3
    sget v0, Lcom/htc/view/VolumePanel;->SCREEN_MODE_PORTRAIT:I

    if-eq p1, v0, :cond_4

    sget v0, Lcom/htc/view/VolumePanel;->SCREEN_MODE_IPORTRAIT:I

    if-eq p1, v0, :cond_4

    sget v0, Lcom/htc/view/VolumePanel;->SCREEN_MODE_LANDSCAPE:I

    if-eq p1, v0, :cond_4

    sget v0, Lcom/htc/view/VolumePanel;->SCREEN_MODE_ILANDSCAPE:I

    if-ne p1, v0, :cond_0

    .line 2002
    :cond_4
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->forceTimeout()V

    .line 2006
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    monitor-enter v1

    .line 2007
    :try_start_0
    iput p1, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    .line 2008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/VolumePanel;->needRotate:Z

    .line 2009
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->listenToEnterHome()V

    .line 2010
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected updatePanelRotation()V
    .locals 5

    .prologue
    .line 2034
    iget-boolean v2, p0, Lcom/htc/view/VolumePanel;->needRotate:Z

    if-nez v2, :cond_1

    .line 2093
    :cond_0
    :goto_0
    return-void

    .line 2036
    :cond_1
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    if-eqz v2, :cond_0

    .line 2039
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_2

    .line 2040
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePanelRotation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    :cond_2
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    monitor-enter v3

    .line 2045
    :try_start_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2046
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2047
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    sget v4, Lcom/htc/view/VolumePanel;->SCREEN_MODE_PORTRAIT:I

    if-ne v2, v4, :cond_4

    .line 2049
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    iget v4, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    invoke-virtual {v2, v4}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 2050
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 2051
    iget v2, p0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2052
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2053
    sget-boolean v2, Lcom/htc/view/VolumePanel;->mCustomizeUI:Z

    if-eqz v2, :cond_3

    .line 2054
    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 2087
    :cond_3
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2088
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/view/VolumePanel;->isRotate:Z

    .line 2089
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/view/VolumePanel;->needRotate:Z

    .line 2091
    monitor-exit v3

    goto :goto_0

    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #window:Landroid/view/Window;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2057
    .restart local v0       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v1       #window:Landroid/view/Window;
    :cond_4
    :try_start_1
    iget v2, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    sget v4, Lcom/htc/view/VolumePanel;->SCREEN_MODE_LANDSCAPE:I

    if-ne v2, v4, :cond_5

    .line 2059
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    sget v4, Lcom/htc/view/VolumePanel;->SCREEN_MODE_ILANDSCAPE:I

    invoke-virtual {v2, v4}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 2060
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 2061
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2062
    iget v2, p0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2063
    sget-boolean v2, Lcom/htc/view/VolumePanel;->mCustomizeUI:Z

    if-eqz v2, :cond_3

    .line 2064
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    goto :goto_1

    .line 2067
    :cond_5
    iget v2, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    sget v4, Lcom/htc/view/VolumePanel;->SCREEN_MODE_IPORTRAIT:I

    if-ne v2, v4, :cond_6

    .line 2069
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    iget v4, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    invoke-virtual {v2, v4}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 2070
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 2071
    iget v2, p0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2072
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2073
    sget-boolean v2, Lcom/htc/view/VolumePanel;->mCustomizeUI:Z

    if-eqz v2, :cond_3

    .line 2074
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    goto :goto_1

    .line 2077
    :cond_6
    iget v2, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    sget v4, Lcom/htc/view/VolumePanel;->SCREEN_MODE_ILANDSCAPE:I

    if-ne v2, v4, :cond_3

    .line 2079
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    sget v4, Lcom/htc/view/VolumePanel;->SCREEN_MODE_LANDSCAPE:I

    invoke-virtual {v2, v4}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 2080
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 2081
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2082
    iget v2, p0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2083
    sget-boolean v2, Lcom/htc/view/VolumePanel;->mCustomizeUI:Z

    if-eqz v2, :cond_3

    .line 2084
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public updateSlientSetting(II)V
    .locals 5
    .parameter "VolumeSetting"
    .parameter "sStreamType"

    .prologue
    const/4 v4, 0x2

    .line 2283
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSlientSetting VolumeSetting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sStreamType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    :cond_0
    if-eq p2, v4, :cond_3

    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v1, :cond_3

    .line 2323
    :cond_2
    :goto_0
    return-void

    .line 2294
    :cond_3
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 2295
    .local v0, currentSlientSetting:I
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_4

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSlientSetting currentSlientSetting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    :cond_4
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2306
    :pswitch_0
    if-lez p1, :cond_5

    .line 2308
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 2300
    :pswitch_1
    if-nez p1, :cond_2

    .line 2302
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 2312
    :cond_5
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2313
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 2317
    :pswitch_2
    if-lez p1, :cond_2

    .line 2319
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 2297
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
