.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$AnchorHandler;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$ResultValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$ResultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANCHOR_OBJECT_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$AnchorHandler;

.field private mIsCursorBlinkEnabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskAnchor"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;-><init>()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$AnchorHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$AnchorHandler;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;->getAnchorObjectSpanList(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private findSelectedObjectSpanFromObjectSelection(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectSpanHelper;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectSpanHelper;-><init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectSpanHelper;->findObjectSpan(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private findSelectedObjectSpanFromTextSelection(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;[I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;",
            "[I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getTextBox()Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->findObjectSpan(II)Ljava/util/ArrayList;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method private getAnchorObjectSpanList(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;)[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;)[I

    move-result-object v4

    aget v4, v4, v2

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->updateBodyObjectSpanPosition(II)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getTextBox()Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;)[I

    move-result-object v1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setCursorPosition(I)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;)[I

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;->findSelectedObjectSpanFromTextSelection(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;[I)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;->findSelectedObjectSpanFromObjectSelection(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$AnchorHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$AnchorHandler;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$AnchorHandler;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getInputValue()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$AutoScrollContract;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$AutoScrollContract;->setAutoScrollEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getInputValue()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;->mIsCursorBlinkEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->setCursorBlink(Z)V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->clear()V

    return-void
.end method

.method public bridge synthetic executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;)V

    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$AutoScrollContract;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$AutoScrollContract;->setAutoScrollEnabled(Z)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->isCursorBlinking()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;->mIsCursorBlinkEnabled:Z

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->setCursorBlink(Z)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$AnchorHandler;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$AnchorHandler;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$AnchorHandler;

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$InputValues;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isAvailableToSave()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAvailableToUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
