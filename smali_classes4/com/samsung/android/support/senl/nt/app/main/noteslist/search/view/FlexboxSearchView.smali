.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;
.super Lcom/google/android/flexbox/FlexboxLayout;
.source "SourceFile"


# static fields
.field private static final MAX_SEARCH_LIMIT:I = 0xa


# instance fields
.field private final mClearClickListener:Landroid/view/View$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private final mDeleteClickListener:Landroid/view/View$OnClickListener;

.field private mIdColumns:[Ljava/lang/Long;

.field private mParentView:Landroid/view/View;

.field private final mSearchItemClickListener:Landroid/view/View$OnClickListener;

.field private mSearchListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;

.field private mSearchViews:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mClearClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mSearchItemClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mClearClickListener:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mSearchItemClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mClearClickListener:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mSearchItemClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;)[Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mIdColumns:[Ljava/lang/Long;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mSearchListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;)[Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mSearchViews:[Landroid/view/View;

    return-object p0
.end method

.method private loadSearchBubble(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mIdColumns:[Ljava/lang/Long;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    aput-object v4, v3, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mSearchViews:[Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$layout;->search_flexbox_item:I

    invoke-virtual {v4, v5, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mSearchViews:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mSearchViews:[Landroid/view/View;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mSearchItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mSearchViews:[Landroid/view/View;

    aget-object v3, v3, v0

    new-instance v4, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistAsButton;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistAsButton;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mSearchViews:[Landroid/view/View;

    aget-object v3, v3, v0

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$id;->search_item_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilMediumSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mSearchViews:[Landroid/view/View;

    aget-object v2, v2, v0

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->search_item_delete:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$color;->recent_search_bubble_list_item_delete_icon_color:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mSearchViews:[Landroid/view/View;

    add-int/lit8 v3, v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v0, v3

    goto/16 :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getContainerVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public initLayout(Landroid/view/View;)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mParentView:Landroid/view/View;

    const/16 v0, 0xa

    new-array v1, v0, [Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mSearchViews:[Landroid/view/View;

    new-array v0, v0, [Ljava/lang/Long;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mIdColumns:[Ljava/lang/Long;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->search_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->recent_search:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_header:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->clear_search_history:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistAsButton;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistAsButton;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ButtonBackgroundUtils;->isShowButtonShapeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->recent_search_button_shape_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$color;->recent_search_list_clear_history_text_color_btn_shape:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mClearClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSearchContainer()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper$AsyncExecutor;->querySearchKeywordList(I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mParentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->loadSearchBubble(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mParentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setSearchListener(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->mSearchListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;

    return-void
.end method
