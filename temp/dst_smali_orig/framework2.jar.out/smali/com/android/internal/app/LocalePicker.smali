.class public Lcom/android/internal/app/LocalePicker;
.super Landroid/app/ListFragment;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePicker$LocaleInfo;,
        Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_LOCALE:Z = false

.field private static final TAG:Ljava/lang/String; = "LocalePicker"


# instance fields
.field mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/app/LocalePicker;->DEBUG_LOCALE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private applyHtcListViewStyle()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "list_selector_background"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .local v0, selector:I
    const-string v1, "LocalePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": selector="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/widget/ListView;->enableAnimation(IZ)V

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->enableAnimation(IZ)V

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const v0, 0x4030011

    const v1, 0x4110012

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 22
    .parameter "context"
    .parameter "layoutId"
    .parameter "fieldId"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .local v15, resources:Landroid/content/res/Resources;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v12

    .local v12, locales:[Ljava/lang/String;
    move-object/from16 v0, v15

    invoke-static {v0, v12}, Lmiui/util/ExtraLocalePicker;->filterLocale(Landroid/content/res/Resources;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const v19, 0x1070007

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .local v17, specialLocaleCodes:[Ljava/lang/String;
    const v19, 0x1070008

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .local v18, specialLocaleNames:[Ljava/lang/String;
    invoke-static {v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v13, v12

    .local v13, origSize:I
    new-array v14, v13, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .local v14, preprocess:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v5, 0x0

    .local v5, finalSize:I
    const/4 v7, 0x0

    .local v7, i:I
    move v6, v5

    .end local v5           #finalSize:I
    .local v6, finalSize:I
    :goto_0
    if-ge v7, v13, :cond_4

    aget-object v16, v12, v7

    .local v16, s:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v10

    .local v10, len:I
    const/16 v19, 0x5

    move/from16 v0, v19

    if-ne v10, v0, :cond_6

    const/16 v19, 0x0

    const/16 v20, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .local v9, language:Ljava/lang/String;
    const/16 v19, 0x3

    const/16 v20, 0x5

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, country:Ljava/lang/String;
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v9, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v8, l:Ljava/util/Locale;
    sget-boolean v19, Lcom/android/internal/app/LocalePicker;->DEBUG_LOCALE:Z

    if-eqz v19, :cond_0

    const-string v19, "LocalePicker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "idx=\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\",\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v6, :cond_1

    add-int/lit8 v5, v6, 0x1

    .end local v6           #finalSize:I
    .restart local v5       #finalSize:I
    new-instance v19, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v8, v8}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v19, v14, v6

    .end local v3           #country:Ljava/lang/String;
    .end local v8           #l:Ljava/util/Locale;
    .end local v9           #language:Ljava/lang/String;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5           #finalSize:I
    .restart local v6       #finalSize:I
    goto :goto_0

    .restart local v3       #country:Ljava/lang/String;
    .restart local v8       #l:Ljava/util/Locale;
    .restart local v9       #language:Ljava/lang/String;
    :cond_1
    add-int/lit8 v19, v6, -0x1

    aget-object v19, v14, v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    add-int/lit8 v19, v6, -0x1

    aget-object v19, v14, v19

    add-int/lit8 v20, v6, -0x1

    aget-object v20, v14, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    .end local v6           #finalSize:I
    .restart local v5       #finalSize:I
    new-instance v19, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v8, v0, v1}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v19, v14, v6

    goto :goto_1

    .end local v5           #finalSize:I
    .restart local v6       #finalSize:I
    :cond_2
    const-string v19, "zz_ZZ"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    const-string v4, "Pseudo..."

    .local v4, displayName:Ljava/lang/String;
    :goto_2
    add-int/lit8 v5, v6, 0x1

    .end local v6           #finalSize:I
    .restart local v5       #finalSize:I
    new-instance v19, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v8}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v19, v14, v6

    goto :goto_1

    .end local v4           #displayName:Ljava/lang/String;
    .end local v5           #finalSize:I
    .restart local v6       #finalSize:I
    :cond_3
    invoke-virtual {v8, v8}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #displayName:Ljava/lang/String;
    goto :goto_2

    .end local v3           #country:Ljava/lang/String;
    .end local v4           #displayName:Ljava/lang/String;
    .end local v8           #l:Ljava/util/Locale;
    .end local v9           #language:Ljava/lang/String;
    .end local v10           #len:I
    .end local v16           #s:Ljava/lang/String;
    :cond_4
    new-array v11, v6, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .local v11, localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_5

    aget-object v19, v14, v7

    aput-object v19, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    invoke-static {v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-static {v11}, Lmiui/util/ExtraLocalePicker;->adjustLocaleOrder([Lcom/android/internal/app/LocalePicker$LocaleInfo;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v11}, Lcom/android/internal/app/LocalePicker;->getHtcStyleViewArrayAdapter(Landroid/content/Context;II[Lcom/android/internal/app/LocalePicker$LocaleInfo;)Landroid/widget/ArrayAdapter;

    move-result-object v19

    return-object v19

    .end local v11           #localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .restart local v10       #len:I
    .restart local v16       #s:Ljava/lang/String;
    :cond_6
    move v5, v6

    .end local v6           #finalSize:I
    .restart local v5       #finalSize:I
    goto/16 :goto_1
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "l"
    .parameter "specialLocaleCodes"
    .parameter "specialLocaleNames"

    .prologue
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p2, v1

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static getHtcStyleViewArrayAdapter(Landroid/content/Context;II[Lcom/android/internal/app/LocalePicker$LocaleInfo;)Landroid/widget/ArrayAdapter;
    .locals 7
    .parameter "context"
    .parameter "layoutId"
    .parameter "fieldId"
    .parameter "localeInfos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v1, "common_list_item_background"

    const v2, 0x208003b

    invoke-static {p0, v1, v2}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .local v5, itemBKGId:I
    move-object v6, p0

    .local v6, mcontext:Landroid/content/Context;
    new-instance v0, Lcom/android/internal/app/LocalePicker$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/LocalePicker$1;-><init>(Landroid/content/Context;II[Lcom/android/internal/app/LocalePicker$LocaleInfo;ILandroid/content/Context;)V

    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    return-object v0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 5
    .parameter "locale"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .local v1, config:Landroid/content/res/Configuration;
    iput-object p0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    sget-boolean v2, Lcom/android/internal/app/LocalePicker;->DEBUG_LOCALE:Z

    if-eqz v2, :cond_0

    const-string v2, "LocalePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLocale , locale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;->applyHtcListViewStyle()V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    iget-object v0, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .local v0, locale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    invoke-interface {v1, v0}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    .end local v0           #locale:Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    return-void
.end method
