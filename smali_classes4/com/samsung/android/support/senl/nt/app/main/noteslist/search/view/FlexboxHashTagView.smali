.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;
.super Lcom/google/android/flexbox/FlexboxLayout;
.source "SourceFile"


# static fields
.field private static final MAX_TAG_LIMIT:I = 0xa


# instance fields
.field private STR_BUTTON:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mHashTagClickListener:Landroid/view/View$OnClickListener;

.field private mParentView:Landroid/view/View;

.field private mSearchListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;

.field private mTagViewList:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mHashTagClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mHashTagClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mHashTagClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mSearchListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;

    return-object p0
.end method

.method private loadTagBubble(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
            ">;I)V"
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
    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mTagViewList:[Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$layout;->hash_tag_flexbox_item:I

    invoke-virtual {v4, v5, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mTagViewList:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mTagViewList:[Landroid/view/View;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mHashTagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mTagViewList:[Landroid/view/View;

    aget-object v3, v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->STR_BUTTON:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mTagViewList:[Landroid/view/View;

    aget-object v3, v3, v0

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$id;->tag_item_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->convertTagText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilMediumSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mTagViewList:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getTagContainerVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public initLayout(Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mParentView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->button_string_button:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->STR_BUTTON:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mTagViewList:[Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->tag_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->tags_recent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_header:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSearchListener(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mSearchListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;

    return-void
.end method

.method public setTagContainer()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getHashTagRepository()Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->getRecentTagList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mParentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->loadTagBubble(Ljava/util/List;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->mParentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
