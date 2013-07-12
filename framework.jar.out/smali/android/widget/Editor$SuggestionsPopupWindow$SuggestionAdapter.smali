.class Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;
.super Landroid/widget/BaseAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SuggestionsPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$1:Landroid/widget/Editor$SuggestionsPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .locals 2
    .parameter

    .prologue
    .line 2745
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2746
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2745
    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2751
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #getter for: Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I
    invoke-static {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->access$1900(Landroid/widget/Editor$SuggestionsPopupWindow;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 2756
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #getter for: Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    invoke-static {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->access$2000(Landroid/widget/Editor$SuggestionsPopupWindow;)[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 2761
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2766
    move-object/from16 v10, p2

    check-cast v10, Landroid/widget/TextView;

    .line 2769
    .local v10, textView:Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 2770
    .local v3, fontStyle:I
    const/4 v4, 0x0

    .line 2771
    .local v4, id:I
    const/4 v5, 0x0

    .line 2772
    .local v5, leftpadding:I
    const/4 v8, 0x0

    .line 2773
    .local v8, rightpadding:I
    const/4 v11, 0x0

    .line 2774
    .local v11, toppadding:I
    const/4 v1, 0x0

    .line 2775
    .local v1, bottompadding:I
    const/4 v7, 0x0

    .line 2776
    .local v7, reset_padding:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v12, v12, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2777
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2780
    .local v6, r:Landroid/content/res/Resources;
    if-nez v10, :cond_0

    .line 2781
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v13, v13, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    iget v13, v13, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .end local v10           #textView:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 2785
    .restart local v10       #textView:Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    .line 2786
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    .line 2787
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v11

    .line 2788
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    .line 2789
    const/4 v7, 0x1

    .line 2793
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #getter for: Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    invoke-static {v12}, Landroid/widget/Editor$SuggestionsPopupWindow;->access$2000(Landroid/widget/Editor$SuggestionsPopupWindow;)[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-result-object v12

    aget-object v9, v12, p1

    .line 2794
    .local v9, suggestionInfo:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    iget-object v12, v9, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2796
    iget v12, v9, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    .line 2797
    const v12, 0x1080355

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2801
    const-string v12, "list_primary_m_bold"

    const-string/jumbo v13, "style"

    const-string v14, "com.htc"

    invoke-virtual {v6, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2802
    if-nez v3, :cond_2

    .line 2803
    const-string v12, "Editor"

    const-string v13, "Can not find @com.htc:style/list_primary_m_bold"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    :goto_0
    const-string v12, "common_list_item_background"

    const-string v13, "drawable"

    const-string v14, "com.htc"

    invoke-virtual {v6, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2833
    if-nez v4, :cond_7

    .line 2834
    const-string v12, "Editor"

    const-string v13, "Can not find @com.htc:drawable/common_list_item_background"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    :cond_1
    :goto_1
    return-object v10

    .line 2805
    :cond_2
    invoke-virtual {v10, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 2807
    :cond_3
    iget v12, v9, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    const/4 v13, -0x2

    if-ne v12, v13, :cond_5

    .line 2808
    const v12, 0x1080356

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2812
    const-string v12, "list_primary_m_bold"

    const-string/jumbo v13, "style"

    const-string v14, "com.htc"

    invoke-virtual {v6, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2813
    if-nez v3, :cond_4

    .line 2814
    const-string v12, "Editor"

    const-string v13, "(DELETE_TEXT) Can not find @com.htc:style/list_primary_m_bold"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2816
    :cond_4
    invoke-virtual {v10, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 2819
    :cond_5
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2822
    const-string v12, "list_primary_m"

    const-string/jumbo v13, "style"

    const-string v14, "com.htc"

    invoke-virtual {v6, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2823
    if-nez v3, :cond_6

    .line 2824
    const-string v12, "Editor"

    const-string v13, "Can not find @com.htc:style/list_primary_m"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2826
    :cond_6
    invoke-virtual {v10, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 2836
    :cond_7
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2838
    if-eqz v7, :cond_1

    .line 2839
    int-to-double v12, v11

    const-wide v14, 0x3ff6666666666666L

    mul-double/2addr v12, v14

    double-to-int v12, v12

    int-to-double v13, v1

    const-wide v15, 0x3ff6666666666666L

    mul-double/2addr v13, v15

    double-to-int v13, v13

    invoke-virtual {v10, v5, v12, v8, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1
.end method
