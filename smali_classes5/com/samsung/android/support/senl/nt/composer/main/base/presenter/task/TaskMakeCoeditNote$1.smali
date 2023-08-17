.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isBackgroundColorInverted()Z

    move-result v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$InputValues;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v9, v7

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->save(ZZZIZ)Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditWithComposerRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote;

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;

    const/16 v2, 0xcb

    const-string v3, ""

    invoke-direct {v1, v3, v3, v9, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getInputValue()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$InputValues;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$InputValues;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$InputValues;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->importNoteToCoedit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote;

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;->newUuid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeTask# ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;->ret:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote;

    iget v2, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;->ret:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v7, v8

    :goto_1
    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;

    iget-object v4, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;->newUuid:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;->newPath:Ljava/lang/String;

    invoke-direct {v3, v4, v0, v9, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method
