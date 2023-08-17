.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickNoteAddHandler"
.end annotation


# static fields
.field public static final MESSAGE_EXECUTE:I = 0x1


# instance fields
.field private final mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$ResultValues;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mIsBodyTextSelected:Z

.field private mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field private mSuggestedContent:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;

.field private final mTargetPageIndex:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$ResultValues;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;->getContent()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mSuggestedContent:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;->getTargetPageIndex()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mTargetPageIndex:I

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;->isBodyTextSelected()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mIsBodyTextSelected:Z

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    return-void
.end method

.method private checkNoteSize(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;)Z
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;-><init>()V

    instance-of v1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->checkAvailableStateToAdd(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mSuggestedContent:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;->getContent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->checkNoteSize(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$ResultValues;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mContext:Landroid/content/Context;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$ResultValues;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onError(Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mIsBodyTextSelected:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mTargetPageIndex:I

    invoke-static {v1, v2, v4, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/PositionUtil;->getInsertedPosition(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;IZ)Landroid/graphics/PointF;

    move-result-object v1

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isGroupingHistory()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->beginHistoryGroup()Z

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mTargetPageIndex:I

    invoke-virtual {p1, v4, v2, v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->addContents(ILjava/util/List;Landroid/graphics/PointF;Z)Landroid/util/Pair;

    move-result-object p1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->endHistoryGroup()Z

    :cond_4
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$ResultValues;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mContext:Landroid/content/Context;

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$ResultValues;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onError(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$ResultValues;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$ResultValues;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onSuccess(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->release()V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$QuickNoteAddHandler;->mSuggestedContent:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
