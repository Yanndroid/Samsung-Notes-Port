.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$IPresenter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DragAndDropHelper"


# instance fields
.field private final mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

.field private final mDragAndDropRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

.field private mNumberedBadgeShadowBuilder:Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$IPresenter;

.field private final mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

.field private mScrollBlockedUuid:Ljava/lang/String;

.field private final mSoundManager:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

.field private final mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

.field private final mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$IPresenter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mDragAndDropRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$IPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesRecyclerView()Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;->createHapticDetachSound(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mSoundManager:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$IPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$IPresenter;

    return-object p0
.end method

.method private createNoteShadow(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;Landroid/widget/ImageView;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getNoteData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isLock(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_lock:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p2, p3, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->setBackgroundColor(Landroid/widget/ImageView;I)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSdoc()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstContentType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    if-eq p1, v2, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getContentUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->getSdocThumbnailFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getStrokeUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->getSdocHWThumbnailFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p3, p1, v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager;->getBitmap(Landroid/widget/ImageView;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {p2, p3, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->createTextBitmap(Landroid/widget/ImageView;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->getSimpleThumbnailFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p3, p1, v2, p2}, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager;->getBitmap(Landroid/widget/ImageView;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mScrollBlockedUuid:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    return-object p0
.end method

.method private getNumberedBadgeShadowBuilder(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->getHolderType()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedDataCount()I

    move-result v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;-><init>(Landroid/content/Context;ILcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder$ShadowBuilderContract;)V

    return-object v0

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedDataCount()I

    move-result v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)V

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;-><init>(Landroid/content/Context;ILcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder$ShadowBuilderContract;)V

    return-object p1
.end method

.method private getRootCardView(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;)Landroid/view/View;
    .locals 2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->getHolderType()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->getNotesHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->getSubFolderHolderInfo(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getRootCardView()Landroid/view/View;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mNumberedBadgeShadowBuilder:Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mScrollBlockedUuid:Ljava/lang/String;

    return-void
.end method

.method private isDestinationFolderInvisible()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isTabletModel(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getHolderInfoDisplayedCount()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getNoteDataCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDragAndDropEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->isLongPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$IPresenter;->isLongPressMoved()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getDragAndDropUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEdgePanelDnD()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedNotesCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isEdgePanelDnD(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedNotesCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getLockedNotesCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->createNoteShadow(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->isDragAndDropEnable()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;ZLandroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->onFolderDragEventEnter(ZLandroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private onFolderDragEventEnter(ZLandroid/view/View;Ljava/lang/Runnable;)V
    .locals 5

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->sub_folder_color_bg:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-wide/16 v1, 0x12c

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 p3, -0x3f400000    # -6.0f

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$5;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$5;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public dragFolderSelectState(IZI)V
    .locals 3

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isPickEditMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    div-int v1, p1, p3

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->getHolderType()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_9

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->getHolderType()I

    move-result v1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_9

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->getHolderType()I

    move-result v1

    const/16 v2, 0x80

    if-eq v1, v2, :cond_9

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->getHolderType()I

    move-result v1

    const/16 v2, 0x200

    if-lt v1, v2, :cond_3

    goto/16 :goto_1

    :cond_3
    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;

    rem-int/2addr p1, p3

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->getSubFolderHolderInfo(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;

    move-result-object p1

    if-eqz p1, :cond_9

    sget-object p3, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getIsEnable()Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$IPresenter;

    :goto_0
    invoke-interface {p2, p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$IPresenter;->updateContentDescription(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Z)V

    return-void

    :cond_6
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->isLongPressed()Z

    move-result p3

    if-eqz p3, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object p3

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p3, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->postStartDragAndDrop(Ljava/lang/String;J)V

    :cond_7
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->isUuidInCheckedFolder(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    if-eqz p2, :cond_8

    return-void

    :cond_8
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->toggleCheckedFolder(ZLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->isUuidInCheckedFolder(Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$IPresenter;

    const/4 p3, 0x1

    goto :goto_0

    :cond_9
    :goto_1
    return-void
.end method

.method public dragNoteSelectState(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->getHolderType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->getNotesHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getIsEnable()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$IPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->getNotesHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    move-result-object p1

    :goto_0
    invoke-interface {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$IPresenter;->updateContentDescription(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Z)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->isLongPressed()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->postStartDragAndDrop(Ljava/lang/String;J)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getNoteData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v1

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v2, p2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->toggleCheckedNote(ZLcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->isUuidInCheckedNotes(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$IPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->getNotesHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    move-result-object p1

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method public isDragAndDropEnableMode()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isMDEMode(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isRecyclebinMode(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isDrawerInvisibleMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->isEdgePanelDnD()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->isDestinationFolderInvisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mSoundManager:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ISoundManagerImpl;->release()V

    :cond_0
    return-void
.end method

.method public postStartDragAndDrop(Ljava/lang/String;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->isDragAndDropEnableMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->setDragAndDropUuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mDragAndDropRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mDragAndDropRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setDragListener(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getRootCardView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public setInteractionMedia(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mSoundManager:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ISoundManagerImpl;->play()Z

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->performHapticFeedback(Landroid/view/View;I)V

    return-void
.end method

.method public startDragAndDrop(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->indexOfDisplayData(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "DragAndDropHelper"

    const-string v2, "startDragAndDrop"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mScrollBlockedUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;->showBottomNavigation(Z)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->getRootCardView(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckNotesCountInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->isEdgePanelDnD(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/util/NoteListToDrag;->getClipData(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v2

    const/16 v3, 0x101

    move-object v5, v2

    move v8, v3

    goto :goto_0

    :cond_2
    const-string v3, "drag"

    const-string v4, "drag..."

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    move v8, v2

    move-object v5, v3

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->getNumberedBadgeShadowBuilder(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mNumberedBadgeShadowBuilder:Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mNumberedBadgeShadowBuilder:Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;

    const/4 v7, 0x0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->setInteractionMedia(Landroid/view/View;)V

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getOldNotesCount()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedFoldersUUID()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->setDrawerIconDimDragStatus(ZLjava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->setDrawerIconDimDragStatus(ZLjava/util/ArrayList;)V

    :goto_1
    return-void
.end method

.method public updateDragShadow(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mNumberedBadgeShadowBuilder:Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDragShadow# count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DragAndDropHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mNumberedBadgeShadowBuilder:Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->setShadowBadge(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->mNumberedBadgeShadowBuilder:Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->updateDragShadow(Landroid/view/View$DragShadowBuilder;)V

    :cond_1
    return-void
.end method
