.class public Landroid/widget/Editor;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$SCATDHandler;,
        Landroid/widget/Editor$MenuWrapper;,
        Landroid/widget/Editor$HtcPastePositionListener;,
        Landroid/widget/Editor$InputMethodState;,
        Landroid/widget/Editor$InputContentType;,
        Landroid/widget/Editor$ErrorPopup;,
        Landroid/widget/Editor$CorrectionHighlighter;,
        Landroid/widget/Editor$SelectionModifierCursorController;,
        Landroid/widget/Editor$InsertionPointCursorController;,
        Landroid/widget/Editor$CursorController;,
        Landroid/widget/Editor$SelectionEndHandleView;,
        Landroid/widget/Editor$SelectionStartHandleView;,
        Landroid/widget/Editor$SelectionHandleView;,
        Landroid/widget/Editor$InsertionHandleView;,
        Landroid/widget/Editor$HandleView;,
        Landroid/widget/Editor$ActionPopupWindow;,
        Landroid/widget/Editor$SelectionActionModeCallback;,
        Landroid/widget/Editor$SuggestionsPopupWindow;,
        Landroid/widget/Editor$PinnedPopupWindow;,
        Landroid/widget/Editor$PositionListener;,
        Landroid/widget/Editor$EasyEditPopupWindow;,
        Landroid/widget/Editor$EasyEditSpanController;,
        Landroid/widget/Editor$DragLocalState;,
        Landroid/widget/Editor$Blink;,
        Landroid/widget/Editor$TextViewPositionListener;
    }
.end annotation


# static fields
.field static final BLINK:I = 0x1f4

.field static BLINK_BLACK:I = 0x0

.field static BLINK_WHITE:I = 0x0

.field private static final CURRENT_CID:Ljava/lang/String; = null

.field private static DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x0

.field private static final DirectionLEFT:I = 0x3

.field private static final DirectionRIGHT:I = 0x4

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

#the value of this static final field might be set in the static constructor
.field private static final IS_KIKIN_ENABLED:Z = false

.field private static final PREFS_NAME:Ljava/lang/String; = "KIKIN_DISABLED_STATE"

.field public static final STYLED_ANNOTATION_SPAN_KEY:Ljava/lang/String; = "styledtext"

.field private static final TAG:Ljava/lang/String; = "Editor"

