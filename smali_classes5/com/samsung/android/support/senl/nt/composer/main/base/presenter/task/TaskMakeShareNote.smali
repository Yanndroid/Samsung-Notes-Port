.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$ResultValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$ResultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsCanceled:Z

.field private mShareBuilder:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskMakeShareNote"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;-><init>()V

    return-void
.end method

.method private appendLastPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->appendPage(II)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->copyBackground(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->mIsCanceled:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->mShareBuilder:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;

    return-object p0
.end method

.method private copyPage(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/List;Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;",
            ">;",
            "Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getLeftMargin()F

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTopMargin()F

    move-result v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getRightMargin()F

    move-result v3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getBottomMargin()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setMargin(FFFF)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p3}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {p5}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->getTextSizeDelta()I

    move-result p1

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;

    iget-boolean v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->mIsCanceled:Z

    if-eqz v4, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->TAG:Ljava/lang/String;

    const-string p2, "copyPage# cancel"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V

    return v0

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;->getIndex()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v4

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v5

    invoke-virtual {p3, v4, v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->copyPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;->getIndex()I

    move-result v2

    invoke-virtual {p5, v2}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->copyBodyTextFrom(I)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->lockBodyTextPage()Z

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4, v2, p1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->insertBodyTextTo(ILcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)Z

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->insertEmptyBodyTextTo(I)Z

    :goto_2
    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->unlockBodyTextPage()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->close()V

    invoke-direct {p0, p3, p6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->appendLastPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;)V

    invoke-virtual {p3, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setBodyTextFontSizeDelta(I)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "copyPage# page count:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_3
    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "copyPage# e :"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->mShareBuilder:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/List;Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;)Z
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->copyPage(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/List;Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->TAG:Ljava/lang/String;

    const-string v1, "cancel#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->mShareBuilder:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->mShareBuilder:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->clear()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->mShareBuilder:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->mIsCanceled:Z

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->clear()V

    return-void
.end method

.method public bridge synthetic executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;)V

    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;)V
    .locals 2

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->clearSelectedTextTypeObject()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
