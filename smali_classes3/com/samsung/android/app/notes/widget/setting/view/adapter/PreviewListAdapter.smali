.class public Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsDarkTheme:Z

.field private mNoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;->mNoteList:Ljava/util/List;

    iput-boolean p2, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;->mIsDarkTheme:Z

    return-void
.end method

.method private onBindViewHolderTitle(Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V
    .locals 5
    .param p1    # Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-static {v0, p2}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getRecommendTitleText(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p1, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;->mContent:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;->mContent:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p1, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;->mTitle:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p1, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;->mContent:Landroid/widget/TextView;

    :goto_0
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean p2, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;->mIsDarkTheme:Z

    if-eqz p2, :cond_1

    sget p2, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_black_theme_text_color:I

    goto :goto_1

    :cond_1
    sget p2, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_white_theme_text_color:I

    :goto_1
    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/common/util/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result p2

    iget-object v0, p1, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p1, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;->mContent:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;->mNoteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;->onBindViewHolder(Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;I)V
    .locals 5
    .param p1    # Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;->mNoteList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;->mIsDarkTheme:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_list_item_thumbnail_rounded_corner_shape_dark:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_list_item_thumbnail_rounded_corner_shape:I

    :goto_0
    iget-object v3, p1, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v2, p1, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;->mThumbnail:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;->mNoteList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-boolean v3, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;->mIsDarkTheme:Z

    invoke-static {v0, p2, v1, v3}, Lcom/samsung/android/app/notes/widget/util/WidgetListUtils;->getThumbnailBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p2, p1, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;->mThumbnail:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;->onBindViewHolderTitle(Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/app/notes/widget/util/WidgetListUtils;->getDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;->mFavorite:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsFavorite()I

    move-result v0

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result p2

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    iget-object p1, p1, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;->mVoice:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getVrUuid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

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

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public updatePreviewItemColor(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;->mIsDarkTheme:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;->mIsDarkTheme:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
