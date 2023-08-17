.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SimpleViewHolder;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleViewHolder"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;-><init>(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mImageContentView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;-><init>(Landroid/view/View;I)V

    return-void
.end method

.method private addImageContentViewPadding(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mImageContentView:Landroid/widget/ImageView;

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mImageContentView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method

.method private createTextBitmap(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mThumbnailHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ThumbnailHandler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mImageContentView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ThumbnailHandler;->createTextBitmap(Landroid/widget/ImageView;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SimpleViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SimpleViewHolder$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SimpleViewHolder;Landroid/graphics/Bitmap;)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mViewMode:I

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;-><init>(Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverRecyclerViewHolderListener;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mImageContentView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private decorateOldNoteThumbnail(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstContentType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SimpleViewHolder;->createTextBitmap(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SimpleViewHolder;->addImageContentViewPadding(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->setHoverThumbnailFilePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SimpleViewHolder;->addImageContentViewPadding(Z)V

    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->setHasOnlyHandwritingSdoc(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mThumbnailHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ThumbnailHandler;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getStrokeUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ThumbnailHandler;->getSdocHWThumbnailFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mThumbnailHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ThumbnailHandler;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getContentUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ThumbnailHandler;->getSdocThumbnailFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->getModeIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->loadThumbnail(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method private decorateThumbnailLock()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SimpleViewHolder;->addImageContentViewPadding(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mImageContentView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mImageContentView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mImageContentView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mImageContentView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_lock:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public decorate(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->notes:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SimpleViewHolder;->decorate(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V

    return-void
.end method

.method public decorate(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->decorate(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SimpleViewHolder;->decorateTitle(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SimpleViewHolder;->decorateThumbnail(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V

    return-void
.end method

.method public decorateThumbnail(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V
    .locals 3

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->getLockType()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isLock(I)Z

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mThumbnailHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ThumbnailHandler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mImageContentView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ThumbnailHandler;->setSimpleBackgroundColor(Landroid/widget/ImageView;IZ)V

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SimpleViewHolder;->decorateThumbnailLock()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->isSdoc()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SimpleViewHolder;->decorateOldNoteThumbnail(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mImageContentView:Landroid/widget/ImageView;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->getSimpleThumbnailFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->getModeIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->loadThumbnail(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public decorateTitle(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    invoke-interface {v3}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->getModeIndex()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SimpleViewHolder;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decorateTitle# hasTitle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", modeIndex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const-string p1, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->noteslist_title_no_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mTitleView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;

    invoke-virtual {p1, v0, p2, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->setTitle(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCoeditMode(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCoeditSpaceMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mTitleView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;

    invoke-virtual {v0, p1, p2, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->setAutoTitle(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mTitleView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;

    invoke-virtual {v0, p1, p2, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->setCoeditAutoTitle(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SimpleViewHolder"

    return-object v0
.end method
