.class public Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;,
        Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecyclerViewHelper"


# instance fields
.field private final mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

.field private mLongPressMultiSelectionListener:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;

.field private final mPenMultiSelectionListener:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/OnPenMultiSelectionListener;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;

.field private final mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

.field private mSoundManager:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mPenMultiSelectionListener:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/OnPenMultiSelectionListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;->createHapticDetachSound(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mSoundManager:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;Landroid/view/View;Landroid/view/DragEvent;)Landroid/graphics/Point;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->getTouchPositionFromDragEvent(Landroid/view/View;Landroid/view/DragEvent;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->isDragEnabledFolder(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->onFolderDrag(Z)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->startDragAndDrop(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;II)V

    return-void
.end method

.method private getTouchPositionFromDragEvent(Landroid/view/View;Landroid/view/DragEvent;)Landroid/graphics/Point;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    aget v2, v0, v2

    add-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/4 v2, 0x1

    aget v0, v0, v2

    add-int/2addr p2, v0

    invoke-direct {p1, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method private isDragEnabledFolder(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "addFolder:///"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;->isDimItem(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onFolderDrag(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFolderDrag: isFinished : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecyclerViewHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;->initializeDragAndDrop(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;->isDimItem(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->setFolderItemDim(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setToggleCheckBoxData(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "addFolder:///"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->setToggleCheckBoxData(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;->toggleCheckBox(Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setToggleCheckBoxLayout(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;Z)V
    .locals 3

    if-eqz p1, :cond_3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addFolder:///"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;->getInstance()Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p2, :cond_1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_checked:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_not_checked:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;->sendTalkBackMessage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->toggleCheckBox(Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->updateContentDescription(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->getFolderHolder(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->toggleCheckBox(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;Z)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private startDragAndDrop(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;II)V
    .locals 9

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addFolder:///"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemTouched: reorder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerViewHelper"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;->setExpandedStatus(ZLjava/lang/String;I)V

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getFolderItemContainer()Landroid/view/View;

    move-result-object v4

    const/4 p2, 0x0

    invoke-virtual {v4, p2}, Landroid/view/View;->setPressed(Z)V

    const-string p2, "drag"

    const-string v0, "drag..."

    invoke-static {p2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v3

    new-instance v6, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)V

    invoke-direct {v6, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;-><init>(Landroid/content/Context;ILcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder$ShadowBuilderContract;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getFolderItemContainer()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->setInteractionMedia(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getFolderHolder(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public isDragAndDropEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->isLongPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mLongPressMultiSelectionListener:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;->isTouchMoved()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public postStartDragAndDrop(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;IIJ)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;II)V

    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mSoundManager:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ISoundManagerImpl;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mSoundManager:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    :cond_0
    return-void
.end method

.method public setDragListener(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V
    .locals 8

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getFolderItemLayout()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result v3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v7, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;ILcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;Landroidx/recyclerview/widget/LinearLayoutManager;I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public setInteractionMedia(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mSoundManager:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ISoundManagerImpl;->play()Z

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->performHapticFeedback(Landroid/view/View;I)V

    return-void
.end method

.method public setSelectionListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mPenMultiSelectionListener:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/OnPenMultiSelectionListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->setOnPenMultiSelectionListener(Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/OnPenMultiSelectionListener;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/a;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mLongPressMultiSelectionListener:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;)V

    return-void
.end method

.method public toggleCheckBox(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;Z)V
    .locals 2

    if-eqz p1, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addFolder:///"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->setToggleCheckBoxData(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->setToggleCheckBoxLayout(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateContentDescription(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->string_comma:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_my_folders:I

    :goto_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v4

    const-string v5, "addFolder:///"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->add_category:I

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getCount()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result v5

    const/4 v6, 0x3

    const-string v7, ""

    const/16 v8, 0x20

    if-ne v5, v6, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, v7

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->button_string_button:I

    :goto_2
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->isCheckboxVisible()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_checked:I

    goto :goto_4

    :cond_5
    sget v5, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_not_checked:I

    :goto_4
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_count_items:I

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_tick_box:I

    goto :goto_2

    :cond_7
    sget v5, Lcom/samsung/android/support/senl/nt/app/R$string;->folder_string:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_6

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_6
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_count_items:I

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :goto_7
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getFolderItemContainer()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
