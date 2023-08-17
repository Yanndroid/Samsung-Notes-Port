.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$TagHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$TagHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDarkTheme:Z

.field private mIsEditable:Z

.field private mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

.field private mTagFontSize:Ljava/lang/Float;

.field private tagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->mIsEditable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->mDarkTheme:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->initFontSize(Landroid/content/res/Resources;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->mIsEditable:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->tagList:Ljava/util/List;

    return-object p0
.end method

.method private initFontSize(Landroid/content/res/Resources;)V
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_title_tag_item_text_height:I

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_title_tag_item_text_size:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->getFontSizeByPx(Landroid/content/res/Resources;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->mTagFontSize:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->mTagFontSize:Ljava/lang/Float;

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->tagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isDarkTheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->mDarkTheme:Z

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$TagHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$TagHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$TagHolder;I)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$TagHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->tagList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$TagHolder;->tagNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$TagHolder;->tagNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->mTagFontSize:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$TagHolder;->tagNameContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$TagHolder;->deleteBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->mIsEditable:Z

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$TagHolder;->deleteBtn:Landroid/widget/ImageButton;

    invoke-virtual {p2, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$TagHolder;->deleteBtn:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->mDarkTheme:Z

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$TagHolder;->tagNameContainerBackground:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_title_tag_item_dark_bg_color:I

    goto :goto_1

    :cond_1
    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$TagHolder;->tagNameContainerBackground:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_title_tag_item_bg_color:I

    :goto_1
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$TagHolder;->tagNameContainerBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$TagHolder;->tagNameContainerBackground:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$TagHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$TagHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_title_tag_item_layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$TagHolder;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter$TagHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setDarkTheme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->mDarkTheme:Z

    return-void
.end method

.method public setEditable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->mIsEditable:Z

    return-void
.end method

.method public setTagList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->tagList:Ljava/util/List;

    return-void
.end method