.field private static final TEMP_POSITION:[F

.field private static final isTablet:Z

.field static mCurBlinkBlack:Z

.field static mIsBlackTimeShorter:Z

.field private static final mRemoveMagnifier:Z

.field private static mSCATDPROCESSING:Z

.field private static sCursorControllerTempRect:Landroid/graphics/Rect;


# instance fields
.field private final ANCHOR_FLY_THRESHOLD_MILLI:I

.field private final ANCHOR_ROLLBACK_THRESHOLD_MILLI:I

.field private mAnchorHeight:I

.field private mAnchorLastMovedIndex:I

.field private mAnchorLastMovedMilli:J

.field mBlink:Landroid/widget/Editor$Blink;

.field private mCapOld:I

.field private mChangeTimes:I

.field mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

.field mCreatedWithASelection:Z

.field private mCurrentDirection:I

.field mCursorCount:I

.field final mCursorDrawable:[Landroid/graphics/drawable/Drawable;

.field mCursorVisible:Z

.field mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field mDiscardNextActionUp:Z

.field private mDispatchToTheOtherAnchor:Z

.field private mDonotPassToLeft:Z

.field private mEasyEditSpanController:Landroid/widget/Editor$EasyEditSpanController;

.field private mEasyUpHardDownTriggered:Z

.field mError:Ljava/lang/CharSequence;

.field mErrorPopup:Landroid/widget/Editor$ErrorPopup;

.field mErrorWasChanged:Z

.field private mFirstDirection:I

.field private mFlags:I

.field private mFnOld:I

.field mFrozenWithFocus:Z

.field private mHasCustomContextMenu:Z

.field private mHookIME:Ljava/lang/Runnable;

.field protected final mHtcPastePositionListener:Landroid/widget/Editor$HtcPastePositionListener;

.field mIgnoreActionUpEvent:Z

.field private mIgnoreSetText:Z

.field mInBatchEditControllers:Z

.field mInputContentType:Landroid/widget/Editor$InputContentType;

.field mInputMethodState:Landroid/widget/Editor$InputMethodState;

.field mInputType:I

.field mInsertionControllerEnabled:Z

.field mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

.field private mIsChildOfActionBarView:Z

.field private mIsInQuickActioMode:Z

.field private mIsInTextSelectionMode:Z

.field private mIsLongPressed:Z

.field private mIsSCTimeoutclosed:Z

.field mIsTextEditor:Z

.field mKeyListener:Landroid/text/method/KeyListener;

.field private mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

.field mLastDownPositionX:F

.field mLastDownPositionY:F

.field private mLastLine:I

.field private mLastTouchDownRawX:I

.field private mLastTouchDownRawY:I

.field private mLocalPlayer:Landroid/media/MediaPlayer;

.field private mLosingFocusDueToKikinPopup:Z

.field private mLosingFocusDueToOverflowMenu:Z

.field private mMenuWrapper:Landroid/widget/Editor$MenuWrapper;

.field private mPassToLeftAnchor:Z

.field private mPasteWindowHider:Ljava/lang/Runnable;

.field private mPositionListener:Landroid/widget/Editor$PositionListener;

.field private mPreDirection:I

.field mPreserveDetachedSelection:Z

.field private mPreviousX:F

.field private mRange:Lcom/kikin/Range;

.field mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

.field mSCATDQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScrolled:Z

.field protected mSelectAChar:Z

.field mSelectAllOnFocus:Z

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field public mSelectWordOnDragging:Z

.field mSelectionActionMode:Landroid/view/ActionMode;

.field mSelectionControllerEnabled:Z

.field mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

.field mSelectionMoved:Z

.field mShowCursor:J

.field mShowErrorAfterAttach:Z

.field mShowSoftInputOnFocus:Z

.field mShowSuggestionRunnable:Ljava/lang/Runnable;

.field mSpellChecker:Landroid/widget/SpellChecker;

.field private mStatusBarWindowOffset:I

.field mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

.field final mTempCoords:[I

.field private mTempRect:Landroid/graphics/Rect;

.field mTemporaryDetach:Z

.field mTextDisplayLists:[Landroid/view/DisplayList;

.field mTextIsSelectable:Z

.field private mTextView:Landroid/widget/TextView;

.field mTouchFocusSelected:Z

.field private mVisibleRect:Landroid/graphics/Rect;

.field mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v0, 0x1f4

    const/16 v5, 0x149

    const/16 v4, 0x3e8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    sput v0, Landroid/widget/Editor;->BLINK_BLACK:I

    .line 149
    sput v0, Landroid/widget/Editor;->BLINK_WHITE:I

    .line 150
    sput-boolean v1, Landroid/widget/Editor;->mCurBlinkBlack:Z

    .line 151
    sput-boolean v2, Landroid/widget/Editor;->mIsBlackTimeShorter:Z

    .line 153
    const-string/jumbo v0, "ro.cid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/Editor;->CURRENT_CID:Ljava/lang/String;

    .line 155
    sget-object v0, Landroid/widget/Editor;->CURRENT_CID:Ljava/lang/String;

    const-string v3, "VODAP001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/widget/Editor;->CURRENT_CID:Ljava/lang/String;

    const-string v3, "VODAP102"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v5, :cond_4

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/widget/Editor;->IS_KIKIN_ENABLED:Z

    .line 159
    sget-object v0, Landroid/widget/Editor;->CURRENT_CID:Ljava/lang/String;

    const-string v3, "VODAP001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/widget/Editor;->CURRENT_CID:Ljava/lang/String;

    const-string v3, "VODAP102"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v5, :cond_5

    move v0, v1

    :goto_1
    sput-boolean v0, Landroid/widget/Editor;->mRemoveMagnifier:Z

    .line 163
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7b

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-ne v0, v3, :cond_6

    .line 165
    :cond_2
    const/16 v0, 0xfa

    sput v0, Landroid/widget/Editor;->BLINK_BLACK:I

    .line 166
    sput v4, Landroid/widget/Editor;->BLINK_WHITE:I

    .line 167
    sput-boolean v1, Landroid/widget/Editor;->mIsBlackTimeShorter:Z

    .line 177
    :cond_3
    :goto_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Landroid/widget/Editor;->TEMP_POSITION:[F

    .line 178
    const/16 v0, 0x14

    sput v0, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    .line 213
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    sput-boolean v0, Landroid/widget/Editor;->isTablet:Z

    .line 270
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/widget/Editor;->sCursorControllerTempRect:Landroid/graphics/Rect;

    .line 6507
    sput-boolean v2, Landroid/widget/Editor;->mSCATDPROCESSING:Z

    return-void

    :cond_4
    move v0, v2

    .line 155
    goto :goto_0

    :cond_5
    move v0, v2

    .line 159
    goto :goto_1

    .line 169
    :cond_6
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_7

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-ne v0, v1, :cond_3

    .line 171
    :cond_7
    sput v4, Landroid/widget/Editor;->BLINK_BLACK:I

    .line 172
    sput v4, Landroid/widget/Editor;->BLINK_WHITE:I

    goto :goto_2
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 6
    .parameter "textView"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-boolean v2, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    .line 187
    iput-boolean v2, p0, Landroid/widget/Editor;->mIsInQuickActioMode:Z

    .line 202
    iput v2, p0, Landroid/widget/Editor;->mInputType:I

    .line 208
    iput-boolean v2, p0, Landroid/widget/Editor;->mScrolled:Z

    .line 209
    iput v2, p0, Landroid/widget/Editor;->mAnchorHeight:I

    .line 210
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/widget/Editor;->mTempCoords:[I

    .line 211
    iput-boolean v2, p0, Landroid/widget/Editor;->mEasyUpHardDownTriggered:Z

    .line 212
    iput v1, p0, Landroid/widget/Editor;->mLastLine:I

    .line 214
    iput-boolean v2, p0, Landroid/widget/Editor;->mIsChildOfActionBarView:Z

    .line 220
    iput-boolean v5, p0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 236
    iput-boolean v5, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 244
    new-array v0, v4, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 705
    iput-object v3, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    .line 708
    iput-boolean v2, p0, Landroid/widget/Editor;->mSelectWordOnDragging:Z

    .line 711
    iput-boolean v2, p0, Landroid/widget/Editor;->mLosingFocusDueToKikinPopup:Z

    .line 714
    iput-boolean v2, p0, Landroid/widget/Editor;->mLosingFocusDueToOverflowMenu:Z

    .line 717
    iput-object v3, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    .line 720
    iput-object v3, p0, Landroid/widget/Editor;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 723
    iput v2, p0, Landroid/widget/Editor;->mLastTouchDownRawX:I

    .line 724
    iput v2, p0, Landroid/widget/Editor;->mLastTouchDownRawY:I

    .line 4167
    iput-boolean v2, p0, Landroid/widget/Editor;->mSelectAChar:Z

    .line 4170
    iput-boolean v2, p0, Landroid/widget/Editor;->mPassToLeftAnchor:Z

    .line 4171
    iput-boolean v2, p0, Landroid/widget/Editor;->mDispatchToTheOtherAnchor:Z

    .line 4172
    iput-boolean v2, p0, Landroid/widget/Editor;->mDonotPassToLeft:Z

    .line 4177
    iput v2, p0, Landroid/widget/Editor;->mChangeTimes:I

    .line 4178
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor;->mPreviousX:F

    .line 4179
    iput v1, p0, Landroid/widget/Editor;->mCurrentDirection:I

    .line 4180
    iput v1, p0, Landroid/widget/Editor;->mPreDirection:I

    .line 4181
    iput v1, p0, Landroid/widget/Editor;->mFirstDirection:I

    .line 6057
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mVisibleRect:Landroid/graphics/Rect;

    .line 6058
    iput v4, p0, Landroid/widget/Editor;->mFlags:I

    .line 6059
    iput v2, p0, Landroid/widget/Editor;->mStatusBarWindowOffset:I

    .line 6060
    new-instance v0, Landroid/widget/Editor$MenuWrapper;

    invoke-direct {v0, p0, v3}, Landroid/widget/Editor$MenuWrapper;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mMenuWrapper:Landroid/widget/Editor$MenuWrapper;

    .line 6061
    new-instance v0, Landroid/widget/Editor$HtcPastePositionListener;

    invoke-direct {v0, p0, v3}, Landroid/widget/Editor$HtcPastePositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mHtcPastePositionListener:Landroid/widget/Editor$HtcPastePositionListener;

    .line 6064
    iput-boolean v2, p0, Landroid/widget/Editor;->mIgnoreSetText:Z

    .line 6086
    iput-boolean v2, p0, Landroid/widget/Editor;->mHasCustomContextMenu:Z

    .line 6222
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/Editor;->mAnchorLastMovedMilli:J

    .line 6223
    iput v2, p0, Landroid/widget/Editor;->mAnchorLastMovedIndex:I

    .line 6224
    const/16 v0, 0x3c

    iput v0, p0, Landroid/widget/Editor;->ANCHOR_ROLLBACK_THRESHOLD_MILLI:I

    .line 6225
    const/16 v0, 0x64

    iput v0, p0, Landroid/widget/Editor;->ANCHOR_FLY_THRESHOLD_MILLI:I

    .line 6502
    iput-object v3, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    .line 6505
    iput-object v3, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    .line 6581
    iput-boolean v2, p0, Landroid/widget/Editor;->mIsSCTimeoutclosed:Z

    .line 6590
    new-instance v0, Landroid/widget/Editor$2;

    invoke-direct {v0, p0}, Landroid/widget/Editor$2;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mHookIME:Ljava/lang/Runnable;

    .line 6641
    iput-boolean v2, p0, Landroid/widget/Editor;->mIsTextEditor:Z

    .line 276
    iput-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 277
    return-void
.end method

.method private SCATDRemoveSpan(Ljava/lang/String;)V
    .locals 11
    .parameter "word"

    .prologue
    .line 6428
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    .line 6429
    .local v1, editable:Landroid/text/Editable;
    const/4 v8, 0x0

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const-class v10, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v8, v9, v10}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/SuggestionSpan;

    .line 6430
    .local v6, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    array-length v2, v6

    .line 6432
    .local v2, sugg_span_count:I
    const/4 v7, 0x0

    .local v7, z:I
    :goto_0
    if-ge v7, v2, :cond_2

    .line 6433
    :try_start_0
    aget-object v8, v6, v7

    invoke-interface {v1, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 6434
    .local v4, sugg_span_start:I
    aget-object v8, v6, v7

    invoke-interface {v1, v8}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 6437
    .local v3, sugg_span_end:I
    if-ltz v4, :cond_0

    if-gez v3, :cond_1

    .line 6432
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 6440
    :cond_1
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 6442
    .local v5, sugg_string:Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6443
    aget-object v8, v6, v7

    invoke-interface {v1, v8}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6446
    .end local v3           #sugg_span_end:I
    .end local v4           #sugg_span_start:I
    .end local v5           #sugg_string:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 6447
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6450
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor;->SCATDProcessQueue()V

    .line 6451
    return-void
.end method

.method private SCATDRescanWord(Ljava/lang/String;)V
    .locals 11
    .parameter "word"

    .prologue
    const/4 v10, 0x0

    .line 6473
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    .line 6474
    .local v1, editable:Landroid/text/Editable;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-class v9, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v10, v8, v9}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/SuggestionSpan;

    .line 6475
    .local v7, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    array-length v3, v7

    .line 6477
    .local v3, sugg_span_count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 6478
    :try_start_0
    aget-object v8, v7, v2

    invoke-interface {v1, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 6479
    .local v5, sugg_span_start:I
    aget-object v8, v7, v2

    invoke-interface {v1, v8}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 6482
    .local v4, sugg_span_end:I
    if-ltz v5, :cond_0

    if-gez v4, :cond_1

    .line 6477
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6485
    :cond_1
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 6487
    .local v6, sugg_string:Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6488
    const/4 v8, 0x0

    invoke-direct {p0, v5, v4, v8}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6491
    .end local v4           #sugg_span_end:I
    .end local v5           #sugg_span_start:I
    .end local v6           #sugg_string:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 6492
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6494
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    sput-boolean v10, Landroid/widget/Editor;->mSCATDPROCESSING:Z

    .line 6497
    iget-object v8, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6498
    invoke-virtual {p0}, Landroid/widget/Editor;->SCATDProcessQueue()V

    .line 6499
    return-void

    .line 6494
    :catchall_0
    move-exception v8

    sput-boolean v10, Landroid/widget/Editor;->mSCATDPROCESSING:Z

    throw v8
.end method

.method private SCATDStop()V
    .locals 2

    .prologue
    .line 6569
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    if-eqz v0, :cond_0

    .line 6570
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/Editor;->mSCATDPROCESSING:Z

    .line 6571
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SCATDHandler;->removeMessages(I)V

    .line 6572
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SCATDHandler;->removeMessages(I)V

    .line 6573
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SCATDHandler;->removeMessages(I)V

    .line 6575
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 6576
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6577
    :cond_1
    return-void
.end method

.method static synthetic access$1100(Landroid/widget/Editor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/Editor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/widget/Editor;->showQuickAction()V

    return-void
.end method

.method static synthetic access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/Editor;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/widget/Editor;->isOffsetVisible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2202(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$2300()Z
    .locals 1

    .prologue
    .line 142
    sget-boolean v0, Landroid/widget/Editor;->IS_KIKIN_ENABLED:Z

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/Editor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Landroid/widget/Editor;Landroid/view/ActionMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/widget/Editor;->showKikinResultsViewController(Landroid/view/ActionMode;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/widget/Editor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/widget/Editor;->hideKikinResultsViewController()V

    return-void
.end method

.method static synthetic access$2702(Landroid/widget/Editor;Lcom/kikin/Range;)Lcom/kikin/Range;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-object p1, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/widget/Editor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2902(Landroid/widget/Editor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput p1, p0, Landroid/widget/Editor;->mAnchorHeight:I

    return p1
.end method

.method static synthetic access$3000(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3002(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3200(Landroid/widget/Editor;)Landroid/widget/Editor$MenuWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/Editor;->mMenuWrapper:Landroid/widget/Editor$MenuWrapper;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/widget/Editor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    return v0
.end method

.method static synthetic access$3402(Landroid/widget/Editor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    return p1
.end method

.method static synthetic access$3600(Landroid/widget/Editor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/Editor;->mStatusBarWindowOffset:I

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/Editor;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionVisible(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Landroid/widget/Editor;->sCursorControllerTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/Editor;->mVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/widget/Editor;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/Editor;->mPreviousX:F

    return v0
.end method

.method static synthetic access$4002(Landroid/widget/Editor;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput p1, p0, Landroid/widget/Editor;->mPreviousX:F

    return p1
.end method

.method static synthetic access$4100(Landroid/widget/Editor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/widget/Editor;->mDispatchToTheOtherAnchor:Z

    return v0
.end method

.method static synthetic access$4102(Landroid/widget/Editor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/widget/Editor;->mDispatchToTheOtherAnchor:Z

    return p1
.end method

.method static synthetic access$4200(Landroid/widget/Editor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/widget/Editor;->mDonotPassToLeft:Z

    return v0
.end method

.method static synthetic access$4202(Landroid/widget/Editor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/widget/Editor;->mDonotPassToLeft:Z

    return p1
.end method

.method static synthetic access$4300(Landroid/widget/Editor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/widget/Editor;->mEasyUpHardDownTriggered:Z

    return v0
.end method

.method static synthetic access$4302(Landroid/widget/Editor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/widget/Editor;->mEasyUpHardDownTriggered:Z

    return p1
.end method

.method static synthetic access$4400(Landroid/widget/Editor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/Editor;->mFirstDirection:I

    return v0
.end method

.method static synthetic access$4402(Landroid/widget/Editor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput p1, p0, Landroid/widget/Editor;->mFirstDirection:I

    return p1
.end method

.method static synthetic access$4500(Landroid/widget/Editor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/widget/Editor;->mPassToLeftAnchor:Z

    return v0
.end method

.method static synthetic access$4502(Landroid/widget/Editor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/widget/Editor;->mPassToLeftAnchor:Z

    return p1
.end method

.method static synthetic access$4600(Landroid/widget/Editor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Landroid/widget/Editor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/Editor;->mLastLine:I

    return v0
.end method

.method static synthetic access$4702(Landroid/widget/Editor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput p1, p0, Landroid/widget/Editor;->mLastLine:I

    return p1
.end method

.method static synthetic access$4800(Landroid/widget/Editor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 142
    iget-wide v0, p0, Landroid/widget/Editor;->mAnchorLastMovedMilli:J

    return-wide v0
.end method

.method static synthetic access$4802(Landroid/widget/Editor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-wide p1, p0, Landroid/widget/Editor;->mAnchorLastMovedMilli:J

    return-wide p1
.end method

.method static synthetic access$4900(Landroid/widget/Editor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/Editor;->mAnchorLastMovedIndex:I

    return v0
.end method

.method static synthetic access$4902(Landroid/widget/Editor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput p1, p0, Landroid/widget/Editor;->mAnchorLastMovedIndex:I

    return p1
.end method

.method static synthetic access$5000()Z
    .locals 1

    .prologue
    .line 142
    sget-boolean v0, Landroid/widget/Editor;->mRemoveMagnifier:Z

    return v0
.end method

.method static synthetic access$5100(Landroid/widget/Editor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/Editor;->mFlags:I

    return v0
.end method

.method static synthetic access$5202(Landroid/widget/Editor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput p1, p0, Landroid/widget/Editor;->mChangeTimes:I

    return p1
.end method

.method static synthetic access$5302(Landroid/widget/Editor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput p1, p0, Landroid/widget/Editor;->mCurrentDirection:I

    return p1
.end method

.method static synthetic access$5402(Landroid/widget/Editor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput p1, p0, Landroid/widget/Editor;->mPreDirection:I

    return p1
.end method

.method static synthetic access$5500(Landroid/widget/Editor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    return v0
.end method

.method static synthetic access$5502(Landroid/widget/Editor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    return p1
.end method

.method static synthetic access$5600(Landroid/widget/Editor;)Lcom/kikin/Range;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/widget/Editor;->createRangeFromCurrentSelection()Lcom/kikin/Range;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Landroid/widget/Editor;Lcom/kikin/selection/Selection$Mode;)Lcom/kikin/selection/Selection;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/widget/Editor;->getSelectionExtract(Lcom/kikin/selection/Selection$Mode;)Lcom/kikin/selection/Selection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Landroid/widget/Editor;Lcom/kikin/selection/Selection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/widget/Editor;->doKikinSearch(Lcom/kikin/selection/Selection;)V

    return-void
.end method

.method static synthetic access$6000(Landroid/widget/Editor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    return-void
.end method

.method static synthetic access$6100(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$6102(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$6200(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$6202(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$6500(Landroid/widget/Editor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/Editor;->mLastTouchDownRawX:I

    return v0
.end method

.method static synthetic access$6502(Landroid/widget/Editor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput p1, p0, Landroid/widget/Editor;->mLastTouchDownRawX:I

    return p1
.end method

.method static synthetic access$6600(Landroid/widget/Editor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/Editor;->mLastTouchDownRawY:I

    return v0
.end method

.method static synthetic access$6602(Landroid/widget/Editor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput p1, p0, Landroid/widget/Editor;->mLastTouchDownRawY:I

    return p1
.end method

.method static synthetic access$6700(Landroid/widget/Editor;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->showMagnifyingGlass(II)V

    return-void
.end method

.method static synthetic access$6800(Landroid/widget/Editor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/widget/Editor;->disallowInterceptTouchEvent(Z)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/Editor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 142
    sput-boolean p0, Landroid/widget/Editor;->mSCATDPROCESSING:Z

    return p0
.end method

.method static synthetic access$7300(Landroid/widget/Editor;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/widget/Editor;->SCATDRescanWord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7402(Landroid/widget/Editor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/widget/Editor;->mIsSCTimeoutclosed:Z

    return p1
.end method

.method static synthetic access$7500(Landroid/widget/Editor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/widget/Editor;->hookIME()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/Editor;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private canSelectText()Z
    .locals 1

    .prologue
    .line 674
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 12
    .parameter "pop"
    .parameter "text"
    .parameter "tv"

    .prologue
    .line 639
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 640
    .local v11, wid:I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 642
    .local v8, ht:I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 644
    .local v3, defaultWidthInPixels:I
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 646
    .local v0, l:Landroid/text/Layout;
    const/4 v10, 0x0

    .line 647
    .local v10, max:F
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 648
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 647
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 655
    :cond_0
    float-to-double v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, v11

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 656
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 657
    return-void
.end method

.method private createRangeFromCurrentSelection()Lcom/kikin/Range;
    .locals 3

    .prologue
    .line 931
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 932
    .local v1, selectionStart:I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 933
    .local v0, selectionEnd:I
    invoke-direct {p0, v1, v0}, Landroid/widget/Editor;->createRangeFromSelection(II)Lcom/kikin/Range;

    move-result-object v2

    return-object v2
.end method

.method private createRangeFromSelection(II)Lcom/kikin/Range;
    .locals 8
    .parameter "selectionStart"
    .parameter "selectionEnd"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 905
    if-ltz p1, :cond_0

    if-ge p2, p1, :cond_1

    :cond_0
    move-object v0, v5

    .line 923
    :goto_0
    return-object v0

    .line 910
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 911
    .local v7, selectedText:Ljava/lang/String;
    invoke-static {v7, v2, v2}, Lcom/kikin/KikinCore;->nativeGetTextEntity(Ljava/lang/String;II)Lcom/kikin/Range;

    move-result-object v6

    .line 912
    .local v6, range:Lcom/kikin/Range;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/kikin/Range;->getStartOffset()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v6}, Lcom/kikin/Range;->getEndOffset()I

    move-result v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 914
    new-instance v0, Lcom/kikin/Range;

    invoke-virtual {v6}, Lcom/kikin/Range;->getSelectionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/kikin/Range;->getSelectionLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/kikin/Range;->getValue()Ljava/lang/String;

    move-result-object v5

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/kikin/Range;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    .end local v6           #range:Lcom/kikin/Range;
    .local v0, range:Lcom/kikin/Range;
    :goto_1
    invoke-virtual {v0, v7}, Lcom/kikin/Range;->setTouchedWord(Ljava/lang/String;)V

    goto :goto_0

    .line 918
    .end local v0           #range:Lcom/kikin/Range;
    .restart local v6       #range:Lcom/kikin/Range;
    :cond_2
    new-instance v0, Lcom/kikin/Range;

    const-string/jumbo v3, "text"

    const-string v4, ""

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/kikin/Range;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v6           #range:Lcom/kikin/Range;
    .restart local v0       #range:Lcom/kikin/Range;
    goto :goto_1
.end method

.method private dimissSoftKeyboardIfNeeed()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1128
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1129
    .local v0, context:Landroid/content/Context;
    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 1130
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1131
    .local v3, window:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1133
    .local v2, params:Landroid/view/WindowManager$LayoutParams;
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    .line 1135
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1136
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1143
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #window:Landroid/view/Window;
    :cond_0
    :goto_0
    return-void

    .line 1140
    .restart local v0       #context:Landroid/content/Context;
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1141
    .restart local v1       #imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private disallowInterceptTouchEvent(Z)V
    .locals 2
    .parameter "disallow"

    .prologue
    .line 6079
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6080
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 6081
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 6083
    :cond_0
    return-void
.end method

.method private doKikinSearch(Lcom/kikin/selection/Selection;)V
    .locals 8
    .parameter "selection"

    .prologue
    .line 1035
    if-eqz p1, :cond_2

    .line 1036
    invoke-virtual {p1}, Lcom/kikin/selection/Selection;->getMode()Lcom/kikin/selection/Selection$Mode;

    move-result-object v5

    sget-object v6, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    if-ne v5, v6, :cond_0

    .line 1038
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/kikin/analytics/AnalyticsTrackerEvent;->KIKIN_SEARCH:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    invoke-static {v5, v6}, Lcom/kikin/analytics/AnalyticsTracker;->logEvent(Landroid/content/Context;Lcom/kikin/analytics/AnalyticsTrackerEvent;)V

    .line 1043
    :cond_0
    iget-object v5, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-nez v5, :cond_1

    .line 1044
    new-instance v5, Lcom/kikin/KikinResultsViewController;

    invoke-direct {v5, p0}, Lcom/kikin/KikinResultsViewController;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    .line 1048
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v5, p1}, Lcom/kikin/KikinResultsViewController;->doKikinSearch(Lcom/kikin/selection/Selection;)V

    .line 1051
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v5}, Lcom/kikin/KikinResultsViewController;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1053
    invoke-direct {p0}, Landroid/widget/Editor;->playKikinSound()V

    .line 1056
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 1057
    .local v2, location:[I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 1060
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1061
    .local v3, selectionStart:I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1062
    .local v0, layout:Landroid/text/Layout;
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 1063
    .local v1, line:I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 1066
    .local v4, top:I
    iget-object v5, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    const/4 v6, 0x1

    aget v6, v2, v6

    add-int/2addr v6, v4

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/Editor;->getAnchorHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/kikin/KikinResultsViewController;->setSelectionTopPosition(I)V

    .line 1069
    .end local v0           #layout:Landroid/text/Layout;
    .end local v1           #line:I
    .end local v2           #location:[I
    .end local v3           #selectionStart:I
    .end local v4           #top:I
    :cond_2
    return-void
.end method

.method private downgradeEasyCorrectionSpans()V
    .locals 8

    .prologue
    .line 1756
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1757
    .local v4, text:Ljava/lang/CharSequence;
    instance-of v5, v4, Landroid/text/Spannable;

    if-eqz v5, :cond_1

    move-object v2, v4

    .line 1758
    check-cast v2, Landroid/text/Spannable;

    .line 1759
    .local v2, spannable:Landroid/text/Spannable;
    const/4 v5, 0x0

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/SuggestionSpan;

    .line 1761
    .local v3, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 1762
    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 1763
    .local v0, flags:I
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    and-int/lit8 v5, v0, 0x2

    if-nez v5, :cond_0

    .line 1765
    and-int/lit8 v0, v0, -0x2

    .line 1766
    aget-object v5, v3, v1

    invoke-virtual {v5, v0}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 1761
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1770
    .end local v0           #flags:I
    .end local v1           #i:I
    .end local v2           #spannable:Landroid/text/Spannable;
    .end local v3           #suggestionSpans:[Landroid/text/style/SuggestionSpan;
    :cond_1
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;I)V
    .locals 4
    .parameter "canvas"
    .parameter "cursorOffsetVertical"

    .prologue
    const/4 v3, 0x0

    .line 2311
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 2312
    .local v1, translate:Z
    :goto_0
    if-eqz v1, :cond_0

    int-to-float v2, p2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2313
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ge v0, v2, :cond_2

    .line 2314
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2313
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2311
    .end local v0           #i:I
    .end local v1           #translate:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2316
    .restart local v0       #i:I
    .restart local v1       #translate:Z
    :cond_2
    if-eqz v1, :cond_3

    neg-int v2, p2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2317
    :cond_3
    return-void
.end method

.method private drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 33
    .parameter "canvas"
    .parameter "layout"
    .parameter "highlight"
    .parameter "highlightPaint"
    .parameter "cursorOffsetVertical"

    .prologue
    .line 2198
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v25

    .line 2199
    .local v25, lineRange:J
    invoke-static/range {v25 .. v26}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v9

    .line 2200
    .local v9, firstLine:I
    invoke-static/range {v25 .. v26}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v10

    .line 2201
    .local v10, lastLine:I
    if-gez v10, :cond_1

    .line 2285
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    .line 2203
    invoke-virtual/range {v4 .. v10}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 2206
    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/text/DynamicLayout;

    if-eqz v4, :cond_a

    .line 2207
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    if-nez v4, :cond_2

    .line 2208
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealObjectArraySize(I)I

    move-result v4

    new-array v4, v4, [Landroid/view/DisplayList;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    :cond_2
    move-object/from16 v19, p2

    .line 2211
    check-cast v19, Landroid/text/DynamicLayout;

    .line 2212
    .local v19, dynamicLayout:Landroid/text/DynamicLayout;
    invoke-virtual/range {v19 .. v19}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v14

    .line 2213
    .local v14, blockEndLines:[I
    invoke-virtual/range {v19 .. v19}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v16

    .line 2214
    .local v16, blockIndices:[I
    invoke-virtual/range {v19 .. v19}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v29

    .line 2216
    .local v29, numberOfBlocks:I
    const/16 v20, -0x1

    .line 2217
    .local v20, endOfPreviousBlock:I
    const/16 v31, 0x0

    .line 2218
    .local v31, searchStartIndex:I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    .line 2219
    aget v13, v14, v22

    .line 2220
    .local v13, blockEndLine:I
    aget v15, v16, v22

    .line 2222
    .local v15, blockIndex:I
    const/4 v4, -0x1

    if-ne v15, v4, :cond_5

    const/16 v17, 0x1

    .line 2223
    .local v17, blockIsInvalid:Z
    :goto_2
    if-eqz v17, :cond_3

    .line 2224
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v29

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor;->getAvailableDisplayListIndex([III)I

    move-result v15

    .line 2227
    aput v15, v16, v22

    .line 2228
    add-int/lit8 v31, v15, 0x1

    .line 2231
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    aget-object v12, v4, v15

    .line 2232
    .local v12, blockDisplayList:Landroid/view/DisplayList;
    if-nez v12, :cond_6

    .line 2233
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHardwareRenderer()Landroid/view/HardwareRenderer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Text "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/HardwareRenderer;->createDisplayList(Ljava/lang/String;)Landroid/view/DisplayList;

    move-result-object v12

    .end local v12           #blockDisplayList:Landroid/view/DisplayList;
    aput-object v12, v4, v15

    .line 2239
    .restart local v12       #blockDisplayList:Landroid/view/DisplayList;
    :cond_4
    :goto_3
    invoke-virtual {v12}, Landroid/view/DisplayList;->isValid()Z

    move-result v4

    if-nez v4, :cond_9

    .line 2240
    add-int/lit8 v11, v20, 0x1

    .line 2241
    .local v11, blockBeginLine:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v32

    .line 2242
    .local v32, top:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v18

    .line 2243
    .local v18, bottom:I
    const/16 v23, 0x0

    .line 2244
    .local v23, left:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v30

    .line 2245
    .local v30, right:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2246
    const v28, 0x7f7fffff

    .line 2247
    .local v28, min:F
    const/16 v27, 0x1

    .line 2248
    .local v27, max:F
    move/from16 v24, v11

    .local v24, line:I
    :goto_4
    move/from16 v0, v24

    if-gt v0, v13, :cond_7

    .line 2249
    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v28

    .line 2250
    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    move/from16 v0, v27

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v27

    .line 2248
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 2222
    .end local v11           #blockBeginLine:I
    .end local v12           #blockDisplayList:Landroid/view/DisplayList;
    .end local v17           #blockIsInvalid:Z
    .end local v18           #bottom:I
    .end local v23           #left:I
    .end local v24           #line:I
    .end local v27           #max:F
    .end local v28           #min:F
    .end local v30           #right:I
    .end local v32           #top:I
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 2236
    .restart local v12       #blockDisplayList:Landroid/view/DisplayList;
    .restart local v17       #blockIsInvalid:Z
    :cond_6
    if-eqz v17, :cond_4

    invoke-virtual {v12}, Landroid/view/DisplayList;->invalidate()V

    goto :goto_3

    .line 2252
    .restart local v11       #blockBeginLine:I
    .restart local v18       #bottom:I
    .restart local v23       #left:I
    .restart local v24       #line:I
    .restart local v27       #max:F
    .restart local v28       #min:F
    .restart local v30       #right:I
    .restart local v32       #top:I
    :cond_7
    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v23, v0

    .line 2253
    const/high16 v4, 0x3f00

    add-float v4, v4, v27

    float-to-int v0, v4

    move/from16 v30, v0

    .line 2256
    .end local v24           #line:I
    .end local v27           #max:F
    .end local v28           #min:F
    :cond_8
    invoke-virtual {v12}, Landroid/view/DisplayList;->start()Landroid/view/HardwareCanvas;

    move-result-object v21

    .line 2259
    .local v21, hardwareCanvas:Landroid/view/HardwareCanvas;
    sub-int v4, v30, v23

    sub-int v5, v18, v32

    :try_start_0
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/view/HardwareCanvas;->setViewport(II)V

    .line 2261
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/HardwareCanvas;->onPreDraw(Landroid/graphics/Rect;)I

    .line 2264
    move/from16 v0, v23

    neg-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v32

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 2265
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11, v13}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2268
    invoke-virtual/range {v21 .. v21}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 2269
    invoke-virtual {v12}, Landroid/view/DisplayList;->end()V

    .line 2270
    move/from16 v0, v23

    move/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v18

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .line 2272
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/view/DisplayList;->setClipChildren(Z)V

    .end local v11           #blockBeginLine:I
    .end local v18           #bottom:I
    .end local v21           #hardwareCanvas:Landroid/view/HardwareCanvas;
    .end local v23           #left:I
    .end local v30           #right:I
    .end local v32           #top:I
    :cond_9
    move-object/from16 v4, p1

    .line 2276
    check-cast v4, Landroid/view/HardwareCanvas;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v12, v5, v6}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I

    .line 2279
    move/from16 v20, v13

    .line 2218
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 2268
    .restart local v11       #blockBeginLine:I
    .restart local v18       #bottom:I
    .restart local v21       #hardwareCanvas:Landroid/view/HardwareCanvas;
    .restart local v23       #left:I
    .restart local v30       #right:I
    .restart local v32       #top:I
    :catchall_0
    move-exception v4

    invoke-virtual/range {v21 .. v21}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 2269
    invoke-virtual {v12}, Landroid/view/DisplayList;->end()V

    .line 2270
    move/from16 v0, v23

    move/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v18

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .line 2272
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/view/DisplayList;->setClipChildren(Z)V

    .line 2268
    throw v4

    .line 2283
    .end local v11           #blockBeginLine:I
    .end local v12           #blockDisplayList:Landroid/view/DisplayList;
    .end local v13           #blockEndLine:I
    .end local v14           #blockEndLines:[I
    .end local v15           #blockIndex:I
    .end local v16           #blockIndices:[I
    .end local v17           #blockIsInvalid:Z
    .end local v18           #bottom:I
    .end local v19           #dynamicLayout:Landroid/text/DynamicLayout;
    .end local v20           #endOfPreviousBlock:I
    .end local v21           #hardwareCanvas:Landroid/view/HardwareCanvas;
    .end local v22           #i:I
    .end local v23           #left:I
    .end local v29           #numberOfBlocks:I
    .end local v30           #right:I
    .end local v31           #searchStartIndex:I
    .end local v32           #top:I
    :cond_a
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v10}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    goto/16 :goto_0
.end method

.method private extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .locals 8
    .parameter "request"
    .parameter "partialStartOffset"
    .parameter "partialEndOffset"
    .parameter "delta"
    .parameter "outText"

    .prologue
    const/4 v6, 0x0

    .line 2007
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2008
    .local v1, content:Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    .line 2009
    const/4 v7, -0x2

    if-eq p2, v7, :cond_c

    .line 2010
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2011
    .local v0, N:I
    if-gez p2, :cond_4

    .line 2012
    const/4 v7, -0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 2013
    const/4 p2, 0x0

    .line 2014
    move p3, v0

    .line 2047
    :cond_0
    :goto_0
    iget v7, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_b

    .line 2048
    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 2059
    .end local v0           #N:I
    :goto_1
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 2060
    const/16 v7, 0x800

    invoke-static {v1, v7}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v7

    if-eqz v7, :cond_1

    .line 2061
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 2063
    :cond_1
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2064
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 2066
    :cond_2
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 2067
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 2068
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 2069
    const/4 v6, 0x1

    .line 2071
    :cond_3
    return v6

    .line 2018
    .restart local v0       #N:I
    :cond_4
    add-int/2addr p3, p4

    .line 2020
    instance-of v7, v1, Landroid/text/Spanned;

    if-eqz v7, :cond_7

    move-object v4, v1

    .line 2021
    check-cast v4, Landroid/text/Spanned;

    .line 2022
    .local v4, spanned:Landroid/text/Spanned;
    const-class v7, Landroid/text/ParcelableSpan;

    invoke-interface {v4, p2, p3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 2024
    .local v5, spans:[Ljava/lang/Object;
    array-length v2, v5

    .line 2025
    .local v2, i:I
    :cond_5
    :goto_2
    if-lez v2, :cond_7

    .line 2026
    add-int/lit8 v2, v2, -0x1

    .line 2027
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 2028
    .local v3, j:I
    if-ge v3, p2, :cond_6

    move p2, v3

    .line 2029
    :cond_6
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 2030
    if-le v3, p3, :cond_5

    move p3, v3

    goto :goto_2

    .line 2033
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #spanned:Landroid/text/Spanned;
    .end local v5           #spans:[Ljava/lang/Object;
    :cond_7
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 2034
    sub-int v7, p3, p4

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 2036
    if-le p2, v0, :cond_9

    .line 2037
    move p2, v0

    .line 2041
    :cond_8
    :goto_3
    if-le p3, v0, :cond_a

    .line 2042
    move p3, v0

    goto :goto_0

    .line 2038
    :cond_9
    if-gez p2, :cond_8

    .line 2039
    const/4 p2, 0x0

    goto :goto_3

    .line 2043
    :cond_a
    if-gez p3, :cond_0

    .line 2044
    const/4 p3, 0x0

    goto :goto_0

    .line 2051
    :cond_b
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .line 2055
    .end local v0           #N:I
    :cond_c
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 2056
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 2057
    const-string v7, ""

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private extractedTextModeWillBeStarted()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2499
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v2, v2, Landroid/widget/ExtractEditText;

    if-nez v2, :cond_0

    .line 2500
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2501
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 2503
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v1
.end method

.method private static findNearestNonwhiteOffset(Landroid/text/Spannable;I)I
    .locals 8
    .parameter "sp"
    .parameter "offset"

    .prologue
    const/4 v4, -0x1

    .line 6328
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v5

    if-ge v5, p1, :cond_2

    :cond_0
    move v2, v4

    .line 6369
    :cond_1
    :goto_0
    return v2

    .line 6331
    :cond_2
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v5

    if-le p1, v5, :cond_3

    .line 6332
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p1

    .line 6334
    :cond_3
    const/4 v2, -0x1

    .line 6335
    .local v2, left:I
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    .line 6339
    .local v3, right:I
    add-int/lit8 v1, p1, -0x1

    .local v1, i:I
    :goto_1
    if-le v1, v4, :cond_4

    .line 6340
    :try_start_0
    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_6

    .line 6341
    move v2, v1

    .line 6346
    :cond_4
    move v1, p1

    :goto_2
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 6347
    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_7

    .line 6348
    move v3, v1

    .line 6357
    :cond_5
    :goto_3
    if-ne v2, v4, :cond_8

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v5

    if-ne v3, v5, :cond_8

    .line 6358
    const/4 v2, 0x0

    goto :goto_0

    .line 6339
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 6346
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6353
    :catch_0
    move-exception v0

    .line 6354
    .local v0, e:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v5, "HtcTextSelection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "offset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", in findNearestNonwhiteOffset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 6360
    .end local v0           #e:Ljava/lang/StringIndexOutOfBoundsException;
    :cond_8
    if-eq v2, v4, :cond_9

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v5

    if-eq v3, v5, :cond_1

    .line 6363
    :cond_9
    if-ne v2, v4, :cond_a

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-eq v3, v4, :cond_a

    move v2, v3

    .line 6364
    goto :goto_0

    .line 6366
    :cond_a
    sub-int v4, p1, v2

    sub-int v5, v3, p1

    if-le v4, v5, :cond_1

    move v2, v3

    .line 6367
    goto/16 :goto_0
.end method

.method public static findWordEnd(Ljava/lang/CharSequence;I)I
    .locals 6
    .parameter "text"
    .parameter "offset"

    .prologue
    const/16 v5, 0x27

    .line 6283
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge p1, v4, :cond_0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    :cond_0
    move v4, p1

    .line 6323
    :goto_0
    return v4

    .line 6286
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    .line 6287
    .local v3, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 6304
    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_3

    .line 6305
    add-int/lit8 v4, p1, 0x1

    goto :goto_0

    .line 6308
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6310
    .local v1, len:I
    :goto_1
    if-ge p1, v1, :cond_4

    .line 6311
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 6312
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v2

    .line 6314
    .local v2, type:I
    if-eq v0, v5, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    const/4 v4, 0x4

    if-eq v2, v4, :cond_5

    const/16 v4, 0x9

    if-eq v2, v4, :cond_5

    .line 6323
    .end local v0           #c:C
    .end local v2           #type:I
    :cond_4
    if-gez p1, :cond_6

    const/4 v4, 0x0

    goto :goto_0

    .line 6310
    .restart local v0       #c:C
    .restart local v2       #type:I
    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .end local v0           #c:C
    .end local v2           #type:I
    :cond_6
    move v4, p1

    .line 6323
    goto :goto_0
.end method

.method public static findWordStart(Ljava/lang/CharSequence;I)I
    .locals 6
    .parameter "text"
    .parameter "offset"

    .prologue
    const/16 v5, 0x27

    .line 6236
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge p1, v4, :cond_0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    :cond_0
    move v1, p1

    .line 6274
    .end local p1
    .local v1, offset:I
    :goto_0
    return v1

    .line 6239
    .end local v1           #offset:I
    .restart local p1
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    .line 6240
    .local v3, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_4

    .line 6257
    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_4

    move v1, p1

    .line 6258
    .end local p1
    .restart local v1       #offset:I
    goto :goto_0

    .line 6261
    .end local v1           #offset:I
    .local v0, c:C
    .local v2, type:I
    .restart local p1
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .end local v0           #c:C
    .end local v2           #type:I
    :cond_4
    if-lez p1, :cond_5

    .line 6262
    add-int/lit8 v4, p1, -0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 6263
    .restart local v0       #c:C
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v2

    .line 6265
    .restart local v2       #type:I
    if-eq v0, v5, :cond_3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    const/16 v4, 0x9

    if-eq v2, v4, :cond_3

    .end local v0           #c:C
    .end local v2           #type:I
    :cond_5
    move v1, p1

    .line 6274
    .end local p1
    .restart local v1       #offset:I
    goto :goto_0
.end method

.method private getAvailableDisplayListIndex([III)I
    .locals 8
    .parameter "blockIndices"
    .parameter "numberOfBlocks"
    .parameter "searchStartIndex"

    .prologue
    const/4 v7, 0x0

    .line 2289
    iget-object v6, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    array-length v4, v6

    .line 2290
    .local v4, length:I
    move v2, p3

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 2291
    const/4 v0, 0x0

    .line 2292
    .local v0, blockIndexFound:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, p2, :cond_0

    .line 2293
    aget v6, p1, v3

    if-ne v6, v2, :cond_1

    .line 2294
    const/4 v0, 0x1

    .line 2298
    :cond_0
    if-eqz v0, :cond_3

    .line 2290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2292
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2303
    .end local v0           #blockIndexFound:Z
    .end local v3           #j:I
    :cond_2
    add-int/lit8 v6, v4, 0x1

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    .line 2304
    .local v5, newSize:I
    new-array v1, v5, [Landroid/view/DisplayList;

    .line 2305
    .local v1, displayLists:[Landroid/view/DisplayList;
    iget-object v6, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    invoke-static {v6, v7, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2306
    iput-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    move v2, v4

    .line 2307
    .end local v1           #displayLists:[Landroid/view/DisplayList;
    .end local v2           #i:I
    .end local v5           #newSize:I
    :cond_3
    return v2
.end method

.method private getCharRange(I)J
    .locals 7
    .parameter "offset"

    .prologue
    .line 1307
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1308
    .local v4, textLength:I
    add-int/lit8 v5, p1, 0x1

    if-ge v5, v4, :cond_0

    .line 1309
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1310
    .local v0, currentChar:C
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1311
    .local v1, nextChar:C
    invoke-static {v0, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1312
    add-int/lit8 v5, p1, 0x2

    invoke-static {p1, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    .line 1328
    .end local v0           #currentChar:C
    .end local v1           #nextChar:C
    :goto_0
    return-wide v5

    .line 1315
    :cond_0
    if-ge p1, v4, :cond_1

    .line 1316
    add-int/lit8 v5, p1, 0x1

    invoke-static {p1, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0

    .line 1318
    :cond_1
    add-int/lit8 v5, p1, -0x2

    if-ltz v5, :cond_2

    .line 1319
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1320
    .local v2, previousChar:C
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, p1, -0x2

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1321
    .local v3, previousPreviousChar:C
    invoke-static {v3, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1322
    add-int/lit8 v5, p1, -0x2

    invoke-static {v5, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0

    .line 1325
    .end local v2           #previousChar:C
    .end local v3           #previousPreviousChar:C
    :cond_2
    add-int/lit8 v5, p1, -0x1

    if-ltz v5, :cond_3

    .line 1326
    add-int/lit8 v5, p1, -0x1

    invoke-static {v5, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0

    .line 1328
    :cond_3
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0
.end method

.method private getDirection(F)I
    .locals 2
    .parameter "rawX"

    .prologue
    .line 4183
    iget v0, p0, Landroid/widget/Editor;->mCurrentDirection:I

    iput v0, p0, Landroid/widget/Editor;->mPreDirection:I

    .line 4184
    iget v0, p0, Landroid/widget/Editor;->mPreviousX:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_3

    .line 4185
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/Editor;->mCurrentDirection:I

    .line 4189
    :cond_0
    :goto_0
    iget v0, p0, Landroid/widget/Editor;->mCurrentDirection:I

    iget v1, p0, Landroid/widget/Editor;->mPreDirection:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/widget/Editor;->mChangeTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor;->mChangeTimes:I

    .line 4191
    :cond_1
    iget v0, p0, Landroid/widget/Editor;->mChangeTimes:I

    if-nez v0, :cond_4

    .line 4192
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mDonotPassToLeft:Z

    .line 4197
    :cond_2
    :goto_1
    iget v0, p0, Landroid/widget/Editor;->mCurrentDirection:I

    return v0

    .line 4186
    :cond_3
    iget v0, p0, Landroid/widget/Editor;->mPreviousX:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    .line 4187
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/Editor;->mCurrentDirection:I

    goto :goto_0

    .line 4193
    :cond_4
    iget v0, p0, Landroid/widget/Editor;->mChangeTimes:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4194
    iget v0, p0, Landroid/widget/Editor;->mCurrentDirection:I

    iput v0, p0, Landroid/widget/Editor;->mFirstDirection:I

    goto :goto_1
.end method

.method private getErrorX()I
    .locals 5

    .prologue
    .line 437
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 439
    .local v1, scale:F
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v2, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 440
    .local v0, dr:Landroid/widget/TextView$Drawables;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v3}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int v3, v2, v3

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :goto_0
    div-int/lit8 v2, v2, 0x2

    sub-int v2, v3, v2

    const/high16 v3, 0x41c8

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getErrorY()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 453
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 454
    .local v0, compoundPaddingTop:I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getBottom()I

    move-result v5

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTop()I

    move-result v7

    sub-int/2addr v5, v7

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    sub-int/2addr v5, v7

    sub-int v4, v5, v0

    .line 457
    .local v4, vspace:I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, v5, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 458
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_1

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :goto_0
    sub-int v5, v4, v5

    div-int/lit8 v5, v5, 0x2

    add-int v2, v0, v5

    .line 465
    .local v2, icontop:I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v3, v5, Landroid/util/DisplayMetrics;->density:F

    .line 466
    .local v3, scale:F
    if-eqz v1, :cond_0

    iget v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :cond_0
    add-int v5, v2, v6

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    const/high16 v6, 0x4000

    mul-float/2addr v6, v3

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    return v5

    .end local v2           #icontop:I
    .end local v3           #scale:F
    :cond_1
    move v5, v6

    .line 458
    goto :goto_0
.end method

.method private getLastTapPosition()I
    .locals 2

    .prologue
    .line 1783
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_1

    .line 1784
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 1785
    .local v0, lastTapPosition:I
    if-ltz v0, :cond_1

    .line 1787
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1788
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1794
    .end local v0           #lastTapPosition:I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getLastTouchOffsets()J
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1631
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1632
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 1633
    .local v2, selectionController:Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 1634
    .local v1, minOffset:I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 1635
    .local v0, maxOffset:I
    invoke-static {v1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v3

    .line 1637
    .end local v0           #maxOffset:I
    .end local v1           #minOffset:I
    .end local v2           #selectionController:Landroid/widget/Editor$SelectionModifierCursorController;
    :goto_0
    return-wide v3

    :cond_0
    invoke-static {v4, v4}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v3

    goto :goto_0
.end method

.method private getPositionListener()Landroid/widget/Editor$PositionListener;
    .locals 2

    .prologue
    .line 1361
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-nez v0, :cond_0

    .line 1362
    new-instance v0, Landroid/widget/Editor$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    .line 1364
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    return-object v0
.end method

.method private getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;I)F
    .locals 1
    .parameter "layout"
    .parameter "hintLayout"
    .parameter "offset"

    .prologue
    .line 2388
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2391
    invoke-virtual {p2, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 2393
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    goto :goto_0
.end method

.method private getSelectedText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 874
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 875
    .local v1, selectionStart:I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 876
    .local v0, selectionEnd:I
    if-ltz v1, :cond_0

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    .line 878
    .local v2, selectionValid:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 880
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 883
    :goto_1
    return-object v3

    .line 876
    .end local v2           #selectionValid:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 883
    .restart local v2       #selectionValid:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getSelectionExtract(Lcom/kikin/selection/Selection$Mode;)Lcom/kikin/selection/Selection;
    .locals 9
    .parameter "selectionMode"

    .prologue
    .line 941
    iget-object v5, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    if-nez v5, :cond_0

    const/4 v0, 0x0

    .line 954
    :goto_0
    return-object v0

    .line 944
    :cond_0
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v6}, Lcom/kikin/Range;->getStartOffset()I

    move-result v6

    iget-object v7, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v7}, Lcom/kikin/Range;->getEndOffset()I

    move-result v7

    invoke-interface {v5, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 945
    .local v2, selectedText:Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 946
    .local v1, content:Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v6}, Lcom/kikin/Range;->getStartOffset()I

    move-result v6

    add-int/lit8 v6, v6, -0x32

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v7}, Lcom/kikin/Range;->getStartOffset()I

    move-result v7

    invoke-interface {v5, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 947
    .local v3, preText:Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v6}, Lcom/kikin/Range;->getEndOffset()I

    move-result v6

    iget-object v7, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v7}, Lcom/kikin/Range;->getEndOffset()I

    move-result v7

    add-int/lit8 v7, v7, 0x32

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-interface {v5, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 950
    .local v4, postText:Ljava/lang/String;
    new-instance v0, Lcom/kikin/selection/Selection;

    iget-object v5, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v5}, Lcom/kikin/Range;->getSelectionType()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v6}, Lcom/kikin/Range;->getSelectionLanguage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v7}, Lcom/kikin/Range;->getTouchedWord()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v8}, Lcom/kikin/Range;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/kikin/selection/Selection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    .local v0, selection:Lcom/kikin/selection/Selection;
    invoke-virtual {v0, p1}, Lcom/kikin/selection/Selection;->setMode(Lcom/kikin/selection/Selection$Mode;)V

    goto/16 :goto_0
.end method

.method private getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;
    .locals 7
    .parameter "text"

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 2810
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10900b3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2813
    .local v0, shadowView:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 2814
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to inflate text drag thumbnail"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2817
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sget v3, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    if-le v2, v3, :cond_1

    .line 2818
    sget v2, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    invoke-interface {p1, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2820
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2821
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2823
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2824
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2826
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2829
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2830
    .local v1, size:I
    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 2832
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 2833
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 2834
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method private hasPasswordTransformationMethod()Z
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method private hideCursorControllers()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 556
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 557
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 558
    return-void
.end method

.method private hideError()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 425
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 426
    return-void
.end method

.method private hideInsertionPointCursorController()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 526
    :cond_0
    return-void
.end method

.method private hideKikinResultsViewController()V
    .locals 2

    .prologue
    .line 977
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 978
    iget-object v0, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kikin/KikinResultsViewController;->hide(Z)V

    .line 979
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mLosingFocusDueToKikinPopup:Z

    .line 981
    :cond_0
    return-void
.end method

.method private hideSelectionModifierCursorController()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 533
    :cond_0
    return-void
.end method

.method private hideSpanControllers()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Landroid/widget/Editor;->mEasyEditSpanController:Landroid/widget/Editor$EasyEditSpanController;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Landroid/widget/Editor;->mEasyEditSpanController:Landroid/widget/Editor$EasyEditSpanController;

    invoke-virtual {v0}, Landroid/widget/Editor$EasyEditSpanController;->hide()V

    .line 549
    :cond_0
    return-void
.end method

.method private hookIME()V
    .locals 4

    .prologue
    .line 6597
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 6598
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 6599
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 6600
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 6601
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "Editor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hookIME!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6603
    :cond_0
    return-void
.end method

.method private isCursorInsideEasyCorrectionSpan()Z
    .locals 6

    .prologue
    .line 2523
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 2524
    .local v1, spannable:Landroid/text/Spannable;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 2526
    .local v2, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 2527
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 2528
    const/4 v3, 0x1

    .line 2531
    :goto_1
    return v3

    .line 2526
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2531
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isCursorInsideSuggestionSpan()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2510
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2511
    .local v1, text:Ljava/lang/CharSequence;
    instance-of v3, v1, Landroid/text/Spannable;

    if-nez v3, :cond_1

    .line 2515
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return v2

    .line 2513
    .restart local v1       #text:Ljava/lang/CharSequence;
    :cond_1
    check-cast v1, Landroid/text/Spannable;

    .end local v1           #text:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    .line 2515
    .local v0, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isHWKeyboardOpen()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 6634
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 6635
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v1, :cond_0

    const/4 v1, 0x3

    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v3, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isOffsetVisible(I)Z
    .locals 6
    .parameter "offset"

    .prologue
    .line 1413
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1414
    .local v0, layout:Landroid/text/Layout;
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 1415
    .local v1, line:I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 1416
    .local v2, lineBottom:I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v3, v4

    .line 1417
    .local v3, primaryHorizontal:I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {p0, v4, v5}, Landroid/widget/Editor;->isPositionVisible(II)Z

    move-result v4

    return v4
.end method

.method private isPositionOnText(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 1425
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1426
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 1433
    :cond_0
    :goto_0
    return v2

    .line 1428
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v1

    .line 1429
    .local v1, line:I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    .line 1431
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_0

    .line 1432
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_0

    .line 1433
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isPositionVisible(II)Z
    .locals 11
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1373
    sget-object v6, Landroid/widget/Editor;->TEMP_POSITION:[F

    monitor-enter v6

    .line 1374
    :try_start_0
    sget-object v2, Landroid/widget/Editor;->TEMP_POSITION:[F

    .line 1375
    .local v2, position:[F
    const/4 v7, 0x0

    int-to-float v8, p1

    aput v8, v2, v7

    .line 1376
    const/4 v7, 0x1

    int-to-float v8, p2

    aput v8, v2, v7

    .line 1377
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1379
    .local v3, view:Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_5

    .line 1380
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-eq v3, v7, :cond_0

    .line 1382
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 1383
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 1386
    :cond_0
    const/4 v7, 0x0

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x0

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 1388
    :cond_1
    monitor-exit v6

    .line 1409
    :goto_1
    return v4

    .line 1391
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1392
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1395
    :cond_3
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 1396
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 1398
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1399
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v7, v1, Landroid/view/View;

    if-eqz v7, :cond_4

    .line 1400
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    goto :goto_0

    .line 1403
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 1406
    .end local v1           #parent:Landroid/view/ViewParent;
    :cond_5
    monitor-exit v6

    move v4, v5

    .line 1409
    goto :goto_1

    .line 1406
    .end local v2           #position:[F
    .end local v3           #view:Landroid/view/View;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private isTextSelected()Z
    .locals 3

    .prologue
    .line 892
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 893
    .local v1, selectionStart:I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 894
    .local v0, selectionEnd:I
    if-ltz v1, :cond_0

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private playKikinSound()V
    .locals 3

    .prologue
    .line 854
    iget-object v1, p0, Landroid/widget/Editor;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 855
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x406

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 859
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 860
    .local v0, am:Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 861
    iget-object v1, p0, Landroid/widget/Editor;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_1
    :goto_0
    return-void

    .line 863
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private prepareQuickActions()V
    .locals 9

    .prologue
    .line 4160
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mMenuWrapper:Landroid/widget/Editor$MenuWrapper;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->canCopy()Z

    move-result v6

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->canPaste()Z

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v8

    if-nez v8, :cond_0

    iget-boolean v8, p0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-virtual/range {v0 .. v8}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareQuickActions(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/content/Context;ZZZZZ)V

    .line 4162
    return-void

    .line 4160
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private resetMetaStatus()V
    .locals 1

    .prologue
    .line 6644
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor;->mCapOld:I

    iput v0, p0, Landroid/widget/Editor;->mFnOld:I

    .line 6645
    return-void
.end method

.method private resumeBlink()V
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 612
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 614
    :cond_0
    return-void
.end method

.method private sendMetaStatusToIME(II)V
    .locals 2
    .parameter "fn"
    .parameter "caps"

    .prologue
    .line 6662
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6663
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "FN"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6664
    const-string v1, "CAPS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6665
    const-string v1, "TextView_MetaStatus"

    invoke-virtual {p0, v1, v0}, Landroid/widget/Editor;->sendInfoToIME(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6666
    return-void
.end method

.method private shouldBlink()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2751
    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2759
    :cond_0
    :goto_0
    return v2

    .line 2753
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 2754
    .local v1, start:I
    if-ltz v1, :cond_0

    .line 2756
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 2757
    .local v0, end:I
    if-ltz v0, :cond_0

    .line 2759
    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showError()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f00

    .line 357
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_0

    .line 358
    iput-boolean v8, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 381
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-nez v4, :cond_1

    .line 363
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 364
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x10900bb

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 367
    .local v0, err:Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 368
    .local v2, scale:F
    new-instance v4, Landroid/widget/Editor$ErrorPopup;

    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v5, v5

    const/high16 v6, 0x4248

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/Editor$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 369
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->setFocusable(Z)V

    .line 372
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4, v8}, Landroid/widget/Editor$ErrorPopup;->setInputMethodMode(I)V

    .line 375
    .end local v0           #err:Landroid/widget/TextView;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #scale:F
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 376
    .local v3, tv:Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5, v3}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 377
    iget-object v4, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v6

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/Editor$ErrorPopup;->showAsDropDown(Landroid/view/View;II)V

    .line 380
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    goto :goto_0
.end method

.method private showKikinDisabledToast()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1103
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "KIKIN_DISABLED_STATE"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1104
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v6, "com.kikin.easySearch.disabled"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1108
    .local v2, hasShownDisabledMessage:Z
    if-nez v2, :cond_0

    .line 1109
    new-instance v4, Lcom/kikin/requests/RequestSettings;

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/kikin/requests/RequestSettings;-><init>(Landroid/content/Context;)V

    .line 1110
    .local v4, settings:Lcom/kikin/requests/RequestSettings;
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x40700f6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1112
    .local v0, base:Ljava/lang/String;
    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/kikin/requests/RequestSettings;->getAppName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1113
    .local v5, toastMessage:Ljava/lang/String;
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1116
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1117
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "com.kikin.easySearch.disabled"

    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1118
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1120
    .end local v0           #base:Ljava/lang/String;
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #settings:Lcom/kikin/requests/RequestSettings;
    .end local v5           #toastMessage:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private showKikinResultsViewController(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 963
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 964
    iget-object v0, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-nez v0, :cond_0

    .line 965
    new-instance v0, Lcom/kikin/KikinResultsViewController;

    invoke-direct {v0, p0}, Lcom/kikin/KikinResultsViewController;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    .line 968
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mLosingFocusDueToKikinPopup:Z

    .line 969
    iget-object v0, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;Z)Z

    .line 971
    :cond_1
    return-void
.end method

.method private showMagnifyingGlass(II)V
    .locals 6
    .parameter "rawX"
    .parameter "rawY"

    .prologue
    .line 834
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 835
    .local v1, rootView:Landroid/view/View;
    instance-of v3, v1, Landroid/view/IMagnifyView;

    if-eqz v3, :cond_0

    .line 838
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 839
    .local v0, location:[I
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 842
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    aget v3, v0, v3

    sub-int v3, p1, v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v0, v4

    sub-int v4, p2, v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .local v2, rootViewTouchPosition:Landroid/graphics/Point;
    move-object v3, v1

    .line 845
    check-cast v3, Landroid/view/IMagnifyView;

    const/high16 v4, 0x3f80

    invoke-interface {v3, v4}, Landroid/view/IMagnifyView;->setMagnifierZoom(F)V

    .line 846
    check-cast v1, Landroid/view/IMagnifyView;

    .end local v1           #rootView:Landroid/view/View;
    invoke-interface {v1, v2}, Landroid/view/IMagnifyView;->showMagnifier(Landroid/graphics/Point;)V

    .line 848
    .end local v0           #location:[I
    .end local v2           #rootViewTouchPosition:Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method private showQuickAction()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 6107
    iget-object v9, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    if-nez v9, :cond_0

    .line 6108
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 6110
    :cond_0
    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 6111
    .local v5, r:Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 6112
    .local v7, selStart:I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    .line 6113
    .local v6, selEnd:I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 6115
    .local v2, mLayout:Landroid/text/Layout;
    if-eqz v2, :cond_b

    if-eq v7, v6, :cond_1

    if-ltz v7, :cond_1

    if-gez v6, :cond_2

    :cond_1
    iget-object v9, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_b

    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Editor$InsertionPointCursorController;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 6120
    :cond_2
    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 6121
    .local v8, startLine:I
    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 6122
    .local v0, endLine:I
    invoke-virtual {v2, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    iput v9, v5, Landroid/graphics/Rect;->top:I

    .line 6123
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    iput v9, v5, Landroid/graphics/Rect;->bottom:I

    .line 6124
    if-ne v8, v0, :cond_a

    .line 6125
    invoke-virtual {v2, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v5, Landroid/graphics/Rect;->left:I

    .line 6126
    invoke-virtual {v2, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    float-to-int v9, v9

    add-int/lit8 v9, v9, 0x1

    iput v9, v5, Landroid/graphics/Rect;->right:I

    .line 6137
    :cond_3
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    .line 6138
    .local v3, paddingLeft:I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    .line 6139
    .local v4, paddingTop:I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getGravity()I

    move-result v9

    and-int/lit8 v9, v9, 0x70

    const/16 v10, 0x30

    if-eq v9, v10, :cond_4

    .line 6140
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v9

    add-int/2addr v4, v9

    .line 6142
    :cond_4
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 6147
    .end local v0           #endLine:I
    .end local v3           #paddingLeft:I
    .end local v4           #paddingTop:I
    .end local v8           #startLine:I
    :goto_0
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v10, p0, Landroid/widget/Editor;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 6148
    iget-object v9, p0, Landroid/widget/Editor;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 6149
    iget-object v9, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_c

    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Editor$InsertionPointCursorController;->isShowing()Z

    move-result v9

    if-nez v9, :cond_6

    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Editor$SelectionModifierCursorController;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 6154
    :cond_6
    iget-object v9, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v5, v11, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 6158
    :goto_1
    iget v9, p0, Landroid/widget/Editor;->mStatusBarWindowOffset:I

    if-eqz v9, :cond_7

    .line 6159
    iget v9, p0, Landroid/widget/Editor;->mStatusBarWindowOffset:I

    invoke-virtual {v5, v11, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 6162
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Editor$InsertionPointCursorController;->isShowing()Z

    move-result v9

    if-nez v9, :cond_9

    :cond_8
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Editor$SelectionModifierCursorController;->isAllDownAnchor()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 6164
    :cond_9
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v9, v9, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/textselection/HtcTextSelectionManager;->setFineTune(Z)V

    .line 6169
    :goto_2
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v9, v9, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v11, p0, Landroid/widget/Editor;->mFlags:I

    invoke-virtual {v9, v10, v5, v11}, Lcom/htc/textselection/HtcTextSelectionManager;->showQuickAction(Landroid/widget/TextView;Landroid/graphics/Rect;I)V

    .line 6171
    return-void

    .line 6128
    .restart local v0       #endLine:I
    .restart local v8       #startLine:I
    :cond_a
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v5, Landroid/graphics/Rect;->left:I

    .line 6129
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v5, Landroid/graphics/Rect;->right:I

    .line 6130
    move v1, v8

    .local v1, i:I
    :goto_3
    if-ge v1, v0, :cond_3

    .line 6131
    iget v9, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    float-to-int v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v5, Landroid/graphics/Rect;->left:I

    .line 6132
    iget v9, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    float-to-int v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v5, Landroid/graphics/Rect;->right:I

    .line 6130
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 6144
    .end local v0           #endLine:I
    .end local v1           #i:I
    .end local v8           #startLine:I
    :cond_b
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 6156
    :cond_c
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v5, v11, v9}, Landroid/graphics/Rect;->inset(II)V

    goto/16 :goto_1

    .line 6166
    :cond_d
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v9, v9, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v9, v11}, Lcom/htc/textselection/HtcTextSelectionManager;->setFineTune(Z)V

    goto :goto_2
.end method

.method private suspendBlink()V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 607
    :cond_0
    return-void
.end method

.method private touchPositionIsInSelection()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 1332
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1333
    .local v4, selectionStart:I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1335
    .local v3, selectionEnd:I
    if-ne v4, v3, :cond_0

    .line 1357
    :goto_0
    return v7

    .line 1339
    :cond_0
    if-le v4, v3, :cond_1

    .line 1340
    move v5, v4

    .line 1341
    .local v5, tmp:I
    move v4, v3

    .line 1342
    move v3, v5

    .line 1343
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1346
    .end local v5           #tmp:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 1349
    .local v2, selectionController:Landroid/widget/Editor$SelectionModifierCursorController;
    if-nez v2, :cond_2

    .line 1350
    const-string v6, "Editor"

    const-string/jumbo v8, "selectionController is null"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1354
    :cond_2
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 1355
    .local v1, minOffset:I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 1357
    .local v0, maxOffset:I
    if-lt v1, v4, :cond_3

    if-ge v0, v3, :cond_3

    const/4 v6, 0x1

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_3
    move v6, v7

    goto :goto_1
.end method

.method private updateCursorPosition(IIIF)V
    .locals 6
    .parameter "cursorIndex"
    .parameter "top"
    .parameter "bottom"
    .parameter "horizontal"

    .prologue
    const/high16 v5, 0x3f00

    .line 2698
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    if-nez v2, :cond_0

    .line 2699
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v4, v4, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2702
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 2703
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2704
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 2705
    .local v1, width:I
    sub-float v2, p4, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 2706
    float-to-int v2, p4

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 2707
    .local v0, left:I
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, p2, v3

    add-int v4, v0, v1

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, p3

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2709
    return-void
.end method

.method private updateSpellCheckSpans(IIZ)V
    .locals 3
    .parameter "start"
    .parameter "end"
    .parameter "createSpellChecker"

    .prologue
    .line 564
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/widget/ExtractEditText;

    if-nez v0, :cond_4

    .line 571
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v0, :cond_3

    if-nez p3, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor;->mIsSCTimeoutclosed:Z

    if-eqz v0, :cond_3

    .line 572
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-boolean v0, v0, Landroid/widget/TextView;->mIsMessageApp:Z

    if-eqz v0, :cond_1

    .line 573
    invoke-virtual {p0}, Landroid/widget/Editor;->setSCtimeout()V

    .line 575
    :cond_1
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsSCTimeoutclosed:Z

    if-eqz v0, :cond_5

    .line 576
    new-instance v0, Landroid/widget/SpellChecker;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;Z)V

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 577
    if-lez p1, :cond_2

    .line 578
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/widget/SpellChecker;->spellCheck(II)V

    .line 580
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mIsSCTimeoutclosed:Z

    .line 581
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_3

    const-string v0, "Editor"

    const-string v1, "Thoroughly diabolical Message restart SpellChecker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_4

    .line 587
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    .line 590
    :cond_4
    return-void

    .line 584
    :cond_5
    new-instance v0, Landroid/widget/SpellChecker;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    goto :goto_0
.end method


# virtual methods
.method SCATDPostScan_internal(Ljava/lang/String;)V
    .locals 5
    .parameter "word"

    .prologue
    .line 6401
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v4, v4, Landroid/widget/ExtractEditText;

    if-eqz v4, :cond_1

    .line 6402
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6403
    .local v0, data:Landroid/os/Bundle;
    const-string/jumbo v4, "word"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6404
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    check-cast v4, Landroid/widget/ExtractEditText;

    invoke-interface {v4}, Landroid/widget/ExtractEditText;->getIME()Landroid/inputmethodservice/InputMethodService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 6405
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    .line 6406
    const-string v4, "com.htc.android.htcime.rescanword"

    invoke-interface {v2, v4, v0}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 6421
    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return-void

    .line 6409
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 6410
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    .line 6412
    :cond_2
    iget-object v4, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6413
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 6418
    .end local v3           #s:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6419
    invoke-direct {p0, p1}, Landroid/widget/Editor;->SCATDRemoveSpan(Ljava/lang/String;)V

    goto :goto_0
.end method

.method SCATDProcessQueue()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 6454
    iget-object v1, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 6467
    :cond_0
    :goto_0
    return-void

    .line 6457
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    if-nez v1, :cond_2

    .line 6458
    new-instance v1, Landroid/widget/Editor$SCATDHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/Editor$SCATDHandler;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    .line 6460
    :cond_2
    sget-boolean v1, Landroid/widget/Editor;->mSCATDPROCESSING:Z

    if-nez v1, :cond_0

    .line 6463
    sput-boolean v5, Landroid/widget/Editor;->mSCATDPROCESSING:Z

    .line 6464
    iget-object v2, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    new-instance v3, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v3}, Landroid/widget/Editor$SCATDHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6465
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/Editor$SCATDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method SCATDWordAdded(Ljava/lang/String;)V
    .locals 4
    .parameter "word"

    .prologue
    .line 6389
    iget-object v1, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    if-eqz v1, :cond_0

    .line 6391
    iget-object v1, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Editor$SCATDHandler;->removeMessages(I)V

    .line 6392
    iget-object v1, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/Editor$SCATDHandler;->removeMessages(I)V

    .line 6393
    iget-object v1, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/Editor$SCATDHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6394
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/Editor$SCATDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6396
    .end local v0           #m:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public addSpanWatchers(Landroid/text/Spannable;)V
    .locals 4
    .parameter "text"

    .prologue
    const/16 v3, 0x12

    const/4 v2, 0x0

    .line 2919
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 2921
    .local v0, textLength:I
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    .line 2922
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2925
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mEasyEditSpanController:Landroid/widget/Editor$EasyEditSpanController;

    if-nez v1, :cond_1

    .line 2926
    new-instance v1, Landroid/widget/Editor$EasyEditSpanController;

    invoke-direct {v1, p0}, Landroid/widget/Editor$EasyEditSpanController;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mEasyEditSpanController:Landroid/widget/Editor$EasyEditSpanController;

    .line 2928
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mEasyEditSpanController:Landroid/widget/Editor$EasyEditSpanController;

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2929
    return-void
.end method

.method adjustInputType(ZZZZ)V
    .locals 2
    .parameter "password"
    .parameter "passwordInputType"
    .parameter "webPasswordInputType"
    .parameter "numberPasswordInputType"

    .prologue
    .line 621
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 622
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 623
    :cond_0
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 626
    :cond_1
    if-eqz p3, :cond_2

    .line 627
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0xe0

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 636
    :cond_2
    :goto_0
    return-void

    .line 630
    :cond_3
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 631
    if-eqz p4, :cond_2

    .line 632
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method areSuggestionsShown()Z
    .locals 1

    .prologue
    .line 2738
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beginBatchEdit()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1943
    iput-boolean v5, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 1944
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1945
    .local v0, ims:Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    .line 1946
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1947
    .local v1, nesting:I
    if-ne v1, v5, :cond_0

    .line 1948
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    .line 1949
    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 1950
    iget-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-eqz v2, :cond_1

    .line 1953
    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1954
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1960
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 1963
    .end local v1           #nesting:I
    :cond_0
    return-void

    .line 1956
    .restart local v1       #nesting:I
    :cond_1
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1957
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1958
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_0
.end method

.method public canReplaceActionMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4148
    sget-boolean v2, Landroid/widget/Editor;->IS_KIKIN_ENABLED:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4155
    :cond_0
    :goto_0
    return v0

    .line 4152
    :cond_1
    sget-boolean v2, Landroid/widget/Editor;->isTablet:Z

    if-nez v2, :cond_2

    move v0, v1

    .line 4153
    goto :goto_0

    .line 4155
    :cond_2
    iget-boolean v2, p0, Landroid/widget/Editor;->mIsChildOfActionBarView:Z

    if-nez v2, :cond_3

    iget v2, p0, Landroid/widget/Editor;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_3

    iget v2, p0, Landroid/widget/Editor;->mFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method checkMetaStatus(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "editingBuffer"

    .prologue
    .line 6647
    iget-boolean v2, p0, Landroid/widget/Editor;->mIsTextEditor:Z

    if-nez v2, :cond_1

    .line 6660
    :cond_0
    :goto_0
    return-void

    .line 6650
    :cond_1
    const/4 v2, 0x1

    invoke-static {p1, v2}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v2

    const/16 v3, 0x800

    invoke-static {p1, v3}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    or-int v0, v2, v3

    .line 6652
    .local v0, caps:I
    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 6655
    .local v1, fn:I
    iget v2, p0, Landroid/widget/Editor;->mFnOld:I

    if-ne v2, v1, :cond_2

    iget v2, p0, Landroid/widget/Editor;->mCapOld:I

    if-eq v2, v0, :cond_0

    .line 6656
    :cond_2
    invoke-direct {p0, v1, v0}, Landroid/widget/Editor;->sendMetaStatusToIME(II)V

    .line 6657
    iput v1, p0, Landroid/widget/Editor;->mFnOld:I

    .line 6658
    iput v0, p0, Landroid/widget/Editor;->mCapOld:I

    goto :goto_0
.end method

.method clearAndHook(Z)V
    .locals 4
    .parameter "needhook"

    .prologue
    .line 6606
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor;->isHWKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6607
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mHookIME:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6608
    if-eqz p1, :cond_0

    .line 6609
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mHookIME:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Editor$Blink;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6611
    :cond_0
    return-void
.end method

.method createInputContentTypeIfNeeded()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Landroid/widget/Editor$InputContentType;

    invoke-direct {v0}, Landroid/widget/Editor$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 474
    :cond_0
    return-void
.end method

.method createInputMethodStateIfNeeded()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Landroid/widget/Editor$InputMethodState;

    invoke-direct {v0}, Landroid/widget/Editor$InputMethodState;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 480
    :cond_0
    return-void
.end method

.method public enableHtcTextSelection(ZI)V
    .locals 4
    .parameter "enable"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 5997
    if-eqz p1, :cond_9

    .line 5998
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/htc/textselection/HtcTextSelectionManager;->getInstance()Lcom/htc/textselection/HtcTextSelectionManager;

    move-result-object v2

    iput-object v2, v1, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    .line 5999
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v1

    if-nez v1, :cond_8

    .line 6000
    iput-boolean v3, p0, Landroid/widget/Editor;->mIgnoreSetText:Z

    .line 6001
    iput v3, p0, Landroid/widget/Editor;->mFlags:I

    .line 6002
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 6003
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    .line 6004
    iget v1, p0, Landroid/widget/Editor;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/Editor;->mFlags:I

    .line 6005
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6006
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 6010
    :cond_1
    :goto_0
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2

    .line 6011
    iget v1, p0, Landroid/widget/Editor;->mFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/widget/Editor;->mFlags:I

    .line 6013
    :cond_2
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_3

    .line 6014
    iget v1, p0, Landroid/widget/Editor;->mFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Landroid/widget/Editor;->mFlags:I

    .line 6016
    :cond_3
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_4

    .line 6017
    iget v1, p0, Landroid/widget/Editor;->mFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/widget/Editor;->mFlags:I

    .line 6025
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 6026
    iget-boolean v1, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-eqz v1, :cond_7

    .line 6028
    :cond_5
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 6029
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_7

    .line 6030
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v1, :cond_6

    .line 6031
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 6033
    :cond_6
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_7

    .line 6034
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 6043
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_7
    return-void

    .line 6008
    :cond_8
    iget v1, p0, Landroid/widget/Editor;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/Editor;->mFlags:I

    goto :goto_0

    .line 6019
    :cond_9
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 6020
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iput-object v2, v1, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    .line 6021
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor;->mFlags:I

    .line 6022
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/textselection/HtcTextSelectionManager;

    if-eqz v1, :cond_4

    .line 6023
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_1
.end method

.method public enableHtcTextSelection(ZZ)V
    .locals 1
    .parameter "enable"
    .parameter "triggerByLongClick"

    .prologue
    .line 6050
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/Editor;->enableHtcTextSelection(ZI)V

    .line 6052
    return-void

    .line 6050
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public endBatchEdit()V
    .locals 3

    .prologue
    .line 1966
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 1967
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1968
    .local v0, ims:Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    .line 1969
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, -0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1970
    .local v1, nesting:I
    if-nez v1, :cond_0

    .line 1971
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 1974
    .end local v1           #nesting:I
    :cond_0
    return-void
.end method

.method ensureEndedBatchEdit()V
    .locals 2

    .prologue
    .line 1977
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1978
    .local v0, ims:Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_0

    .line 1979
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1980
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 1982
    :cond_0
    return-void
.end method

.method extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 6
    .parameter "request"
    .parameter "outText"

    .prologue
    const/4 v2, -0x1

    .line 2000
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V
    .locals 1
    .parameter "ims"

    .prologue
    .line 1985
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1987
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    .line 1988
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 1989
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 1994
    :cond_1
    :goto_0
    return-void

    .line 1990
    :cond_2
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_1

    .line 1992
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_0
.end method

.method public getAnchorHeight()I
    .locals 1

    .prologue
    .line 4141
    iget v0, p0, Landroid/widget/Editor;->mAnchorHeight:I

    return v0
.end method

.method public getIgnoreSetTextFlag()Z
    .locals 1

    .prologue
    .line 5982
    iget-boolean v0, p0, Landroid/widget/Editor;->mIgnoreSetText:Z

    return v0
.end method

.method getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2667
    iget-boolean v2, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v2, :cond_0

    iget v2, p0, Landroid/widget/Editor;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    .line 2679
    :goto_0
    return-object v1

    .line 2672
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-nez v2, :cond_1

    .line 2673
    new-instance v2, Landroid/widget/Editor$InsertionPointCursorController;

    invoke-direct {v2, p0, v1}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 2675
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2676
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2679
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    goto :goto_0
.end method

.method public getIsInTextSelectionMode()Z
    .locals 1

    .prologue
    .line 5986
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    return v0
.end method

.method public getIsLongPressed()Z
    .locals 1

    .prologue
    .line 5994
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    return v0
.end method

.method public getIsmScrolled()Z
    .locals 1

    .prologue
    .line 5990
    iget-boolean v0, p0, Landroid/widget/Editor;->mScrolled:Z

    return v0
.end method

.method public getKikinResultsViewController()Lcom/kikin/KikinResultsViewController;
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-nez v0, :cond_0

    .line 1003
    new-instance v0, Lcom/kikin/KikinResultsViewController;

    invoke-direct {v0, p0}, Lcom/kikin/KikinResultsViewController;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    .line 1005
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    return-object v0
.end method

.method getOwnerViewRoot()Landroid/view/ViewRootImpl;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 6622
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 6623
    .local v1, rootViewOfOwner:Landroid/view/View;
    if-nez v1, :cond_0

    move-object v0, v2

    .line 6630
    :goto_0
    return-object v0

    .line 6626
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6627
    .local v0, parentOfRootView:Landroid/view/ViewParent;
    instance-of v3, v0, Landroid/view/ViewRootImpl;

    if-eqz v3, :cond_1

    .line 6628
    check-cast v0, Landroid/view/ViewRootImpl;

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 6630
    goto :goto_0
.end method

.method getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;
    .locals 2

    .prologue
    .line 2683
    iget-boolean v1, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 2684
    const/4 v1, 0x0

    .line 2694
    :goto_0
    return-object v1

    .line 2687
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-nez v1, :cond_1

    .line 2688
    new-instance v1, Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-direct {v1, p0}, Landroid/widget/Editor$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 2690
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2691
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2694
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    goto :goto_0
.end method

.method public getTextSelectionFlags()I
    .locals 1

    .prologue
    .line 5978
    iget v0, p0, Landroid/widget/Editor;->mFlags:I

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    .prologue
    .line 1300
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_0

    .line 1301
    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 1303
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method public handleLongClickUpEvent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 2579
    iget-boolean v4, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2580
    sget-boolean v4, Landroid/widget/Editor;->mRemoveMagnifier:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v4, v4, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v4}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    .line 2582
    :cond_0
    const/4 v2, 0x0

    .line 2583
    .local v2, composingToSelection:Z
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isInputMethodTarget()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_1

    .line 2584
    const/4 v1, -0x1

    .line 2585
    .local v1, candStart:I
    const/4 v0, -0x1

    .line 2586
    .local v0, candEnd:I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .line 2587
    .local v3, sp:Landroid/text/Spannable;
    invoke-static {v3}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 2588
    invoke-static {v3}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .line 2589
    if-eq v5, v1, :cond_1

    if-eq v5, v0, :cond_1

    .line 2590
    invoke-static {v3, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 2591
    const/4 v2, 0x1

    .line 2608
    .end local v0           #candEnd:I
    .end local v1           #candStart:I
    .end local v3           #sp:Landroid/text/Spannable;
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v4, v4, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v4}, Lcom/htc/textselection/HtcTextSelectionManager;->stopAutoScroll()V

    .line 2609
    invoke-direct {p0, v6}, Landroid/widget/Editor;->disallowInterceptTouchEvent(Z)V

    .line 2610
    iput-boolean v6, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    .line 2612
    .end local v2           #composingToSelection:Z
    :cond_2
    return-void
.end method

.method hasInsertionController()Z
    .locals 1

    .prologue
    .line 2656
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    return v0
.end method

.method hasSelectionController()Z
    .locals 1

    .prologue
    .line 2663
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    return v0
.end method

.method public hideControllers()V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 542
    invoke-direct {p0}, Landroid/widget/Editor;->hideSpanControllers()V

    .line 543
    return-void
.end method

.method public hideMagnifyingGlass()V
    .locals 2

    .prologue
    .line 793
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 794
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Landroid/view/IMagnifyView;

    if-eqz v1, :cond_0

    .line 795
    check-cast v0, Landroid/view/IMagnifyView;

    .end local v0           #view:Landroid/view/View;
    invoke-interface {v0}, Landroid/view/IMagnifyView;->hideMagnifier()V

    .line 797
    :cond_0
    return-void
.end method

.method public hideSelectionHandles()V
    .locals 1

    .prologue
    .line 989
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 991
    :cond_0
    return-void
.end method

.method hideSuggestions()V
    .locals 1

    .prologue
    .line 6375
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    .line 6376
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 6377
    :cond_0
    return-void
.end method

.method invalidateTextDisplayList()V
    .locals 2

    .prologue
    .line 2352
    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    if-eqz v1, :cond_1

    .line 2353
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2354
    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/DisplayList;->invalidate()V

    .line 2353
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2357
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method invalidateTextDisplayList(Landroid/text/Layout;II)V
    .locals 9
    .parameter "layout"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2323
    iget-object v8, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    if-eqz v8, :cond_2

    instance-of v8, p1, Landroid/text/DynamicLayout;

    if-eqz v8, :cond_2

    .line 2324
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 2325
    .local v4, firstLine:I
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .local v6, lastLine:I
    move-object v3, p1

    .line 2327
    check-cast v3, Landroid/text/DynamicLayout;

    .line 2328
    .local v3, dynamicLayout:Landroid/text/DynamicLayout;
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v0

    .line 2329
    .local v0, blockEndLines:[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v2

    .line 2330
    .local v2, blockIndices:[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v7

    .line 2332
    .local v7, numberOfBlocks:I
    const/4 v5, 0x0

    .line 2334
    .local v5, i:I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 2335
    aget v8, v0, v5

    if-lt v8, v4, :cond_3

    .line 2340
    :cond_0
    :goto_1
    if-ge v5, v7, :cond_2

    .line 2341
    aget v1, v2, v5

    .line 2342
    .local v1, blockIndex:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    .line 2343
    iget-object v8, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/view/DisplayList;->invalidate()V

    .line 2345
    :cond_1
    aget v8, v0, v5

    if-lt v8, v6, :cond_4

    .line 2349
    .end local v0           #blockEndLines:[I
    .end local v1           #blockIndex:I
    .end local v2           #blockIndices:[I
    .end local v3           #dynamicLayout:Landroid/text/DynamicLayout;
    .end local v4           #firstLine:I
    .end local v5           #i:I
    .end local v6           #lastLine:I
    .end local v7           #numberOfBlocks:I
    :cond_2
    return-void

    .line 2336
    .restart local v0       #blockEndLines:[I
    .restart local v2       #blockIndices:[I
    .restart local v3       #dynamicLayout:Landroid/text/DynamicLayout;
    .restart local v4       #firstLine:I
    .restart local v5       #i:I
    .restart local v6       #lastLine:I
    .restart local v7       #numberOfBlocks:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2346
    .restart local v1       #blockIndex:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 2347
    goto :goto_1
.end method

.method isCursorVisible()Z
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectingText()Z
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kikinHelper()V
    .locals 3

    .prologue
    .line 1076
    sget-boolean v1, Landroid/widget/Editor;->IS_KIKIN_ENABLED:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1077
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    if-nez v1, :cond_0

    .line 1079
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/Editor;->createRangeFromSelection(II)Lcom/kikin/Range;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    .line 1083
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->isTextSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1084
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1085
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 1087
    :cond_1
    sget-object v1, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    invoke-direct {p0, v1}, Landroid/widget/Editor;->getSelectionExtract(Lcom/kikin/selection/Selection$Mode;)Lcom/kikin/selection/Selection;

    move-result-object v0

    .line 1088
    .local v0, selection:Lcom/kikin/selection/Selection;
    if-eqz v0, :cond_2

    .line 1090
    invoke-direct {p0, v0}, Landroid/widget/Editor;->doKikinSearch(Lcom/kikin/selection/Selection;)V

    .line 1094
    .end local v0           #selection:Lcom/kikin/selection/Selection;
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor;->mSelectWordOnDragging:Z

    .line 1096
    :cond_3
    return-void
.end method

.method makeBlink()V
    .locals 6

    .prologue
    .line 2763
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2764
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 2765
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$Blink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 2766
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2768
    sget-boolean v0, Landroid/widget/Editor;->mIsBlackTimeShorter:Z

    if-eqz v0, :cond_2

    .line 2769
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-wide v2, p0, Landroid/widget/Editor;->mShowCursor:J

    sget v4, Landroid/widget/Editor;->BLINK_WHITE:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Editor$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 2775
    :cond_1
    :goto_0
    return-void

    .line 2771
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-wide v2, p0, Landroid/widget/Editor;->mShowCursor:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Editor$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2773
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 280
    iget-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    if-eqz v1, :cond_0

    .line 281
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 282
    iput-boolean v3, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 284
    :cond_0
    iput-boolean v3, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    .line 286
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 289
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 292
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_2

    .line 293
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 294
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 296
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v3, v1, v2}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 299
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasTransientState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 304
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 307
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 309
    :cond_3
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 2720
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-nez v0, :cond_0

    .line 2721
    new-instance v0, Landroid/widget/Editor$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$CorrectionHighlighter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    .line 2726
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 2727
    return-void

    .line 2723
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    const/4 v1, 0x0

    #calls: Landroid/widget/Editor$CorrectionHighlighter;->invalidate(Z)V
    invoke-static {v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->access$500(Landroid/widget/Editor$CorrectionHighlighter;Z)V

    goto :goto_0
.end method

.method onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 316
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 320
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 324
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_3

    .line 325
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 328
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 329
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 332
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 334
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_5

    .line 335
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 341
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 342
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 343
    iput-boolean v2, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 344
    iput-boolean v2, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    .line 347
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    if-eqz v0, :cond_6

    .line 348
    iput-boolean v2, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    .line 349
    invoke-direct {p0, v2}, Landroid/widget/Editor;->disallowInterceptTouchEvent(Z)V

    .line 353
    :cond_6
    invoke-direct {p0}, Landroid/widget/Editor;->SCATDStop()V

    .line 354
    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 23
    .parameter "canvas"
    .parameter "layout"
    .parameter "highlight"
    .parameter "highlightPaint"
    .parameter "cursorOffsetVertical"

    .prologue
    .line 2116
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 2117
    .local v7, selectionStart:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 2119
    .local v8, selectionEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    move-object/from16 v17, v0

    .line 2120
    .local v17, ims:Landroid/widget/Editor$InputMethodState;
    if-eqz v17, :cond_4

    move-object/from16 v0, v17

    iget v6, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v6, :cond_4

    .line 2121
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 2122
    .local v5, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_4

    .line 2123
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2124
    const/16 v19, 0x0

    .line 2125
    .local v19, reported:Z
    move-object/from16 v0, v17

    iget-boolean v6, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v6, :cond_0

    move-object/from16 v0, v17

    iget-boolean v6, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v6, :cond_1

    .line 2129
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->reportExtractedText()Z

    move-result v19

    .line 2131
    :cond_1
    if-nez v19, :cond_3

    if-eqz p3, :cond_3

    .line 2132
    const/4 v9, -0x1

    .line 2133
    .local v9, candStart:I
    const/4 v10, -0x1

    .line 2134
    .local v10, candEnd:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    instance-of v6, v6, Landroid/text/Spannable;

    if-eqz v6, :cond_2

    .line 2135
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    check-cast v20, Landroid/text/Spannable;

    .line 2136
    .local v20, sp:Landroid/text/Spannable;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v9

    .line 2137
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v10

    .line 2139
    .end local v20           #sp:Landroid/text/Spannable;
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 2146
    .end local v9           #candStart:I
    .end local v10           #candEnd:I
    .end local v19           #reported:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz p3, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->disableUpdateCursorPositionByExtras()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2147
    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 2153
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v18, v0

    .line 2154
    .local v18, onScreenOffset:[I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 2155
    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v11, 0x0

    aget v11, v18, v11

    int-to-float v11, v11

    const/4 v12, 0x1

    aget v12, v18, v12

    int-to-float v12, v12

    invoke-virtual {v6, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 2156
    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getScrollY()I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {v6, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 2159
    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v11, 0x0

    move/from16 v0, p5

    int-to-float v12, v0

    invoke-virtual {v6, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 2161
    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    float-to-double v11, v11

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v11, v11

    move-object/from16 v0, v17

    iget-object v12, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    float-to-double v12, v12

    const-wide/high16 v14, 0x3fe0

    add-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, v17

    iget-object v13, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    float-to-double v13, v13

    const-wide/high16 v15, 0x3fe0

    add-double/2addr v13, v15

    double-to-int v13, v13

    move-object/from16 v0, v17

    iget-object v14, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    float-to-double v14, v14

    const-wide/high16 v21, 0x3fe0

    add-double v14, v14, v21

    double-to-int v14, v14

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 2167
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v13, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v14, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v15, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object v11, v5

    invoke-virtual/range {v11 .. v16}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2177
    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v18           #onScreenOffset:[I
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-eqz v6, :cond_5

    .line 2178
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v6, v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    .line 2181
    :cond_5
    if-eqz p3, :cond_6

    if-ne v7, v8, :cond_6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/Editor;->mCursorCount:I

    if-lez v6, :cond_6

    .line 2182
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor;->drawCursor(Landroid/graphics/Canvas;I)V

    .line 2185
    const/16 p3, 0x0

    .line 2188
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->canHaveDisplayList()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2189
    invoke-direct/range {p0 .. p5}, Landroid/widget/Editor;->drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 2194
    :goto_1
    return-void

    .line 2192
    :cond_7
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_1

    .line 2170
    .restart local v5       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v18       #onScreenOffset:[I
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method onDrop(Landroid/view/DragEvent;)V
    .locals 25
    .parameter "event"

    .prologue
    .line 2849
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v22, ""

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2850
    .local v4, content:Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 2851
    .local v3, clipData:Landroid/content/ClipData;
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v11

    .line 2852
    .local v11, itemCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v11, :cond_0

    .line 2853
    invoke-virtual {v3, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    .line 2854
    .local v10, item:Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2852
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2857
    .end local v10           #item:Landroid/content/ClipData$Item;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v17

    .line 2859
    .local v17, offset:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v12

    .line 2860
    .local v12, localState:Ljava/lang/Object;
    const/4 v6, 0x0

    .line 2861
    .local v6, dragLocalState:Landroid/widget/Editor$DragLocalState;
    instance-of v0, v12, Landroid/widget/Editor$DragLocalState;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object v6, v12

    .line 2862
    check-cast v6, Landroid/widget/Editor$DragLocalState;

    .line 2864
    :cond_1
    if-eqz v6, :cond_3

    iget-object v0, v6, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3

    const/4 v5, 0x1

    .line 2867
    .local v5, dragDropIntoItself:Z
    :goto_1
    if-eqz v5, :cond_4

    .line 2868
    iget v0, v6, Landroid/widget/Editor$DragLocalState;->start:I

    move/from16 v22, v0

    move/from16 v0, v17

    move/from16 v1, v22

    if-lt v0, v1, :cond_4

    iget v0, v6, Landroid/widget/Editor$DragLocalState;->end:I

    move/from16 v22, v0

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 2916
    :cond_2
    :goto_2
    return-void

    .line 2864
    .end local v5           #dragDropIntoItself:Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 2874
    .restart local v5       #dragDropIntoItself:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v18

    .line 2875
    .local v18, originalLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v15

    .line 2876
    .local v15, minMax:J
    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v14

    .line 2877
    .local v14, min:I
    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v13

    .line 2878
    .local v13, max:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    check-cast v22, Landroid/text/Spannable;

    move-object/from16 v0, v22

    invoke-static {v0, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2879
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v13, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 2881
    if-eqz v5, :cond_2

    .line 2882
    iget v8, v6, Landroid/widget/Editor$DragLocalState;->start:I

    .line 2883
    .local v8, dragSourceStart:I
    iget v7, v6, Landroid/widget/Editor$DragLocalState;->end:I

    .line 2887
    .local v7, dragSourceEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    sub-int v20, v22, v18

    .line 2888
    .local v20, shift:I
    add-int v8, v8, v20

    .line 2889
    add-int v7, v7, v20

    .line 2890
    const/16 v21, 0x0

    .line 2892
    .local v21, t:Ljava/lang/CharSequence;
    if-gt v13, v8, :cond_7

    .line 2893
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    add-int/lit8 v23, v8, -0x1

    add-int/lit8 v24, v8, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v21

    .line 2894
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 2906
    :goto_3
    if-eqz v8, :cond_5

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v22

    if-eqz v22, :cond_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    move/from16 v0, v22

    if-eq v8, v0, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 2910
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    move/from16 v0, v22

    if-ne v8, v0, :cond_8

    add-int/lit8 v19, v8, -0x1

    .line 2912
    .local v19, pos:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    add-int/lit8 v23, v19, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V

    goto/16 :goto_2

    .line 2896
    .end local v19           #pos:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    add-int/lit8 v23, v8, -0x1

    add-int/lit8 v24, v8, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v21

    .line 2897
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    iget v0, v6, Landroid/widget/Editor$DragLocalState;->start:I

    move/from16 v23, v0

    iget v0, v6, Landroid/widget/Editor$DragLocalState;->end:I

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/widget/TextView;->deleteText_internal(II)V

    goto :goto_3

    :cond_8
    move/from16 v19, v8

    .line 2910
    goto :goto_4
.end method

.method onFocusChanged(ZI)V
    .locals 10
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1643
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 1644
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    .line 1646
    if-eqz p1, :cond_c

    .line 1647
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1648
    .local v4, selStart:I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1652
    .local v3, selEnd:I
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_a

    if-nez v4, :cond_a

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v3, v5, :cond_a

    move v0, v6

    .line 1655
    .local v0, isFocusHighlighted:Z
    :goto_0
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_b

    if-nez v0, :cond_b

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 1658
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_0

    if-ltz v4, :cond_0

    if-gez v3, :cond_6

    .line 1661
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTapPosition()I

    move-result v1

    .line 1662
    .local v1, lastTapPosition:I
    if-ltz v1, :cond_1

    .line 1663
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1667
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v2

    .line 1668
    .local v2, mMovement:Landroid/text/method/MovementMethod;
    if-eqz v2, :cond_2

    .line 1669
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v2, v8, v5, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 1677
    :cond_2
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v5, v5, Landroid/widget/ExtractEditText;

    if-nez v5, :cond_3

    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    if-eqz v5, :cond_4

    :cond_3
    if-ltz v4, :cond_4

    if-ltz v3, :cond_4

    .line 1688
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1691
    :cond_4
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_5

    .line 1692
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->selectAllText()Z

    .line 1695
    :cond_5
    iput-boolean v6, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1698
    .end local v1           #lastTapPosition:I
    .end local v2           #mMovement:Landroid/text/method/MovementMethod;
    :cond_6
    iput-boolean v7, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    .line 1699
    iput-boolean v7, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 1701
    invoke-direct {p0}, Landroid/widget/Editor;->resetMetaStatus()V

    .line 1703
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v5, :cond_7

    .line 1704
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 1707
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1710
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 1711
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1712
    sget-boolean v5, Landroid/widget/Editor;->mRemoveMagnifier:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v5}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    .line 1713
    :cond_8
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v5, v7}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 1749
    .end local v0           #isFocusHighlighted:Z
    .end local v3           #selEnd:I
    .end local v4           #selStart:I
    :cond_9
    :goto_2
    return-void

    .restart local v3       #selEnd:I
    .restart local v4       #selStart:I
    :cond_a
    move v0, v7

    .line 1652
    goto/16 :goto_0

    .restart local v0       #isFocusHighlighted:Z
    :cond_b
    move v5, v7

    .line 1655
    goto/16 :goto_1

    .line 1718
    .end local v0           #isFocusHighlighted:Z
    .end local v3           #selEnd:I
    .end local v4           #selStart:I
    :cond_c
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v5, :cond_d

    .line 1719
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 1722
    :cond_d
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1724
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v5, v5, Landroid/widget/ExtractEditText;

    if-eqz v5, :cond_10

    .line 1727
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1728
    .restart local v4       #selStart:I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1729
    .restart local v3       #selEnd:I
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 1731
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1732
    sget-boolean v5, Landroid/widget/Editor;->mRemoveMagnifier:Z

    if-nez v5, :cond_e

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v5}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    .line 1733
    :cond_e
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v5, v7}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 1736
    :cond_f
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1745
    .end local v3           #selEnd:I
    .end local v4           #selStart:I
    :goto_3
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v5, :cond_9

    .line 1746
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    goto :goto_2

    .line 1738
    :cond_10
    iget-boolean v5, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    if-eqz v5, :cond_11

    iput-boolean v6, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 1739
    :cond_11
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 1740
    iget-boolean v5, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    if-eqz v5, :cond_12

    iput-boolean v7, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 1741
    :cond_12
    invoke-direct {p0}, Landroid/widget/Editor;->downgradeEasyCorrectionSpans()V

    goto :goto_3
.end method

.method onLocaleChanged()V
    .locals 1

    .prologue
    .line 1285
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 1286
    return-void
.end method

.method public onOverflowMenuClosed()V
    .locals 1

    .prologue
    .line 821
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mLosingFocusDueToOverflowMenu:Z

    .line 822
    return-void
.end method

.method public onOverflowMenuCreated()V
    .locals 1

    .prologue
    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mLosingFocusDueToOverflowMenu:Z

    .line 810
    return-void
.end method

.method onScreenStateChanged(I)V
    .locals 0
    .parameter "screenState"

    .prologue
    .line 593
    packed-switch p1, :pswitch_data_0

    .line 601
    :goto_0
    return-void

    .line 595
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    goto :goto_0

    .line 598
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    goto :goto_0

    .line 593
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onScrollChanged()V
    .locals 1

    .prologue
    .line 2742
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-eqz v0, :cond_0

    .line 2743
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onScrollChanged()V

    .line 2745
    :cond_0
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1852
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/Editor;->mLastTouchDownRawX:I

    .line 1853
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/Editor;->mLastTouchDownRawY:I

    .line 1857
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1858
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1861
    :cond_0
    iget-object v6, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v6, :cond_1

    .line 1862
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1863
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 1866
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-nez v6, :cond_2

    .line 1867
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 1868
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    .line 1872
    iput-boolean v5, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1873
    iput-boolean v5, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    .line 1875
    iput-boolean v5, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    .line 1876
    iput-boolean v5, p0, Landroid/widget/Editor;->mScrolled:Z

    .line 1881
    :cond_2
    sget-boolean v6, Landroid/widget/Editor;->IS_KIKIN_ENABLED:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v6

    if-nez v6, :cond_a

    .line 1882
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1886
    .local v0, action:I
    iget-boolean v6, p0, Landroid/widget/Editor;->mSelectWordOnDragging:Z

    if-eqz v6, :cond_7

    const/4 v6, 0x2

    if-ne v0, v6, :cond_7

    .line 1888
    iget v6, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    iget v6, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_4

    :cond_3
    move v2, v4

    .line 1889
    .local v2, didTouchMove:Z
    :goto_0
    if-nez v2, :cond_5

    .line 1938
    .end local v0           #action:I
    .end local v2           #didTouchMove:Z
    :goto_1
    return v4

    .restart local v0       #action:I
    :cond_4
    move v2, v5

    .line 1888
    goto :goto_0

    .line 1892
    .restart local v2       #didTouchMove:Z
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 1893
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    .line 1896
    invoke-virtual {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v1

    .line 1897
    .local v1, didSelect:Z
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1899
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 1903
    :cond_6
    iget v5, p0, Landroid/widget/Editor;->mLastTouchDownRawX:I

    iget v6, p0, Landroid/widget/Editor;->mLastTouchDownRawY:I

    invoke-direct {p0, v5, v6}, Landroid/widget/Editor;->showMagnifyingGlass(II)V

    goto :goto_1

    .line 1910
    .end local v1           #didSelect:Z
    .end local v2           #didTouchMove:Z
    :cond_7
    if-eq v0, v4, :cond_8

    if-ne v0, v8, :cond_a

    .line 1912
    :cond_8
    invoke-virtual {p0}, Landroid/widget/Editor;->hideMagnifyingGlass()V

    .line 1915
    if-ne v0, v4, :cond_b

    invoke-direct {p0}, Landroid/widget/Editor;->isTextSelected()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1916
    iput-boolean v4, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    .line 1917
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v6, v4, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-virtual {v6, v7, v4}, Lcom/htc/textselection/HtcTextSelectionManager;->onStartSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 1920
    sget-object v4, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    invoke-direct {p0, v4}, Landroid/widget/Editor;->getSelectionExtract(Lcom/kikin/selection/Selection$Mode;)Lcom/kikin/selection/Selection;

    move-result-object v3

    .line 1921
    .local v3, selection:Lcom/kikin/selection/Selection;
    if-eqz v3, :cond_9

    .line 1923
    invoke-direct {p0, v3}, Landroid/widget/Editor;->doKikinSearch(Lcom/kikin/selection/Selection;)V

    .line 1934
    .end local v3           #selection:Lcom/kikin/selection/Selection;
    :cond_9
    :goto_2
    iput-boolean v5, p0, Landroid/widget/Editor;->mSelectWordOnDragging:Z

    .end local v0           #action:I
    :cond_a
    move v4, v5

    .line 1938
    goto :goto_1

    .line 1926
    .restart local v0       #action:I
    :cond_b
    if-ne v0, v8, :cond_9

    .line 1928
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 1929
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1930
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    goto :goto_2
.end method

.method onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, -0x1

    .line 2536
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 2537
    .local v2, oldSelStart:I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 2539
    .local v1, oldSelEnd:I
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x1

    .line 2540
    .local v3, selectAllGotFocus:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 2541
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 2542
    .local v4, text:Ljava/lang/CharSequence;
    if-nez v3, :cond_5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 2544
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 2545
    .local v0, offset:I
    check-cast v4, Landroid/text/Spannable;

    .end local v4           #text:Ljava/lang/CharSequence;
    invoke-static {v4, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2546
    iget-object v5, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v5, :cond_0

    .line 2548
    iget-object v5, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v5}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 2550
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2551
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2552
    new-instance v5, Landroid/widget/Editor$1;

    invoke-direct {v5, p0}, Landroid/widget/Editor$1;-><init>(Landroid/widget/Editor;)V

    iput-object v5, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 2558
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v6, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2569
    .end local v0           #offset:I
    :cond_1
    :goto_1
    iget-boolean v5, p0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/widget/Editor;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    iget-boolean v5, p0, Landroid/widget/Editor;->mScrolled:Z

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne v2, v9, :cond_2

    if-ne v2, v9, :cond_2

    .line 2572
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 2575
    :cond_2
    return-void

    .line 2539
    .end local v3           #selectAllGotFocus:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 2560
    .restart local v0       #offset:I
    .restart local v3       #selectAllGotFocus:Z
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2561
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    goto :goto_1

    .line 2565
    .end local v0           #offset:I
    .restart local v4       #text:Ljava/lang/CharSequence;
    :cond_5
    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->canPaste()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2566
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v5

    #calls: Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;
    invoke-static {v5}, Landroid/widget/Editor$InsertionPointCursorController;->access$200(Landroid/widget/Editor$InsertionPointCursorController;)Landroid/widget/Editor$InsertionHandleView;

    move-result-object v5

    #calls: Landroid/widget/Editor$InsertionHandleView;->showPasteWithoutInsertionHandle()V
    invoke-static {v5}, Landroid/widget/Editor$InsertionHandleView;->access$300(Landroid/widget/Editor$InsertionHandleView;)V

    goto :goto_1
.end method

.method onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    const/4 v1, 0x0

    .line 1805
    sget-boolean v0, Landroid/widget/Editor;->IS_KIKIN_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor;->mLosingFocusDueToKikinPopup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v0}, Lcom/kikin/KikinResultsViewController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1808
    const/4 p1, 0x1

    .line 1809
    iput-boolean v1, p0, Landroid/widget/Editor;->mLosingFocusDueToKikinPopup:Z

    .line 1815
    :cond_0
    sget-boolean v0, Landroid/widget/Editor;->IS_KIKIN_ENABLED:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    iget-boolean v0, p0, Landroid/widget/Editor;->mLosingFocusDueToOverflowMenu:Z

    if-eqz v0, :cond_2

    .line 1816
    iput-boolean v1, p0, Landroid/widget/Editor;->mLosingFocusDueToOverflowMenu:Z

    .line 1845
    :cond_1
    :goto_0
    return-void

    .line 1822
    :cond_2
    if-eqz p1, :cond_4

    .line 1823
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_3

    .line 1824
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 1825
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1844
    :cond_3
    :goto_1
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsTextEditor:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/Editor;->clearAndHook(Z)V

    goto :goto_0

    .line 1828
    :cond_4
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_5

    .line 1829
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 1831
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_6

    .line 1832
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v1, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 1835
    :cond_6
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 1836
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_7

    .line 1837
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    .line 1841
    :cond_7
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    goto :goto_1
.end method

.method public performLongClick(Z)Z
    .locals 13
    .parameter "handled"

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1441
    sget-boolean v7, Landroid/widget/Editor;->IS_KIKIN_ENABLED:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v7, :cond_0

    .line 1442
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 1443
    const/4 p1, 0x1

    .line 1449
    :cond_0
    sget-boolean v7, Landroid/widget/Editor;->IS_KIKIN_ENABLED:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/16 v8, 0x64

    if-le v7, v8, :cond_1

    .line 1450
    invoke-direct {p0}, Landroid/widget/Editor;->showKikinDisabledToast()V

    .line 1457
    :cond_1
    if-nez p1, :cond_a

    iget v7, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v8, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-direct {p0, v7, v8}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v7

    if-nez v7, :cond_2

    iget-boolean v7, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v7, :cond_4

    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_4

    :cond_3
    iget v7, p0, Landroid/widget/Editor;->mFlags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_a

    .line 1463
    :cond_4
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v8, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v9, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v4

    .line 1465
    .local v4, offset:I
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 1466
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1467
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v8, v7, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    invoke-virtual {v8, v9, v7}, Lcom/htc/textselection/HtcTextSelectionManager;->onStartSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 1468
    :cond_5
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1469
    iput-boolean v11, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    .line 1477
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->hasFocus()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1478
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->requestFocus()Z

    .line 1481
    :cond_6
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-gtz v7, :cond_7

    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v7

    if-nez v7, :cond_8

    :cond_7
    iget v7, p0, Landroid/widget/Editor;->mFlags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_10

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-gtz v7, :cond_10

    .line 1483
    :cond_8
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Editor$InsertionPointCursorController;->showWithActionPopupDelay()V

    .line 1486
    :cond_9
    :goto_0
    iget v7, p0, Landroid/widget/Editor;->mFlags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_11

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_11

    .line 1487
    const/4 p1, 0x0

    .line 1493
    .end local v4           #offset:I
    :cond_a
    :goto_1
    if-nez p1, :cond_c

    iget-object v7, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v7, :cond_b

    iget-boolean v7, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    if-eqz v7, :cond_c

    .line 1494
    :cond_b
    invoke-direct {p0}, Landroid/widget/Editor;->touchPositionIsInSelection()Z

    move-result v7

    if-eqz v7, :cond_12

    iget v7, p0, Landroid/widget/Editor;->mFlags:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_12

    invoke-direct {p0}, Landroid/widget/Editor;->hasPasswordTransformationMethod()Z

    move-result v7

    if-nez v7, :cond_12

    .line 1497
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 1498
    .local v6, start:I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 1499
    .local v2, end:I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v2}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1500
    .local v5, selectedText:Ljava/lang/CharSequence;
    const/4 v7, 0x0

    invoke-static {v7, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 1501
    .local v0, data:Landroid/content/ClipData;
    new-instance v3, Landroid/widget/Editor$DragLocalState;

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v3, v7, v6, v2}, Landroid/widget/Editor$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    .line 1502
    .local v3, localState:Landroid/widget/Editor$DragLocalState;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Landroid/widget/Editor;->getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;

    move-result-object v8

    invoke-virtual {v7, v0, v8, v3, v10}, Landroid/widget/TextView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 1503
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 1504
    const/4 p1, 0x1

    .line 1536
    .end local v0           #data:Landroid/content/ClipData;
    .end local v2           #end:I
    .end local v3           #localState:Landroid/widget/Editor$DragLocalState;
    .end local v5           #selectedText:Ljava/lang/CharSequence;
    .end local v6           #start:I
    :cond_c
    :goto_2
    if-nez p1, :cond_f

    .line 1539
    sget-boolean v7, Landroid/widget/Editor;->IS_KIKIN_ENABLED:Z

    if-eqz v7, :cond_15

    .line 1540
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1541
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v8, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v9, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v4

    .line 1543
    .restart local v4       #offset:I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setPressed(Z)V

    .line 1544
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 1545
    invoke-direct {p0, v10}, Landroid/widget/Editor;->disallowInterceptTouchEvent(Z)V

    .line 1546
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Lcom/htc/textselection/HtcTextSelectionManager;->findScrollableView(Landroid/widget/TextView;)V

    .line 1547
    iput-boolean v10, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    .line 1548
    if-eq v4, v12, :cond_d

    .line 1549
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1567
    .end local v4           #offset:I
    :cond_d
    :goto_3
    sget-boolean v7, Landroid/widget/Editor;->IS_KIKIN_ENABLED:Z

    if-eqz v7, :cond_1c

    .line 1571
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1572
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result p1

    .line 1614
    :cond_e
    :goto_4
    sget-boolean v7, Landroid/widget/Editor;->IS_KIKIN_ENABLED:Z

    if-eqz v7, :cond_1d

    .line 1615
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1616
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v7}, Lcom/htc/textselection/HtcTextSelectionManager;->stopAutoScroll()V

    .line 1617
    invoke-direct {p0, v10}, Landroid/widget/Editor;->disallowInterceptTouchEvent(Z)V

    .line 1627
    :cond_f
    :goto_5
    return p1

    .line 1484
    .restart local v4       #offset:I
    :cond_10
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1485
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Editor$InsertionPointCursorController;->showWithActionPopup()V

    goto/16 :goto_0

    .line 1489
    :cond_11
    const/4 p1, 0x1

    goto/16 :goto_1

    .line 1507
    .end local v4           #offset:I
    :cond_12
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-boolean v7, p0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-nez v7, :cond_13

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual {p0}, Landroid/widget/Editor;->canReplaceActionMode()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1508
    :cond_13
    const/4 p1, 0x0

    goto/16 :goto_2

    .line 1509
    :cond_14
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1510
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 1511
    invoke-virtual {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    .line 1512
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 1513
    const/4 p1, 0x1

    goto/16 :goto_2

    .line 1553
    :cond_15
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-nez v7, :cond_16

    iget-boolean v7, p0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-eqz v7, :cond_d

    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1554
    :cond_16
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v8, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v9, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v4

    .line 1556
    .restart local v4       #offset:I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setPressed(Z)V

    .line 1557
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 1558
    invoke-direct {p0, v10}, Landroid/widget/Editor;->disallowInterceptTouchEvent(Z)V

    .line 1559
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Lcom/htc/textselection/HtcTextSelectionManager;->findScrollableView(Landroid/widget/TextView;)V

    .line 1560
    iput-boolean v10, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    .line 1561
    if-eq v4, v12, :cond_d

    .line 1562
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_3

    .line 1574
    .end local v4           #offset:I
    :cond_17
    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1576
    invoke-direct {p0}, Landroid/widget/Editor;->dimissSoftKeyboardIfNeeed()V

    .line 1577
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1579
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->hasFocus()Z

    move-result v7

    if-nez v7, :cond_18

    .line 1580
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->requestFocus()Z

    .line 1582
    :cond_18
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setPressed(Z)V

    .line 1585
    invoke-direct {p0, v11}, Landroid/widget/Editor;->disallowInterceptTouchEvent(Z)V

    .line 1586
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Lcom/htc/textselection/HtcTextSelectionManager;->findScrollableView(Landroid/widget/TextView;)V

    .line 1589
    :cond_19
    iput-boolean v11, p0, Landroid/widget/Editor;->mSelectWordOnDragging:Z

    .line 1592
    iget v7, p0, Landroid/widget/Editor;->mLastTouchDownRawX:I

    iget v8, p0, Landroid/widget/Editor;->mLastTouchDownRawY:I

    invoke-direct {p0, v7, v8}, Landroid/widget/Editor;->showMagnifyingGlass(II)V

    .line 1593
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1594
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 1595
    :cond_1a
    invoke-virtual {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v1

    .line 1596
    .local v1, didSelect:Z
    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1598
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 1600
    :cond_1b
    iput-boolean v11, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    .line 1602
    const/4 p1, 0x1

    .line 1603
    goto/16 :goto_4

    .line 1606
    .end local v1           #didSelect:Z
    :cond_1c
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result p1

    goto/16 :goto_4

    .line 1621
    :cond_1d
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-nez v7, :cond_1e

    iget-boolean v7, p0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-eqz v7, :cond_f

    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1622
    :cond_1e
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v7}, Lcom/htc/textselection/HtcTextSelectionManager;->stopAutoScroll()V

    .line 1623
    invoke-direct {p0, v10}, Landroid/widget/Editor;->disallowInterceptTouchEvent(Z)V

    goto/16 :goto_5
.end method

.method prepareCursorControllers()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 488
    const/4 v3, 0x0

    .line 490
    .local v3, windowSupportsHandles:Z
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 491
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v6, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_1

    move-object v2, v1

    .line 492
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 493
    .local v2, windowParams:Landroid/view/WindowManager$LayoutParams;
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_0

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-le v6, v7, :cond_5

    :cond_0
    move v3, v5

    .line 497
    .end local v2           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    if-eqz v3, :cond_6

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    if-eqz v6, :cond_6

    move v0, v5

    .line 498
    .local v0, enabled:Z
    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v6

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_2
    move v6, v5

    :goto_2
    iput-boolean v6, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    .line 503
    if-eqz v0, :cond_8

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v6

    if-eqz v6, :cond_8

    :goto_3
    iput-boolean v5, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    .line 505
    iget-boolean v4, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v4, :cond_3

    .line 506
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 507
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v4, :cond_3

    .line 508
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 509
    iput-object v8, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 513
    :cond_3
    iget-boolean v4, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v4, :cond_4

    .line 514
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 515
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v4, :cond_4

    .line 516
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v4}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 517
    iput-object v8, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 520
    :cond_4
    return-void

    .end local v0           #enabled:Z
    .restart local v2       #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_5
    move v3, v4

    .line 493
    goto :goto_0

    .end local v2           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_6
    move v0, v4

    .line 497
    goto :goto_1

    .restart local v0       #enabled:Z
    :cond_7
    move v6, v4

    .line 498
    goto :goto_2

    :cond_8
    move v5, v4

    .line 503
    goto :goto_3
.end method

.method public removeReplacementSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "text"

    .prologue
    .line 6183
    instance-of v6, p1, Landroid/text/Spannable;

    if-eqz v6, :cond_1

    move-object v3, p1

    .line 6184
    check-cast v3, Landroid/text/Spannable;

    .line 6185
    .local v3, spannable:Landroid/text/Spannable;
    const/4 v6, 0x0

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v3, v6, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 6186
    .local v4, spans:[Ljava/lang/Object;
    array-length v1, v4

    .line 6187
    .local v1, i:I
    :cond_0
    :goto_0
    if-lez v1, :cond_2

    .line 6188
    add-int/lit8 v1, v1, -0x1

    .line 6189
    aget-object v6, v4, v1

    invoke-interface {v3, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 6190
    .local v5, start:I
    aget-object v6, v4, v1

    invoke-interface {v3, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 6191
    .local v0, end:I
    aget-object v6, v4, v1

    invoke-interface {v3, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 6193
    if-ltz v5, :cond_0

    if-le v0, v5, :cond_0

    invoke-interface {v3, v5}, Landroid/text/Spannable;->charAt(I)C

    move-result v6

    const v7, 0xfffc

    if-ne v6, v7, :cond_0

    .line 6194
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6195
    .local v2, spanBuilder:Landroid/text/SpannableStringBuilder;
    const-string v6, ""

    invoke-virtual {v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_0

    .end local v0           #end:I
    .end local v1           #i:I
    .end local v2           #spanBuilder:Landroid/text/SpannableStringBuilder;
    .end local v3           #spannable:Landroid/text/Spannable;
    .end local v4           #spans:[Ljava/lang/Object;
    .end local v5           #start:I
    :cond_1
    move-object v3, p1

    .line 6200
    :cond_2
    return-object v3
.end method

.method public removeStyledAnnotationSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "text"

    .prologue
    .line 6207
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 6208
    check-cast v1, Landroid/text/Spannable;

    .line 6211
    .local v1, spannable:Landroid/text/Spannable;
    :goto_0
    const/4 v3, 0x0

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/Annotation;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/Annotation;

    .line 6212
    .local v2, spans:[Landroid/text/Annotation;
    array-length v0, v2

    .line 6213
    .local v0, i:I
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    .line 6214
    add-int/lit8 v0, v0, -0x1

    .line 6215
    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "styledtext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6217
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    .line 6210
    .end local v0           #i:I
    .end local v1           #spannable:Landroid/text/Spannable;
    .end local v2           #spans:[Landroid/text/Annotation;
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v1       #spannable:Landroid/text/Spannable;
    goto :goto_0

    .line 6219
    .restart local v0       #i:I
    .restart local v2       #spans:[Landroid/text/Annotation;
    :cond_2
    return-object v1
.end method

.method reportExtractedText()Z
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 2075
    iget-object v8, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2076
    .local v8, ims:Landroid/widget/Editor$InputMethodState;
    if-eqz v8, :cond_2

    .line 2077
    iget-boolean v6, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 2078
    .local v6, contentChanged:Z
    if-nez v6, :cond_0

    iget-boolean v0, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    .line 2079
    :cond_0
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 2080
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 2081
    iget-object v1, v8, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 2082
    .local v1, req:Landroid/view/inputmethod/ExtractedTextRequest;
    if-eqz v1, :cond_2

    .line 2083
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 2084
    .local v7, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_2

    .line 2089
    iget v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v0, :cond_1

    if-nez v6, :cond_1

    .line 2090
    const/4 v0, -0x2

    iput v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 2092
    :cond_1
    iget v2, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v3, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iget v4, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iget-object v5, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2100
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v2, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v3, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v7, v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 2101
    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 2102
    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 2103
    iput v9, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 2104
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 2105
    const/4 v0, 0x1

    .line 2111
    .end local v1           #req:Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v6           #contentChanged:Z
    .end local v7           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v0

    :cond_2
    move v0, v9

    goto :goto_0
.end method

.method public selectCurrentWord()Z
    .locals 25

    .prologue
    .line 1168
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v23

    if-nez v23, :cond_0

    .line 1169
    const/16 v23, 0x0

    .line 1278
    :goto_0
    return v23

    .line 1172
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v7

    .line 1173
    .local v7, lastTouchOffsets:J
    invoke-static {v7, v8}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v11

    .line 1174
    .local v11, minOffset:I
    invoke-static {v7, v8}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v10

    .line 1177
    .local v10, maxOffset:I
    if-ltz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result v23

    move/from16 v0, v23

    if-lt v11, v0, :cond_2

    :cond_1
    const/16 v23, 0x0

    goto :goto_0

    .line 1178
    :cond_2
    if-ltz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result v23

    move/from16 v0, v23

    if-lt v10, v0, :cond_4

    :cond_3
    const/16 v23, 0x0

    goto :goto_0

    .line 1181
    :cond_4
    const/16 v19, -0x1

    .local v19, selectionStart:I
    const/16 v17, -0x1

    .line 1185
    .local v17, selectionEnd:I
    sget-boolean v23, Landroid/widget/Editor;->IS_KIKIN_ENABLED:Z

    if-eqz v23, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v23

    if-nez v23, :cond_8

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 1189
    .local v4, cursorPositionX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v23, v23, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor;->mLastDownPositionX:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v23

    const/high16 v24, 0x4120

    cmpg-float v23, v23, v24

    if-gez v23, :cond_7

    const/4 v6, 0x1

    .line 1191
    .local v6, isOnText:Z
    :goto_1
    if-eqz v6, :cond_5

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v1, v11}, Lcom/kikin/KikinCore;->nativeGetTextEntity(Ljava/lang/String;II)Lcom/kikin/Range;

    move-result-object v13

    .line 1194
    .local v13, range:Lcom/kikin/Range;
    if-eqz v13, :cond_5

    .line 1196
    invoke-virtual {v13}, Lcom/kikin/Range;->getStartOffset()I

    move-result v19

    .line 1197
    invoke-virtual {v13}, Lcom/kikin/Range;->getEndOffset()I

    move-result v17

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/kikin/Range;->setTouchedWord(Ljava/lang/String;)V

    .line 1203
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    .line 1207
    .end local v13           #range:Lcom/kikin/Range;
    :cond_5
    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    check-cast v23, Landroid/text/Spannable;

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1278
    .end local v4           #cursorPositionX:F
    .end local v6           #isOnText:Z
    :cond_6
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_15

    const/16 v23, 0x1

    goto/16 :goto_0

    .line 1189
    .restart local v4       #cursorPositionX:F
    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    .line 1214
    .end local v4           #cursorPositionX:F
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v23

    if-eqz v23, :cond_12

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->length()I

    move-result v23

    if-lez v23, :cond_10

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    .line 1217
    .local v12, offset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v12}, Landroid/widget/Editor;->findWordStart(Ljava/lang/CharSequence;I)I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 1218
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v18

    .line 1220
    .local v18, selectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;
    if-eqz v18, :cond_9

    .line 1221
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v12

    .line 1223
    .end local v18           #selectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    check-cast v23, Landroid/text/Spannable;

    move-object/from16 v0, v23

    invoke-static {v0, v12}, Landroid/widget/Editor;->findNearestNonwhiteOffset(Landroid/text/Spannable;I)I

    move-result v12

    .line 1224
    const/16 v23, -0x1

    move/from16 v0, v23

    if-le v12, v0, :cond_10

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v12}, Landroid/widget/Editor;->findWordStart(Ljava/lang/CharSequence;I)I

    move-result v19

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v12}, Landroid/widget/Editor;->findWordEnd(Ljava/lang/CharSequence;I)I

    move-result v17

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    check-cast v20, Landroid/text/Spannable;

    .line 1229
    .local v20, sp:Landroid/text/Spannable;
    const-class v23, Landroid/text/style/ReplacementSpan;

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v17

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/ReplacementSpan;

    .line 1230
    .local v21, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v5, v0, :cond_c

    .line 1231
    aget-object v23, v21, v5

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v16

    .line 1232
    .local v16, replaceStart:I
    aget-object v23, v21, v5

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    .line 1233
    .local v15, replaceEnd:I
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 1234
    move/from16 v19, v16

    .line 1235
    :cond_a
    move/from16 v0, v17

    if-le v15, v0, :cond_b

    .line 1236
    move/from16 v17, v15

    .line 1230
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1240
    .end local v5           #i:I
    .end local v15           #replaceEnd:I
    .end local v16           #replaceStart:I
    .end local v20           #sp:Landroid/text/Spannable;
    .end local v21           #spans:[Landroid/text/style/ReplacementSpan;
    :cond_c
    move/from16 v0, v19

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->length()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v19

    if-le v0, v1, :cond_e

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    check-cast v23, Landroid/text/Spannable;

    add-int/lit8 v24, v19, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1245
    :cond_d
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_f

    const/16 v23, 0x1

    goto/16 :goto_0

    .line 1242
    :cond_e
    move/from16 v0, v19

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    check-cast v23, Landroid/text/Spannable;

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_4

    .line 1245
    :cond_f
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1249
    .end local v12           #offset:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->length()I

    move-result v9

    .line 1250
    .local v9, length:I
    if-lez v9, :cond_11

    const/16 v23, 0x1

    goto/16 :goto_0

    :cond_11
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1256
    .end local v9           #length:I
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v22

    .line 1257
    .local v22, wordIterator:Landroid/text/method/WordIterator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11, v10}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 1259
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v19

    .line 1260
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v17

    .line 1262
    const/16 v23, -0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_13

    const/16 v23, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_13

    move/from16 v0, v19

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    .line 1265
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/widget/Editor;->getCharRange(I)J

    move-result-wide v13

    .line 1266
    .local v13, range:J
    invoke-static {v13, v14}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v19

    .line 1267
    invoke-static {v13, v14}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v17

    .line 1270
    .end local v13           #range:J
    :cond_14
    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    check-cast v23, Landroid/text/Spannable;

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_2

    .line 1278
    .end local v22           #wordIterator:Landroid/text/method/WordIterator;
    :cond_15
    const/16 v23, 0x0

    goto/16 :goto_0
.end method

.method sendInfoToIME(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "command"
    .parameter "data"

    .prologue
    .line 6616
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 6617
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6618
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6619
    :cond_0
    return-void
.end method

.method sendOnTextChanged(II)V
    .locals 2
    .parameter "start"
    .parameter "after"

    .prologue
    .line 1773
    add-int v0, p1, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 1778
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 1779
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "error"
    .parameter "icon"

    .prologue
    const/4 v5, 0x0

    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 385
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Editor;->mErrorWasChanged:Z

    .line 386
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 387
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_2

    .line 388
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 391
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3, p2, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 403
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    .line 404
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v1, :cond_1

    .line 405
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 409
    :cond_0
    iput-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 416
    :cond_1
    :goto_1
    return-void

    .line 395
    :pswitch_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 400
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v5, p2, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 412
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    goto :goto_1

    .line 388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method setFrame()V
    .locals 7

    .prologue
    .line 660
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 662
    .local v6, tv:Landroid/widget/TextView;
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v6}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 663
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/Editor$ErrorPopup;->getHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Editor$ErrorPopup;->update(Landroid/view/View;IIII)V

    .line 666
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setLastTouchDownPosition(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1019
    int-to-float v1, p1

    iput v1, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 1020
    int-to-float v1, p2

    iput v1, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    .line 1022
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 1023
    .local v0, selectionController:Landroid/widget/Editor$SelectionModifierCursorController;
    if-eqz v0, :cond_0

    .line 1024
    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor$SelectionModifierCursorController;->setMinAndMaxOffset(II)V

    .line 1026
    :cond_0
    return-void
.end method

.method setSCtimeout()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 6583
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    if-nez v0, :cond_0

    .line 6584
    new-instance v0, Landroid/widget/Editor$SCATDHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$SCATDHandler;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    .line 6585
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    invoke-virtual {v0, v2}, Landroid/widget/Editor$SCATDHandler;->removeMessages(I)V

    .line 6586
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    iget-object v1, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    invoke-virtual {v1, v2}, Landroid/widget/Editor$SCATDHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Editor$SCATDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6587
    return-void
.end method

.method public showQuickActionAgain()V
    .locals 0

    .prologue
    .line 6099
    invoke-direct {p0}, Landroid/widget/Editor;->showQuickAction()V

    .line 6100
    return-void
.end method

.method showSuggestions()V
    .locals 1

    .prologue
    .line 2730
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-nez v0, :cond_0

    .line 2731
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SuggestionsPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 2733
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 2734
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->show()V

    .line 2735
    return-void
.end method

.method startSelectionActionMode()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 2401
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_1

    .line 2495
    :cond_0
    :goto_0
    return v6

    .line 2405
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->requestFocus()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-nez v5, :cond_3

    .line 2406
    :cond_2
    const-string v5, "TextView"

    const-string v7, "TextView does not support text selection. Action mode cancelled."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    iput-boolean v6, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    goto :goto_0

    .line 2413
    :cond_3
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_6

    .line 2415
    :cond_4
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_5

    .line 2417
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v7, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v8, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v5, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v2

    .line 2418
    .local v2, offset:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    .line 2419
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2424
    .end local v2           #offset:I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2430
    :cond_6
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v4

    .line 2432
    .local v4, willExtract:Z
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2433
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v7, v5, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-virtual {v7, v8, v5}, Lcom/htc/textselection/HtcTextSelectionManager;->onStartSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 2438
    :cond_7
    sget-boolean v5, Landroid/widget/Editor;->IS_KIKIN_ENABLED:Z

    if-eqz v5, :cond_e

    .line 2439
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Landroid/widget/Editor;->canReplaceActionMode()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2440
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2441
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 2442
    :cond_8
    invoke-direct {p0}, Landroid/widget/Editor;->prepareQuickActions()V

    .line 2443
    invoke-direct {p0}, Landroid/widget/Editor;->showQuickAction()V

    .line 2444
    iput-boolean v3, p0, Landroid/widget/Editor;->mIsInQuickActioMode:Z

    .line 2478
    :cond_9
    :goto_1
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v5, :cond_a

    if-nez v4, :cond_a

    iget-boolean v5, p0, Landroid/widget/Editor;->mIsInQuickActioMode:Z

    if-eqz v5, :cond_12

    .line 2480
    .local v3, selectionStarted:Z
    :cond_a
    :goto_2
    iput-boolean v3, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    .line 2486
    if-eqz v3, :cond_b

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-nez v5, :cond_b

    iget-boolean v5, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2489
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2490
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_b

    .line 2491
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v6, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_b
    move v6, v3

    .line 2495
    goto/16 :goto_0

    .line 2447
    .end local v3           #selectionStarted:Z
    :cond_c
    if-eqz v4, :cond_d

    sget-boolean v5, Landroid/widget/Editor;->IS_KIKIN_ENABLED:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2448
    :cond_d
    new-instance v0, Landroid/widget/Editor$SelectionActionModeCallback;

    invoke-direct {v0, p0, v9}, Landroid/widget/Editor$SelectionActionModeCallback;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    .line 2449
    .local v0, actionModeCallback:Landroid/view/ActionMode$Callback;
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    .line 2450
    iput-boolean v6, p0, Landroid/widget/Editor;->mIsInQuickActioMode:Z

    goto :goto_1

    .line 2454
    .end local v0           #actionModeCallback:Landroid/view/ActionMode$Callback;
    :cond_e
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {p0}, Landroid/widget/Editor;->canReplaceActionMode()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2456
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2458
    iget-boolean v5, p0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-nez v5, :cond_10

    .line 2459
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 2464
    :cond_f
    :goto_3
    invoke-direct {p0}, Landroid/widget/Editor;->prepareQuickActions()V

    .line 2465
    invoke-direct {p0}, Landroid/widget/Editor;->showQuickAction()V

    .line 2466
    iput-boolean v3, p0, Landroid/widget/Editor;->mIsInQuickActioMode:Z

    goto :goto_1

    .line 2461
    :cond_10
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->forceShow()V

    goto :goto_3

    .line 2472
    :cond_11
    if-nez v4, :cond_9

    .line 2473
    new-instance v0, Landroid/widget/Editor$SelectionActionModeCallback;

    invoke-direct {v0, p0, v9}, Landroid/widget/Editor$SelectionActionModeCallback;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    .line 2474
    .restart local v0       #actionModeCallback:Landroid/view/ActionMode$Callback;
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    .line 2475
    iput-boolean v6, p0, Landroid/widget/Editor;->mIsInQuickActioMode:Z

    goto/16 :goto_1

    .end local v0           #actionModeCallback:Landroid/view/ActionMode$Callback;
    :cond_12
    move v3, v6

    .line 2478
    goto/16 :goto_2
.end method

.method protected stopSelectionActionMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2621
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_4

    .line 2623
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2625
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2629
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2630
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 2634
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor;->hideSelectionModifierCursorController()V

    .line 2636
    iput-boolean v3, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    .line 2637
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2638
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {v1, v2, v0}, Lcom/htc/textselection/HtcTextSelectionManager;->onEndSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 2640
    :cond_1
    iput-boolean v3, p0, Landroid/widget/Editor;->mIsInQuickActioMode:Z

    .line 2642
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-boolean v0, v0, Landroid/widget/TextView;->isMessageLink:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/Editor;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/Editor;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 2644
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2650
    :cond_2
    :goto_1
    return-void

    .line 2632
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 2647
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2648
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    goto :goto_1
.end method

.method updateCursorsPositions()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x2

    .line 2360
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v7, v7, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v7, :cond_1

    .line 2361
    iput v10, p0, Landroid/widget/Editor;->mCursorCount:I

    .line 2385
    :cond_0
    :goto_0
    return-void

    .line 2365
    :cond_1
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 2366
    .local v2, layout:Landroid/text/Layout;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v1

    .line 2367
    .local v1, hintLayout:Landroid/text/Layout;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 2368
    .local v5, offset:I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 2369
    .local v3, line:I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 2370
    .local v6, top:I
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 2372
    .local v0, bottom:I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    :goto_1
    iput v7, p0, Landroid/widget/Editor;->mCursorCount:I

    .line 2374
    move v4, v0

    .line 2375
    .local v4, middle:I
    iget v7, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ne v7, v8, :cond_2

    .line 2377
    add-int v7, v6, v0

    shr-int/lit8 v4, v7, 0x1

    .line 2380
    :cond_2
    invoke-direct {p0, v2, v1, v5}, Landroid/widget/Editor;->getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;I)F

    move-result v7

    invoke-direct {p0, v10, v6, v4, v7}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    .line 2382
    iget v7, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ne v7, v8, :cond_0

    .line 2383
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v7

    invoke-direct {p0, v9, v4, v0, v7}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    goto :goto_0

    .end local v4           #middle:I
    :cond_3
    move v7, v9

    .line 2372
    goto :goto_1
.end method

.method public updateSelection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "oldQuery"
    .parameter "newQuery"

    .prologue
    .line 751
    iget-object v4, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    if-nez v4, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 756
    iget-object v4, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v4}, Lcom/kikin/Range;->getStartOffset()I

    move-result v3

    .line 757
    .local v3, startIndex:I
    iget-object v4, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v4}, Lcom/kikin/Range;->getEndOffset()I

    move-result v0

    .line 759
    .local v0, endIndex:I
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 761
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 762
    .local v2, oldQueryStartIndexInNewQuery:I
    sub-int/2addr v3, v2

    .line 763
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    sub-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 773
    .end local v2           #oldQueryStartIndexInNewQuery:I
    :cond_2
    :goto_1
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 765
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 767
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 768
    .local v1, newQueryStartIndexInOldQuery:I
    add-int/2addr v3, v1

    .line 769
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    sub-int/2addr v4, v5

    sub-int/2addr v0, v4

    goto :goto_1
.end method

.method public updateSelectionInCAB(Ljava/lang/String;)V
    .locals 3
    .parameter "selection"

    .prologue
    .line 735
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    .line 736
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 738
    .local v0, allowText:Z
    if-nez v0, :cond_0

    sget-boolean v1, Landroid/widget/Editor;->IS_KIKIN_ENABLED:Z

    if-eqz v1, :cond_1

    .line 739
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 742
    .end local v0           #allowText:Z
    :cond_1
    return-void
.end method

.method public useHtcTextSelection()Z
    .locals 1

    .prologue
    .line 6075
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
