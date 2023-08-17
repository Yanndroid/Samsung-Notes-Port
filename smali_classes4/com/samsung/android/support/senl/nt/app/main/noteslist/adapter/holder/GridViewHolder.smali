.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GridViewHolder"


# instance fields
.field private final mListener:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView$Listener;

.field private final mThumbnailContainer:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;-><init>(Landroid/view/View;I)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->mListener:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView$Listener;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->thumbnail_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->mThumbnailContainer:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->setFocusListener()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;-><init>(Landroid/view/View;I)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->mListener:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView$Listener;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->thumbnail_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->mThumbnailContainer:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->setFocusListener()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;)Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->mThumbnailContainer:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;

    return-object p0
.end method

.method private decorateContents(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->getLockType()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isLock(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->removeImageView()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->decorateLockNote()V

    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->enableForegroundDim(Z)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->isSdoc()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->hasTextOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->decorateTextContent(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->enableForegroundDim(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->loadOrderingProcessorEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->skippedDecorateThumbnail(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->decorateThumbnail(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method private decorateTextContent(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->removeImageView()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getDisplayContent()[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil;->getDisplayContent([B)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Lcom/samsung/android/support/senl/nt/app/main/common/exception/DisplayDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mThumbnailHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ThumbnailHandler;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ThumbnailHandler;->subSequenceContent(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decorateTextContent# uuid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GridViewHolder"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->setTextContents(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void
.end method

.method private enableForegroundDim(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->mThumbnailContainer:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->notes_grid_item_bottom_dim:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "can not find foregroundDim Drawable"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->getModeIndex()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isRecyclebinMode(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move p1, v2

    :cond_1
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->getBackgroundColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->getBackgroundColor(I)I

    move-result v2

    :cond_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private getThumbnailFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->isSupportInvertedBGColor()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "d_full_thumbnail"

    const-string v1, "d_thumbnail"

    const-string v2, "d_thumbnail_text"

    goto :goto_0

    :cond_0
    const-string v0, "full_thumbnail"

    const-string v1, "thumbnail"

    const-string v2, "thumbnail_text"

    :goto_0
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mThumbnailHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ThumbnailHandler;

    invoke-virtual {v4, p1, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ThumbnailHandler;->getExistFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v3
.end method

.method private hasTextOnly(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "d_full_thumbnail_text"

    goto :goto_0

    :cond_0
    const-string v0, "full_thumbnail_text"

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mThumbnailHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ThumbnailHandler;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ThumbnailHandler;->getExistFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "d_thumbnail_text"

    goto :goto_1

    :cond_1
    const-string v0, "thumbnail_text"

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mThumbnailHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ThumbnailHandler;

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ThumbnailHandler;->getExistFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mThumbnailHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ThumbnailHandler;

    const-string v3, "image"

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ThumbnailHandler;->getExistFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method private setFocusListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getRootCardView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method


# virtual methods
.method public decorate(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->notes:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->decorate(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V

    return-void
.end method

.method public decorate(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->decorate(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->mThumbnailContainer:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->mThumbnailContainer:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->mListener:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView$Listener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;->setListener(Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView$Listener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->hasTextOnly(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->setHasTextOnly(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->setBackgroundColor(I)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->decorateContents(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->decorateTitle(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V

    return-void
.end method

.method public decorateThumbnail(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->getLockType()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isLock(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->hasTextOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decorateThumbnail# uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isSdoc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->isSdoc()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isNightMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->isDarkMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSupportInvertedBGColor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->isSupportInvertedBGColor()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->setHoverThumbnailFilePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->isSdoc()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->decorateOldNoteThumbnail(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->getThumbnailFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->getModeIndex()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->loadThumbnail(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setThumbnail# there is no thumbnail"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->decorateTextContent(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->removeImageView()V

    return-void
.end method

.method public decorateTitle(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->getModeIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decorateTitle# hasTitle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", modeIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

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

    invoke-virtual {p1, v0, p2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->setTitle(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCoeditMode(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCoeditSpaceMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mTitleView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;

    invoke-virtual {v0, p1, p2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->setAutoTitle(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mTitleView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;

    invoke-virtual {v0, p1, p2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->setCoeditAutoTitle(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "GridViewHolder"

    return-object v0
.end method

.method public setAdapterContract(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->setAdapterContract(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->mThumbnailContainer:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;->setAdapterContract(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->getLockType()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isLock(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$color;->basic_list_item_bg_color:I

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getAntiGreenisFilteredColor(I)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->getBackgroundColor(I)I

    move-result p1

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$drawable;->notes_grid_item_bg_shape:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->mThumbnailContainer:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
