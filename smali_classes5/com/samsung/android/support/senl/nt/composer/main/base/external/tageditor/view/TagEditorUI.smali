.class public Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$TagEditorActionListener;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$ItemOffsetDecoration;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;
    }
.end annotation


# static fields
.field private static final INPUT_FILTER_MAX_LENGTH:I = 0x32

.field private static final MAX_SELECTED_ITEM_COUNT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "TagEditorUI"


# instance fields
.field private mActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$TagEditorActionListener;

.field private mAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;

.field private mAddButtonView:Landroid/view/View;

.field private mContentArea:Landroid/view/ViewGroup;

.field private mContentListView:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/CandidateTagsRecyclerView;

.field private mContext:Landroid/content/Context;

.field private final mController:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/TagEditorController;

.field private mDisplay:Landroid/view/Display;

.field private mEditTextView:Landroid/widget/EditText;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsSaved:Z

.field private mLayoutManager:Lcom/google/android/flexbox/FlexboxLayoutManager;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;",
            ">;"
        }
    .end annotation
.end field

.field private mMainGroupView:Landroid/view/ViewGroup;

.field private mMaskingArea:Landroid/view/View;

.field private mMaxLimitedCount:I

.field private final mPoint:Landroid/graphics/Point;

.field private mSaveButtonView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/TagEditorController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mPoint:Landroid/graphics/Point;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mIsSaved:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mMaxLimitedCount:I

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mController:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/TagEditorController;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;

    return-object p0
.end method

.method private addCandidateTag()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mEditTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mEditTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->isReachedLimitedCount()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;->isSelected()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;->setSelected(Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mEditTextView:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    move v1, v5

    goto :goto_0

    :cond_3
    move v1, v4

    :goto_0
    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mEditTextView:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mList:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;

    invoke-direct {v2, v0, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;-><init>(Ljava/lang/String;IZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContentListView:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/CandidateTagsRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_4
    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mAddButtonView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/CandidateTagsRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContentListView:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/CandidateTagsRecyclerView;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private determineEditorWidth()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mMainGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mDisplay:Landroid/view/Display;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mPoint:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->tag_editor_width:I

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_1

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->tag_editor_bottom_margin_land:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->tag_editor_bottom_margin:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mMainGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->updateMarginPadding(Z)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mEditTextView:Landroid/widget/EditText;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mMaskingArea:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->addCandidateTag()V

    return-void
.end method

.method private init()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mMainGroupView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContext:Landroid/content/Context;

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setRoundedCornerColor(Landroid/view/View;I)V

    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mLayoutManager:Lcom/google/android/flexbox/FlexboxLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setJustifyContent(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mLayoutManager:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContentListView:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/CandidateTagsRecyclerView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mLayoutManager:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContentListView:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/CandidateTagsRecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContentListView:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/CandidateTagsRecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetHoverScrollEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContentListView:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/CandidateTagsRecyclerView;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$ItemOffsetDecoration;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->tag_editor_content_area_spacing:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$ItemOffsetDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContentListView:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/CandidateTagsRecyclerView;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mAddButtonView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->initEditTextView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mSaveButtonView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initEditTextView()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mEditTextView:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/EditorInputFilter;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/EditorInputFilter;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/common/Utils$LimitLengthInputFilter;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContext:Landroid/content/Context;

    const/16 v4, 0x32

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/common/Utils$LimitLengthInputFilter;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mEditTextView:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mEditTextView:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$6;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mEditTextView:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$7;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mEditTextView:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$8;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isReachedLimitedCount()Z
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mMaxLimitedCount:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$string;->tag_editor_toast_input_error_max_number_tag:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    return v4

    :cond_2
    return v2
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->determineEditorWidth()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->isReachedLimitedCount()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->notifyDataSetChanged()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->saveTags()V

    return-void
.end method

.method private notifyDataSetChanged()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContentListView:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/CandidateTagsRecyclerView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$9;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private saveTags()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mIsSaved:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$TagEditorActionListener;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mEditTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mMaxLimitedCount:I

    if-le v0, v1, :cond_3

    return-void

    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mIsSaved:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$TagEditorActionListener;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$TagEditorActionListener;->onSavePressed(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mEditTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_4
    return-void
.end method

.method private updateMarginPadding(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mMainGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mMainGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->tag_editor_top_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->tag_editor_bottom_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->tag_editor_top_padding_land:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->tag_editor_bottom_padding_land:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mMainGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContentArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->tag_editor_content_area_top_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->tag_editor_content_area_top_margin_land:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContentArea:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public initCandidateTagList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public initView(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContext:Landroid/content/Context;

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$id;->tag_editor_group:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mMainGroupView:Landroid/view/ViewGroup;

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$id;->content_area:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContentArea:Landroid/view/ViewGroup;

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$id;->content_list:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/CandidateTagsRecyclerView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContentListView:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/CandidateTagsRecyclerView;

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$id;->masking_area:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mMaskingArea:Landroid/view/View;

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$id;->btn_save:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mSaveButtonView:Landroid/view/View;

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$id;->editor_input:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mEditTextView:Landroid/widget/EditText;

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$id;->btn_add:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mAddButtonView:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mController:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/TagEditorController;

    invoke-interface {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/TagEditorController;->registerListener(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mEditTextView:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mPoint:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->determineEditorWidth()V

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->init()V

    return-void
.end method

.method public onStateChanged(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$10;->$SwitchMap$com$samsung$android$support$senl$nt$composer$main$base$external$tageditor$controller$StateChangeListener$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mIsSaved:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->addCandidateTag()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->saveTags()V

    :goto_0
    return-void
.end method

.method public setActionListener(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$TagEditorActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$TagEditorActionListener;

    return-void
.end method

.method public setMaxSelectedItemCount(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/16 p1, 0x1e

    :cond_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->mMaxLimitedCount:I

    return-void
.end method
